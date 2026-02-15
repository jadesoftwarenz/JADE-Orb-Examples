class NavbarMenuElement extends HTMLElement {
  connectedCallback() {
    const container = document.createElement("div");
    this.appendChild(container);

    const menu = document.createElement("div");
    menu.classList.add("NavbarMenu");
    menu.innerHTML = `
      <a href="/browse" data-orb-navigate="/browse">Browse</a>
      <div class="NavbarSeparator"></div>
    `;
    container.appendChild(menu);

    if (this.dataset.username !== "") {
      const userLink = document.createElement("a");
      userLink.href = `/user/${this.dataset.username}`;
      userLink.dataset.orbNavigate = userLink.href;
      userLink.textContent = "Your List";
      menu.appendChild(userLink);
      menu.innerHTML += `
        <div class="NavbarSeparator"></div>
        <a href="/logout">Log out</a>
      `;
    } else {
      menu.innerHTML += `
        <a href="/login" data-orb-navigate="/login">Log in</a>
        <a href="/register" data-orb-navigate="/register">Register</a>
      `;
    }

    const button = document.createElement("div");
    button.classList.add("NavbarHamburger");
    button.textContent = "≡";
    button.addEventListener("click", () => {
      menu.classList.toggle("NavbarMenuShown");
    });
    container.appendChild(button);

  }
}
customElements.define("x-navbarmenu", NavbarMenuElement);


class ActivityElement extends HTMLElement {
  connectedCallback() {
    const card = document.createElement("div");
    card.classList.add("Activity");
    this.appendChild(card)

    if (this.dataset.contentid !== "") {
      const coverContainer = document.createElement("a");
      coverContainer.classList.add("ActivityCoverContainer");
      coverContainer.href = `/content/${this.dataset.contentid}`;
      coverContainer.dataset.orbNavigate = coverContainer.href;
      card.appendChild(coverContainer);

      const cover = document.createElement("img");
      cover.classList.add("ActivityCover");
      cover.src = `/image/content/cover/${this.dataset.contentid}`;
      coverContainer.appendChild(cover);
    }

    const container = document.createElement("div");
    container.classList.add("ActivityContainer");
    card.appendChild(container);

    const header = document.createElement("div");
    header.classList.add("ActivityHeader");
    container.appendChild(header);

    const username = document.createElement("a");
    username.textContent = this.dataset.username;
    username.href = `/user/${this.dataset.username}`;
    username.dataset.orbNavigate = username.href;
    header.appendChild(username);

    const timestamp = document.createElement("div");
    timestamp.classList.add("ActivityTimestamp");
    const date = new Date(this.dataset.timestamp * 1000);
    const dateString = [
      `${date.getFullYear()}-`,
      `${("0" + (date.getMonth() + 1)).slice(-2)}-`,
      `${("0" + date.getDate()).slice(-2)} `,
      `${("0" + date.getHours()).slice(-2)}:`,
      `${("0" + date.getMinutes()).slice(-2)}`,
    ].join("");
    timestamp.textContent = dateString;
    header.appendChild(timestamp);

    const message = document.createElement("div");
    message.textContent = this.dataset.message;
    if (this.dataset.contentid !== "") {
      const a = document.createElement("a");
      a.textContent = this.dataset.contenttitle;
      a.href = `/content/${this.dataset.contentid}`;
      a.dataset.orbNavigate = a.href;
      message.appendChild(a);
    }
    container.appendChild(message);
  }
}
customElements.define("x-activity", ActivityElement);


class StatePopupElement extends HTMLElement {
  connectedCallback() {
    document.documentElement.style.overflowY = "hidden";
    function close(e) {
      e.innerHTML = "";
      e.className = "";
      document.documentElement.style.overflowY = "";
    }
    [this, this.querySelector("#StatePopupClose")].forEach((e) =>
      e.addEventListener("click", () => close(this))
    );
    this.childNodes.forEach((element) => {
      element.addEventListener("click", (e) => e.stopPropagation());
    });
  }

  disconnectedCallback() {
    document.documentElement.style.overflowY = "";
  }
}
customElements.define("x-statepopup", StatePopupElement);


class RatingElement extends HTMLElement {
  connectedCallback() {
    const ratings = [
      parseInt(this.dataset.r1),
      parseInt(this.dataset.r2),
      parseInt(this.dataset.r3),
      parseInt(this.dataset.r4),
      parseInt(this.dataset.r5),
      parseInt(this.dataset.r6),
      parseInt(this.dataset.r7),
      parseInt(this.dataset.r8),
      parseInt(this.dataset.r9),
      parseInt(this.dataset.r10),
    ];
    const total = ratings.reduce((acc, cur) => acc + cur, 0);

    const box = document.createElement("div");
    box.classList.add("Rating");
    this.appendChild(box);

    if (total === 0) {
      box.classList.add("ContentBlockFallback");
      box.innerHTML = `
        <div class="ContentBlockSad">(𖦹﹏𖦹)</div>
        No ratings so far.
      `;
      return;
    }

    ratings.forEach((rating, i) => {
      const column = document.createElement("div");
      column.classList.add("RatingColumn");
      box.appendChild(column);

      const container = document.createElement("div");
      container.classList.add("RatingBarContainer");
      column.appendChild(container);

      console.log(rating, total);
      const percentage = `${(rating / total) * 100}%`;
      const bar = document.createElement("div");
      bar.classList.add("RatingBar");
      bar.dataset.rating = i+1;
      bar.style.height = percentage;
      container.appendChild(bar);

      const score = document.createElement("span");
      score.classList.add("RatingScore");
      score.textContent = i + 1;
      column.appendChild(score);
    });
  }
}
customElements.define("x-rating", RatingElement);


class ImageUploadElement extends HTMLElement {
  connectedCallback() {
    const label = document.createElement("label");
    const div = document.createElement("div");
    div.classList.add("ImageUpload")
    const img = document.createElement("img");
    const input = document.createElement("input");
    input.type = "file";
    input.accept = "image/*";
    const inputBase64 = document.createElement("input");
    inputBase64.name = this.dataset.name;
    inputBase64.style.display = "none";

    input.addEventListener("change", () => {
      img.alt = "Image preview";
      img.className = "ImagePreview";

      const [file] = input.files;
      img.src = URL.createObjectURL(file);

      const reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onload = () => inputBase64.value = reader.result.split(",")[1];
    });

    label.textContent = this.dataset.heading;
    div.appendChild(img);
    div.appendChild(input);
    div.appendChild(inputBase64);
    label.appendChild(div);
    this.appendChild(label);
  }
}
customElements.define("x-imageupload", ImageUploadElement);
