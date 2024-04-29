document.addEventListener("DOMContentLoaded", function () {
    // Get the container where product cards will be appended
    const container = document.querySelector('.carousel-inner');

    // Get product data from hidden element
    const products = document.querySelectorAll('.product');

    // Function to create product cards
    const createProductCards = () => {
        // Clear previous content
        container.innerHTML = '';

        // Calculate the number of groups (carousel items)
        const groupCount = Math.ceil(products.length / 4);

        // Loop through each group
        for (let i = 0; i < groupCount; i++) {
            const group = document.createElement('div');
            group.classList.add('carousel-item');
            if (i === 0) {
                group.classList.add('active');
            }

            const row = document.createElement('div');
            row.classList.add('row', 'product-container');

            // Loop through each product in the group
            for (let j = i * 4; j < Math.min((i + 1) * 4, products.length); j++) {
                const product = products[j];
                const name = product.getAttribute('data-name');
                const price = product.getAttribute('data-price');
                const image = product.getAttribute('data-image');

                const col = document.createElement('div');
                col.classList.add('col-md-3');

                const card = document.createElement('div');
                card.classList.add('card');

                const img = document.createElement('img');
                img.classList.add('img-fluid');
                img.src = image;
                img.alt = name;

                const cardBody = document.createElement('div');
                cardBody.classList.add('card-body');

                const title = document.createElement('h5');
                title.classList.add('card-title', 'fw-bold', 'fs-6', 'text-uppercase');
                title.textContent = name;

                const priceText = document.createElement('p');
                priceText.classList.add('card-text', 'fw-light', 'fs-6');
                priceText.textContent = `${price} TL`;

                cardBody.appendChild(title);
                cardBody.appendChild(priceText);

                card.appendChild(img);
                card.appendChild(cardBody);

                col.appendChild(card);
                row.appendChild(col);
            }

            group.appendChild(row);
            container.appendChild(group);
        }
    };

    // Create product cards
    createProductCards();

    // Add event listener for the carousel control buttons
    const carousel = document.querySelector('.carousel');
    const carouselInstance = new bootstrap.Carousel(carousel);

    const prevButton = document.querySelector('.carousel-control-prev');
    const nextButton = document.querySelector('.carousel-control-next');

    prevButton.addEventListener('click', () => {
        carouselInstance.prev();
    });

    nextButton.addEventListener('click', () => {
        carouselInstance.next();
    });
});


function takeDetails(productId) {
    // You can perform actions here such as redirecting to a details page
    window.location.href = "/details/" + productId;
}