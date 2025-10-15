/*
Purpose: To force control of the orientation
*/
(() => {
  const callback = () => {

    const rotationAlert = document.getElementById("rotation-alert");
    let pendingShow = null;
    const orientationHandler = (e) => {

      if(!FeatureFlag.isMobile){
        return;
      }

      if (e.type === "orientationchange") {
        if (e.target.orientation === 90 || e.target.orientation === 270) {
          if (pendingShow) return;
          pendingShow = setTimeout(() => {
            rotationAlert.classList.add("show");
            pendingShow = null;
          }, 1000);
          return;
        }
        if (pendingShow) {
          clearTimeout(pendingShow);
        }
        rotationAlert.classList.remove("show");
        return;
      }
      if (e.target.type === "landscape-primary") {
        if (pendingShow) return;
        pendingShow = setTimeout(() => {
          rotationAlert.classList.add("show");
          pendingShow = null;
        }, 1000);

        return;
      }
      clearTimeout(pendingShow);
      rotationAlert.classList.remove("show"); 
    };
    if ("orientation" in screen && typeof screen.orientation.lock == "function") {
      screen.orientation.addEventListener("change", orientationHandler);
      screen.orientation.lock("portrait").catch(() => {});
      requestAnimationFrame(() => {
        if (screen.orientation.angle === 90) {
          rotationAlert.classList.add("show");
        }
      });
      const aspect = screen.width / screen.height;
      if(aspect > 0.8 && screen.orientation.angle === 0){
        rotationAlert.classList.add("locked")
      }
    } else {
      window.addEventListener("orientationchange", orientationHandler);
    }
  };


  if (document.readyState == "complete") {
    callback();
  } else {
    document.addEventListener("DOMContentLoaded", callback);
  }
})();
