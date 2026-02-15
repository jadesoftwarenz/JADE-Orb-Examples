async function generateFullCollage(imgElements, canvasWidth = 2000, canvasHeight = 2000) {
    const imgs = [...imgElements];
    const canvas = document.createElement("canvas");
    canvas.width = canvasWidth;
    canvas.height = canvasHeight;
    const ctx = canvas.getContext("2d");

    // Prepare images with aspect ratio
    const images = imgs.map(img => ({
        img,
        w: img.naturalWidth || img.width,
        h: img.naturalHeight || img.height,
        aspect: (img.naturalWidth || img.width) / (img.naturalHeight || img.height)
    }));

    // Shuffle images for more organic layout
    for (let i = images.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [images[i], images[j]] = [images[j], images[i]];
    }

    // Recursive function to fill a rectangle with images
    function fillRect(x, y, w, h, imgs) {
        if (imgs.length === 0) return;

        if (imgs.length === 1) {
            const img = imgs[0];

            // Scale to fully fill rectangle (crop if needed)
            const rectAspect = w / h;
            let drawW = w, drawH = h;
            let offsetX = 0, offsetY = 0;

            if (img.aspect > rectAspect) {
                // image too wide, crop width
                drawH = h;
                drawW = h * img.aspect;
                offsetX = (drawW - w) / 2;
            } else {
                // image too tall, crop height
                drawW = w;
                drawH = w / img.aspect;
                offsetY = (drawH - h) / 2;
            }

            ctx.drawImage(img.img, -offsetX + x, -offsetY + y, drawW, drawH);
            return;
        }

        // Decide to split horizontally or vertically based on rectangle shape
        const horizontalSplit = w >= h;

        const half = Math.floor(imgs.length / 2);
        const first = imgs.slice(0, half);
        const second = imgs.slice(half);

        if (horizontalSplit) {
            const w1 = Math.round(w / 2);
            const w2 = w - w1;
            fillRect(x, y, w1, h, first);
            fillRect(x + w1, y, w2, h, second);
        } else {
            const h1 = Math.round(h / 2);
            const h2 = h - h1;
            fillRect(x, y, w, h1, first);
            fillRect(x, y + h1, w, h2, second);
        }
    }

    fillRect(0, 0, canvasWidth, canvasHeight, images);

    return canvas;
}

// Download function
function downloadCanvas(canvas) {
	const h1  = document.getElementById("albumName");
	let filename = h1.textContent.trim().replace(/^Album:\s*/,"");
    const link = document.createElement("a");
    link.href = canvas.toDataURL("image/png");
    link.download = filename + ".png";
    document.body.appendChild(link);
    link.click();
}

document.getElementById("btnpress").addEventListener("click", async () => {
    const imgs = document.querySelectorAll(".swiper-slide img");
    const canvas = await generateFullCollage(imgs, 2000, 2000);
    downloadCanvas(canvas);
});
