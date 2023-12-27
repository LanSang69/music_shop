document.addEventListener('DOMContentLoaded', function () {
  // Event listener for incrementing and decrementing quantity
  document.addEventListener('click', function (event) {
      if (event.target.classList.contains('mas') || event.target.classList.contains('menos')) {
          const productId = event.target.getAttribute('data-id');
          const priceElement = document.querySelector('.precio[data-id="' + productId + '"]');
          const quantityElement = document.querySelector('.cantidad[data-id="' + productId + '"]');
          
          // Assuming you have a way to fetch the price from the server or use the initial value
          const price = parseFloat(priceElement.textContent.replace(/,/g, ''));
          let quantity = parseInt(quantityElement.textContent);

          // Update quantity based on button clicked
          if (event.target.classList.contains('mas')) {
              quantity++;
          } else if (event.target.classList.contains('menos') && quantity > 0) {
              quantity--;
          }

          // Update quantity in the UI
          quantityElement.textContent = quantity;

          // Update the total in the UI
          const totalElement = document.getElementById('total');
          const currentTotal = parseFloat(totalElement.textContent.replace(/,/g, ''));
          const newTotal = currentTotal + (event.target.classList.contains('mas') ? price : -price);
          totalElement.textContent = newTotal.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,'); // Format total with commas

          // Send the updated quantity to the server using AJAX/fetch
          // You'll need to implement the server-side logic to update the session variables
          // For simplicity, I'll use the fetch API in this example
          fetch('php/clients/update_quantity.php', {
              method: 'POST',
              headers: {
                  'Content-Type': 'application/x-www-form-urlencoded',
              },
              body: 'id=' + productId + '&quantity=' + quantity,
          })
              .then(response => response.text())
              .then(data => console.log(data))
              .catch(error => console.error(error));
      }
  });
});
