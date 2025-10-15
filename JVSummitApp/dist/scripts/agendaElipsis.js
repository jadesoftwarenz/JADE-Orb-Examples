(() => {

  // applies a chevron if the element is longer than line-clamp
  const fn_chevronDecider = (element) => {
    const ComputedStyle = element.computedStyleMap();
    if (element.scrollHeight > ComputedStyle.get("line-height").value * 2.5) {
      element.classList.add("chevron");
      return;
    }
    element.classList.remove("chevron");
  };

  /*creates a monitor for dom mutations and runs the chevron decider */
  const callback = () => {
    const domObserver = new MutationObserver((e) => {
      const addedNodes = [...e[0].addedNodes].filter(
        (node) => node.nodeType === 1 && node.classList.contains("agenda-item")
      );
      for (const node of addedNodes) {
        const el = node.querySelector(".agenda-description");
        fn_chevronDecider(el);
      }
    });

    domObserver.observe(document.documentElement, {
      subtree: true,
      childList: true,
    });
    const elipses = document.querySelectorAll(
      "div.agendaitem-base.agenda-item span.agenda-description"
    );
    if(elipses.length == 0){
      return
    }
    for (const el of elipses) {
      fn_chevronDecider(el);
    }
  };

  Orb.hooks.ellipsis = callback;

  if (document.readyState === "complete") {
    callback();
  } else {
    document.addEventListener("DOMContentLoaded", callback);
  }
})();
