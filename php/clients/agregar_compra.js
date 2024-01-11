function agregarVenta(monto, numero_referencia) {
    // Create a FormData object to send the data
    var formData = new FormData();
    formData.append('monto', monto);
    formData.append('numero_referencia', numero_referencia);

    // Make the AJAX request using Fetch API
    fetch('add_v.php', {
        method: 'POST',  // Change the method to POST
        body: formData
    })
    .then(response => response.json())
    .then(data => {
        // Handle the response here
        if (data.success) {
            showAlert('success', 'Éxito', 'numero seguimiento: ' + numero_referencia, 'OK', function () {
               // Redirect to another PHP page after deletion
               vaciarCarrito();
                window.location.href = '../../home_log.php';

            });
            // You may want to perform additional actions upon success
        } else {
            showAlert('error', 'Error', 'Error al terminar la compra' + response.message, 'OK');
        }
    })
    .catch(error => {
        console.error('Error:', error);
        // Handle any network or other errors
    });    
}

function vaciarCarrito(){
    cartItems = [];

    // Update local storage with the modified cartItems array
    localStorage.setItem('cartData', JSON.stringify(cartItems));
    
    vaciarElementosServidor(); //Antes de terminar la función vacío le array de elementos en la sesión
    updateCartCount(); //Actualio el numero que aparece en el carrito
    return false;
}

function vaciarElementosServidor(){
    const xhr = new XMLHttpRequest();
    localStorage.removeItem('cartData');
    xhr.open('POST', 'clear_cart.php', true); // Crea un archivo PHP para manejar la limpieza del array cart_data
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    xhr.onload = function () {
        if (xhr.status === 200) {
            // Maneja la respuesta de tu servidor si es necesario
        }
    };

    // Envía una solicitud para limpiar los datos del carrito en la sesión
    xhr.send();
}


function updateCartCount() {
    const cartCountElement = document.getElementById('cart-count');

    // Obtengo el conteo desde una solicitud AJAX a mi php
    const xhr = new XMLHttpRequest();
    xhr.open('GET', '../design/car_count.php', true);

    xhr.onload = function () {
        if (xhr.status === 200) {
            const count = xhr.responseText;
            cartCountElement.textContent = count;
        }
    };

    xhr.send();
}

function showAlert(icon, title, text, confirmButtonText, callback) {
    Swal.fire({
        icon: icon,
        title: title,
        text: text,
        confirmButtonText: confirmButtonText
    }).then(function (result) {
        if (result.isConfirmed && typeof callback === 'function') {
            callback(); // Call the callback function if provided
        }
    });
}