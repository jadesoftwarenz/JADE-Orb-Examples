document.addEventListener("DOMContentLoaded", () => {
  document.getElementById("darkmode-switch").addEventListener('change',toggleColorMode);
  const colorMode = localStorage.getItem("colormode");
  if (colorMode === null) {
    const detectedMode = window.matchMedia("(prefers-color-scheme: dark)");
    if (detectedMode.matches) {
      localStorage.setItem("colormode", "dark");
      document.getElementById("darkmode-switch").checked = false;
      colorMode == "dark";
    } else {
      localStorage.setItem("colormode", "light");
      document.getElementById("darkmode-switch").checked = true;
      colorMode == "light";
    }
  }
  if (colorMode == "dark") {
    document.querySelector("html").className = "force-dark";
    if (document.getElementById("darkmode-switch")) {
      document.getElementById("darkmode-switch").checked = false;
      //document.getElementById("setting-set").checked = true;
    }
    return;
  }
  document.querySelector("html").className = "force-light";
  if (document.getElementById("darkmode-switch")) {
    document.getElementById("darkmode-switch").checked = true;
    //document.getElementById("setting-set").checked = true;
  }


});

function toggleColorMode(event) {
  if (event.target.checked) {
    localStorage.setItem("colormode", "light");
    document.querySelector("html").className = "force-light";
    return;
  }
  localStorage.setItem("colormode", "dark");
  document.querySelector("html").className = "force-dark";
  return;
}




