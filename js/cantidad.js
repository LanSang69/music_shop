document.addEventListener('DOMContentLoaded', function () {
    // Event listener for incrementing and decrementing quantity
    document.addEventListener('click', function (event) {
        if (event.target.classList.contains('mas') || event.target.classList.contains('menos')) {
            const productId = event.target.getAttribute('data-id');
            const quantityElement = document.querySelector('.cantidad[data-id="' + productId + '"]');
            const priceElement = document.querySelector('.precio[data-id="' + productId + '"]');
            const currentQuantity = parseInt(quantityElement.textContent);

            let cartItems = JSON.parse(localStorage.getItem('cartData')) || [];

            let quantity = currentQuantity;

            // Update quantity based on button clicked
            if (event.target.classList.contains('mas')) {
                quantity++;
            } else if (event.target.classList.contains('menos') && quantity >= 0) {
                quantity--;
            }

            // Update quantity in the UI
            quantityElement.textContent = quantity;

            // Update the total in the UI
            const totalElement = document.getElementById('total');
            const price = parseFloat(priceElement.textContent.replace(/,/g, ''));
            const currentTotal = parseFloat(totalElement.textContent.replace(/,/g, ''));
            const newTotal = currentTotal + (event.target.classList.contains('mas') ? price : -price);
            totalElement.textContent = newTotal.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,'); // Format total with commas

            // Update quantity in the local storage
            const existingCartItemIndex = cartItems.findIndex(item => item.id === productId);
            if (existingCartItemIndex !== -1) {
                cartItems[existingCartItemIndex].cantidad = quantity;

                // Remove the item from local storage if quantity is 0
                if (quantity <= 0) {
                    cartItems.splice(existingCartItemIndex, 1);
                }
            } else {
                console.error('Item not found in cartItems array');
            }

            localStorage.setItem('cartData', JSON.stringify(cartItems)); // Save the updated array

            // Send the updated quantity to the server using AJAX/fetch
            fetch('update_quantity.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: 'id=' + productId + '&cantidad=' + quantity,
            })
            .then(response => {
                console.log(response);  // Log the response for debugging
                return response.text();
            })
            .then(data => console.log(data))
            .catch(error => console.error(error));
        }
    });
});
