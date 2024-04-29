document.addEventListener("DOMContentLoaded", function() {
    // Function to fetch product details from the server
    function fetchProductDetails(productId) {
        fetch(`/details/${productId}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.text(); // Parse JSON response
            })
            .then(product => {
                // Handle the received product details
                updateProductDetails(product);
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }

    // Function to update the DOM with product details
    function updateProductDetails(product) {
        // Assuming you have a div with id "product-details" to display the details
        const productDetailsDiv = document.getElementById('product-details');
        if (productDetailsDiv) {
            // Determine if any of the sizes is true
            const anySizeTrue = product.slice(6, 12).some(size => size);
    
            // Construct the HTML to display product details
            let html = `
                <h2>${product[1]}</h2>
                <p>Price: ${product[2]}</p>
                <img src="${product[3]}" alt="${product[1]}">
            `;
    
            // Iterate over each size value and add it to the HTML with appropriate color styling
            product.slice(6, 12).forEach((size, index) => {
                const color = size ? 'red' : 'blue';
                const textDecoration = size ? '' : 'text-decoration-line-through';
                html += `<p>Size: <span style="color: ${color}" class="${textDecoration}">${product[index + 6]}</span></p>`;
            });
    
            // Set the inner HTML of the product details div
            productDetailsDiv.innerHTML = html;
    
            // Update color classes for size elements
            const sizeElements = productDetailsDiv.querySelectorAll('.col-lg-2.badge.mx-2.my-2');
            const productSizes = product.slice(6, 12);
    
            sizeElements.forEach((element, index) => {
                const colorClass = productSizes[index] ? 'text-bg-light' : 'text-bg-secondary';
                element.classList.add(colorClass);
            });
        }
    }
    
    

    // Example usage: Call fetchProductDetails function with the product ID
    //fetchProductDetails(1); // Replace 1 with the actual product ID
});
