(() => {
  let scrollLock;
  const els = [document.querySelector("body"), document.documentElement]

  Orb.hooks.modalClose = () => {
    
      for(const el of els){
        el.style.removeProperty("overflow-y");
        el.style.removeProperty("position");
        el.style.removeProperty("height");
      }
      requestAnimationFrame(()=>{document.documentElement.scrollTop = scrollLock;})
  };

  Orb.hooks.modalOpen = ()=>{
    scrollLock = document.documentElement.scrollTop;
          for(const el of els){
        el.style.overflowY = "hidden";
        el.style.position = "fixed";
        el.style.height = "100%"
      }
      
  };
})();
