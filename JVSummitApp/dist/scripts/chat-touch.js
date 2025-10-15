import { clamp } from "./utils.js";

export class ChatTouch {
  isDown = false;
  startY;
  scrollY;
  /**
   *@type {HTMLElement}
   */
  scrollHost;

  velocity = 0;
  minVelocity = 0.5;
  decay = 0.95;
  momentumId;
  lastY;
  deltaY = 0;

  constructor() {
    this.touchstart = this.touchstart.bind(this);
    this.touchend = this.touchend.bind(this);
    this.touchmove = this.touchmove.bind(this);
    this.momentum = this.momentum.bind(this);
  }

  cancelMomentium() {
    if (this.momentumId) {
      cancelAnimationFrame(this.momentumId);
    }

    this.momentumId = null;
  }

  touchstart(e) {
    this.cancelMomentium();
    this.isDown = true;
    this.startY = e.touches[0].pageY;
    this.deltaY = 0;
    this.lastY = this.startY;
    this.scrollY = this.scrollHost.scrollTop;
  }

  momentum() {
    if (Math.abs(this.deltaY) <= this.minVelocity) {
      return;
    }
    this.deltaY *= this.decay;

    this.scrollHost.scrollTop = this.scrollHost.scrollTop + this.deltaY;

    if (Math.abs(this.deltaY) > this.minVelocity) {
      this.momentumId = requestAnimationFrame(this.momentum);
    }
  }

  /**
   *
   * @param {TouchEvent} e
   * @returns
   */
  touchmove(e) {
    if (!this.isDown) {
      return;
    }
    const y = e.touches[0].pageY;
    this.deltaY = this.lastY - y;
    this.lastY = y;
    const walk = this.startY - y;
    if (Math.abs(walk) < 10) {
      return;
    }

    let scrollTop = this.scrollY + walk;
    scrollTop = clamp(0, scrollTop, this.scrollHost.scrollHeight);
    this.scrollHost.scrollTop = scrollTop;
  }

  touchend(e) {
    this.isDown = false;
    this.momentumId = requestAnimationFrame(this.momentum);
  }

  /**
   * attaches scroll controls from window to an element
   * @param {*} el element that we are scrolling
   */
  attach(el) {
    this.scrollHost = el;
    window.addEventListener("touchstart", this.touchstart);
    window.addEventListener("touchmove", this.touchmove);
    window.addEventListener("touchend", this.touchend);
  }
}
