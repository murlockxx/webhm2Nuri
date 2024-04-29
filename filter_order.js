function sendOption(option) {
    // Retrieve the current URL parameters
    const urlParams = new URLSearchParams(window.location.search);
    
    // Set the 'option' parameter to the provided value
    urlParams.set('option', option);
    
    // Construct the new URL with the updated parameters
    const queryString = urlParams.toString();
    const newUrl = window.location.pathname + '?' + queryString;
    
    // Make a GET request to the new URL
    fetch(newUrl, {
        method: 'GET',
        headers: {
            'Content-Type': 'text/html; charset=utf-8', // Specify content type
        },
    })
    .then(response => {
        // Check if the response status is OK
        if (response.ok) {
            // Return HTML content
            return response.text();
        } else {
            // Throw an error if response is not OK
            throw new Error('Network response was not ok');
        }
    })
    .then(data => {
        // Log the response data to the console
        console.log(data);
        
        // Handle the HTML data here if needed
        // For example, update the DOM with the HTML content
        document.body.innerHTML = data;
        const selectedOptionElement = document.getElementById('selectedOptionforSize');
        if(option=="descending"){
            selectedOptionElement.textContent="Azalan Fiyat"
        }
        else{
            selectedOptionElement.textContent="Artan Fiyat"
        }
        
    })
    .catch(error => {
        console.error('Error:', error);
    });
}

function sendSize(size) {
    // Retrieve the current URL parameters
    const urlParams = new URLSearchParams(window.location.search);
    
    // Set the 'option' parameter to the provided value
    urlParams.set('size', size);
    
    // Construct the new URL with the updated parameters
    const queryString = urlParams.toString();
    const newUrl = window.location.pathname + '?' + queryString;
    
    // Make a GET request to the new URL
    fetch(newUrl, {
        method: 'GET',
        headers: {
            'Content-Type': 'text/html; charset=utf-8', // Specify content type
        },
    })
    .then(response => {
        // Check if the response status is OK
        if (response.ok) {
            // Return HTML content
            return response.text();
        } else {
            // Throw an error if response is not OK
            throw new Error('Network response was not ok');
        }
    })
    .then(data => {
        // Log the response data to the console
        console.log(data);
        
        // Handle the HTML data here if needed
        // For example, update the DOM with the HTML content
        
        document.body.innerHTML = data;
        const selectedOptionElement = document.getElementById('selectedOptionforFilter');
        if (size !== "Hepsi") {
            selectedOptionElement.textContent =size;
        } else {
            selectedOptionElement.style.display = "none";
        }

            
   
        
        

    })
    .catch(error => {
        console.error('Error:', error);
    });
}

// Function to update the product list on the webpage
function updateProductList(products) {
    // Clear existing product list
    const productList = document.querySelector('.row');
    productList.innerHTML = '';

    // Loop through the received products and create HTML elements for each product
    products.forEach(product => {
        const productHtml = `
            <div class="col-md-4 mb-4">
                <div class="card border-0 rounded-0">
                    <div class="card-body">
                        <img src="${product[2]}" class="card-img-top rounded-0" alt="${product[0]}">
                        <h5 class="card-title">${product[0]}</h5>
                        <p class="card-text">Price: $${product[1]}</p>
                    </div>
                </div>
            </div>
        `;
        // Append product HTML to the product list
        productList.innerHTML += productHtml;
    });
}


function takeDetails(productId) {
    // Construct the URL with the product_id parameter
    const newUrl = `/details/${productId}`;
    
    // Make a GET request to the new URL
    fetch(newUrl)
        .then(response => {
            // Check if the response status is OK
            if (response.ok) {
                // Return HTML content
                return response.text();
            } else {
                // Throw an error if response is not OK
                throw new Error('Network response was not ok');
            }
        })
        .then(data => {
            // Log the response data to the console
            console.log(data);
            
            // Handle the HTML data here if needed
            // For example, update the DOM with the HTML content
            document.body.innerHTML = data;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}
