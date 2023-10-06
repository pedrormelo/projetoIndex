document.addEventListener('DOMContentLoaded', function () {
    const downloadButton = document.getElementById('downloadButton');

    const fileID = '1t8qpzDnvGjPrYYFxBNXXuYeXiGnIAZP0';

    downloadButton.addEventListener('click', function () {
        const downloadLink = `https://drive.google.com/uc?export=download&id=${fileID}`;

        // Create a hidden anchor element to trigger the download
        const anchor = document.createElement('a');
        anchor.href = downloadLink;
        anchor.target = '_blank'; // Open the link in a new tab (optional)
        anchor.style.display = 'none';
        document.body.appendChild(anchor);

        // Trigger a click event on the anchor to initiate the download
        anchor.click();

        // Remove the anchor element from the DOM after clicking
        document.body.removeChild(anchor);
    });
});