
function generateImageCollage(imageUrls, options = {}) {
    const {
        columns = 4,
        gap = "8px",
        borderRadius = "8px"
    } = options;

    const container = document.getElementById("collage");
    container.innerHTML = "";

    container.style.display = "grid";
    container.style.gridTemplateColumns = `repeat(${columns}, 1fr)`;
    container.style.gap = gap;
    container.style.padding = gap;
    container.style.boxSizing = "border-box";
    container.style.background = "white";

    imageUrls.forEach(url => {
        const img = document.createElement("img");
        img.src = url;
        img.style.width = "100%";
        img.style.objectFit = "cover";
        img.style.borderRadius = borderRadius;
        container.appendChild(img);
    });
}

// ? Run collage generator when button clicked
document.getElementById("makeCollageBtn").addEventListener("click", () => {
    const images = [
        "images/Photo_01.jpg",
		"images/Photo_02.jpg",
		"images/Photo_03.jpg"
    ];

    generateImageCollage(images, {
        columns: 5,
        gap: "10px"
    });
});

document.getElementById("uploadBtn").addEventListener("click", () => {
    const albumName = document.getElementById("albumName").value;
    const photos = Array.from(document.getElementById("photos").files);

    createAlbum(albumName, photos);
