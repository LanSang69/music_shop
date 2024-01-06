const comprar = document.getElementById('terminar_compra');
const totalElement = document.getElementById('total');

comprar.addEventListener('click', function (event) {
    try {
        // Attempt to parse the total price
        var totalPrice = parseFloat(totalElement.textContent.replace(/,/g, ''));

        if (isNaN(totalPrice)) {
            throw new Error('Total price is not a valid number');
        }

        // Store the total price in local storage
        localStorage.setItem('totalPrice', totalPrice);
        console.log(totalPrice);

        // If everything is successful, redirect to another page
        //window.location.href = 'your_target_page.html'; 
    } catch (error) {
        // Handle errors
        console.error('Error:', error.message);

        // Optionally, show an error message to the user
        alert('There was an error. Please try again.');
    }
});
