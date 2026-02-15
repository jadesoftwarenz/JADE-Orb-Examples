async function addAlbum(albumName) {
    const url = `/album-submit`;
    const form = new FormData();
    form.append('album_name', albumName);

    try {
        const response = await fetch(url, {
            method: "POST",
            credentials: 'same-origin',
            body: form
        });

        if (!response.ok) {
            throw new Error(`Album creation failed: ${response.status}`);
        }
        console.log("Album created successfully");
    } catch (error) {
        console.error("Error creating album:", error);
    }
}

async function uploadImages(albumName, photos) {
    for (let i = 0; i < photos.length; i++) {
        const file = photos[i];

        const url = `/photo-submit`;

        const form = new FormData();
		form.append('album_name', albumName);
        form.append('photo_path', file);
          
        try {
            const response = await fetch(url, {
                method: "POST",
                credentials: 'same-origin',
                body: form
            });

            if (!response.ok) throw new Error(`Image ${file.name} failed: ${response.status}`);

            console.log(`Uploaded ${file.name} successfully`);
        } catch (error) {
            console.error(error);
        }
    }
}

document.getElementById("uploadBtn").addEventListener("click", async () => {
    const albumName = document.getElementById("albumName").value;
    const photos = Array.from(document.getElementById('photos').files); 

    if (!albumName) {
        alert("Please enter an album name.");
        return;
    }

    if (!photos.length) {
        alert("Please select at least one photo.");
        return;
    }

    await addAlbum(albumName);
    await uploadImages(albumName, photos);
	window.location.href ="/albums";
});


