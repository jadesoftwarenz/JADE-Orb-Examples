import { ChatTouch } from "./chat-touch.js";
import { isMobile } from "./utils.js";

Orb.hooks.ChatHost = () => {
  const chatHost = new ChatHost();
};

export class ChatHost {
  bottomAchored = true;
  globalScrollService;
  chatMessageObserver;

  lastMessage;
  normalHeight;

  get containerHost() {
    return document.querySelector("div.overflow-wrapper");
  }

  get controlHost() {
    return document.getElementById("chatcontrols");
  }

  get controlText() {
    return this.controlHost.querySelector("[contenteditable]");
  }

  get controlSubmitMessage() {
    return this.controlHost.querySelector('button[type="submit"]');
  }

  get messagesContainer() {
    return this.containerHost.querySelector(".chat-messages");
  }

  get extNavHost() {
    return document.getElementById("action-bar");
  }

  constructor() {
    this.bindEventHandlers();

    if (this.containerHost.mount?.constructor.name === "ChatHost") {
      return;
    }

    this.containerHost.mount = this;
    this.globalScrollService = new ChatTouch();
    this.globalScrollService.attach(this.containerHost);

    this.containerHost.addEventListener("scroll", this.scroll_lockToAnchorIfRequired);
    this.controlSubmitMessage.addEventListener("click", this.click_debounce, { capture: true });
    this.controlSubmitMessage.addEventListener("pointerdown", this.pointerdown_avoidIosTrap);

    this.controlText.addEventListener("focus", this.focus_hideActionbar);
    this.controlText.addEventListener("blur", this.blur_restoreActionbar);
    this.controlText.addEventListener("keydown", this.keydown_enterSubmit);

    this.chatMessageObserver = new MutationObserver(this.mutation_newMessage);
    this.chatMessageObserver.observe(this.messagesContainer, { childList: true });
    this.normalHeight = window.visualViewport.height;
    window.addEventListener("resize", this.resize_adjust);

    //shunts us immediately to the bottom
    setTimeout(() => {
      const scrolltop = this.containerHost.scrollHeight;
      this.containerHost.scrollTop = scrolltop;
    }, 300);
  }

  bindEventHandlers() {
    this.scroll_lockToAnchorIfRequired = this.scroll_lockToAnchorIfRequired.bind(this);
    this.mutation_newMessage = this.mutation_newMessage.bind(this);
    this.blur_restoreActionbar = this.blur_restoreActionbar.bind(this);
    this.focus_hideActionbar = this.focus_hideActionbar.bind(this);
    this.pointerdown_avoidIosTrap = this.pointerdown_avoidIosTrap.bind(this);
    this.click_debounce = this.click_debounce.bind(this);
    this.keydown_enterSubmit = this.keydown_enterSubmit.bind(this);
    this.resize_adjust = this.resize_adjust.bind(this);
  }

  resize_adjust() {
    if(this.normalHeight == window.visualViewport.height){
      this.controlText.blur();
    }
  }

  readjustChatPadding() {
    let height = window.innerHeight - this.controlHost.getClientRects()[0].top;
    this.messagesContainer.style.setProperty("--chat-padding", `${height}px`);
    if (this.bottomAchored) {
      const scrolltop = this.containerHost.scrollHeight;
      this.containerHost.scrollTop = scrolltop;
    }
  }

  click_debounce(e) {
    if (this.controlText.textContent.trim() === "") {
      e.preventDefault();
    }
  }

  pointerdown_avoidIosTrap(e) {
    requestAnimationFrame(() => {
      e.preventDefault();
      setTimeout(() => {
        this.controlSubmitMessage.click();
      }, 300);
    });
  }

  keydown_enterSubmit(e) {
    if (!isMobile() && !e.shiftKey && e.code === "Enter") {
      this.controlSubmitMessage.click();
      this.controlText.focus();
    }
  }

  focus_hideActionbar() {
    this.extNavHost.style.setProperty("--nav-display", "none");
    this.extNavHost.style.setProperty("--nav-visibility", "hidden");
    this.controlHost.style.setProperty("--cha-bottom", `1rem`);

    let height = this.controlHost.clientHeight + 14;

    if (this.bottomAchored) {
      setTimeout(() => {
        const scrolltop = this.containerHost.scrollHeight
        this.containerHost.scrollTop = scrolltop;
      }, 150);
    }

    this.messagesContainer.style.setProperty("--chat-padding", `${height}px`);
  }

  blur_restoreActionbar() {
    this.extNavHost.style.setProperty("--nav-display", "grid");
    this.extNavHost.style.setProperty("--nav-visibility", "visible");
    this.controlHost.style.removeProperty("--cha-bottom");
    this.messagesContainer.style.removeProperty("--chat-padding");
    this.readjustChatPadding();
  }

  /**
   * sets the lock status if we scroll to the bottom of the screen
   * @param {*} e
   */
  scroll_lockToAnchorIfRequired(e) {
    if (this.containerHost.scrollTop + this.containerHost.clientHeight > this.containerHost.scrollHeight - 100) {
      this.bottomAchored = true;
    } else {
      this.bottomAchored = false;
    }
  }

  mutation_newMessage(e) {
    const _newNode = [...e[0].addedNodes]
      .filter((node) => node.nodeType === 1)
      .filter((node) => node.classList.contains("me"))[0];
    if (_newNode) {
      this.containerHost.scrollTo(0, this.containerHost.scrollHeight);
      return;
    }
    if (this.bottomAchored) {
      this.containerHost.scrollTo(0, this.containerHost.scrollHeight);
    }
  }
}
