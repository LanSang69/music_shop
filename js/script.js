// var swiper = new Swiper(".mySwiper-1", {
//     slidesPerView: 1,
//     spaceBetween: 30,
//     loop: true,
//     pagination:{
//         el: ".swiper-pagination",
//         clickable: true,
//     },
//     navigation:{
//         nextEl: ".swiper-button-next",
//         prevEl: ".swiper-button-prev"
//     }
// });

// var swiper = new Swiper(".mySwiper-2", {
//     slidesPerView: 3,
//     spaceBetween: 30,
//     loop: true,
//     navigation:{
//         nextEl: ".swiper-button-next",
//         prevEl: ".swiper-button-prev"
//     },
//     breakpoints:{
//         0:{
//             slidesPerView: 1
//         },
//         520:{
//             slidesPerView: 2
//         },
//         950:{
//             slidesPerView: 3
//         }
//     }
// });

// Carrito
let cartItems = JSON.parse(localStorage.getItem('cartData')) || [];
const carrito = document.getElementById('carrito');
const elementos1 = document.getElementById('lista-1');
const elementos2 = document.getElementById('lista-2');
const elementos3 = document.getElementById('lista-3');
const lista = document.querySelector('#lista-carrito tbody');
const vaciarCarritoBtn = document.getElementById('vaciar-carrito');

// Load existing cart items from localStorage
cartItems.forEach((item) => {
    insertarCarrito(item);
});

cargarEventListeners();

function cargarEventListeners() {
    elementos1.addEventListener('click', comprarElemento);
    elementos2.addEventListener('click', comprarElemento);
    elementos3.addEventListener('click', comprarElemento);
    carrito.addEventListener('click', eliminarElemento);

    vaciarCarritoBtn.addEventListener('click', vaciarCarrito);
}

// Function to parse a formatted price and convert it to a numeric value
function parseFormattedPrice(formattedPrice) {
    // Remove commas from the formatted price
    const numericValue = parseFloat(formattedPrice.replace(/,/g, ''));
    return numericValue;
}

function comprarElemento(e) {
    e.preventDefault();
    if (e.target.classList.contains('agregar-carrito')) {
        const elemento = e.target.parentElement.parentElement;
        leerDatosElemento(elemento);
    }
}

function leerDatosElemento(elemento) {
    const infoElemento = {
        imagen: elemento.querySelector('img').src,
        titulo: elemento.querySelector('h3').textContent,
        precio: parseFormattedPrice(elemento.querySelector('.precio').textContent),
        cantidad: 1,
        id: elemento.querySelector('a').getAttribute('data-id')
    };

    insertarCarrito(infoElemento);
    updateCartCount(); // Muestro el numero actualizado de elementos
}

function enviarDatosAlServidor(infoElemento) {
    const xhr = new XMLHttpRequest();
    xhr.open('POST', 'php/clients/procesar_compra.php', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    xhr.onload = function () {
        if (xhr.status === 200) {
            console.log(xhr.responseText);
        }
    };

    // Convertir el objeto JavaScript en una cadena JSON
    const datos = JSON.stringify(infoElemento);

    // Enviar los datos al servidor
    xhr.send('datos=' + datos);
}

function insertarCarrito(elemento) {
    if(elemento.cantidad > 0){

        const existingRow = document.getElementById(`${elemento.id}`);
    
        if (existingRow) {
            // If the item is already in the cart, update the quantity visually
            const quantityElement = existingRow.querySelector('.cantidad');
    
            // Check if the quantity element is found before updating
            if (quantityElement) {
                let currentQuantity = parseInt(quantityElement.textContent);
                currentQuantity++;
                elemento.cantidad = currentQuantity;
                quantityElement.textContent = currentQuantity;
    
                // Update the quantity in the cartItems array
                const existingCartItemIndex = cartItems.findIndex((item) => item.id === elemento.id);
                if (existingCartItemIndex !== -1) {
                    cartItems[existingCartItemIndex].cantidad = currentQuantity;
                    localStorage.setItem('cartData', JSON.stringify(cartItems)); // Save the updated array
                    eliminarElementoServidor(elemento.id);
                    enviarDatosAlServidor(elemento);
                } else {
                    console.error('Item not found in cartItems array:', elemento);
                }
    
            } else {
                console.error('Quantity element not found for existing row:', existingRow);
            }
        } else {
            // If the item is not in the cart, add a new row
            const row = document.createElement('tr');
            row.id = `${elemento.id}`;
            row.innerHTML = `
                <td>
                    <img src="${elemento.imagen}" width=100 >
                </td>
                <td>
                    ${elemento.titulo}
                </td>
                <td>
                    $${elemento.precio}
                </td>
                <td class="cantidad" id="cantidad-${elemento.id}">${elemento.cantidad}</td> <!-- Add the "cantidad" class here -->
                <td>
                    <a href="#" class="borrar" data-id="${elemento.id}">X</a>
                </td>
            `;
    
            lista.appendChild(row);
    
            // Check if the item is already in the cartItems array before pushing
            const isItemInCart = cartItems.some((item) => item.id === elemento.id);
    
            if (!isItemInCart) {
                cartItems.push(elemento);
                localStorage.setItem('cartData', JSON.stringify(cartItems));
            }
            
            enviarDatosAlServidor(elemento);
            
        }
    
    }else{
        console.log("ELiminando de servidor");
        eliminarElementoServidor(elemento);
    }

    updateCartCount(); // Update the cart count

}


function eliminarElemento(e){
    let elemento,
        elementoId;
    if(e.target.classList.contains('borrar')){
        e.target.parentElement.parentElement.remove();
        elemento = e.target.parentElement.parentElement;
        elementoId = elemento.querySelector('a').getAttribute('data-id');
    }

    // Remove the item from the cartItems array
    cartItems = cartItems.filter(item => item.id !== elementoId);
        
    // Update local storage with the modified cartItems array
    localStorage.setItem('cartData', JSON.stringify(cartItems));

    eliminarElementoServidor(elementoId);
    updateCartCount(); //Muestro el numero actualizado de elementos
}

function vaciarCarrito(){
    while(lista.firstChild){
        lista.removeChild(lista.firstChild);
    }

    // Clear the cartItems array
    cartItems = [];

    // Update local storage with the modified cartItems array
    localStorage.setItem('cartData', JSON.stringify(cartItems));
    
    vaciarElementosServidor(); //Antes de terminar la función vacío le array de elementos en la sesión
    updateCartCount(); //Actualio el numero que aparece en el carrito
    return false;
}

function eliminarElementoServidor(itemId){
    const xhr = new XMLHttpRequest();
    xhr.open('POST', 'php/clients/removeItem.php', true); // Crea un archivo PHP para manejar la limpieza del array cart_data
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    xhr.onload = function () {
        if (xhr.status === 200) {
            // Maneja la respuesta de tu servidor si es necesario
        }
    };
     // Envía una solicitud para eliminar el elemento del cart_data en la sesión
     xhr.send('itemId=' + itemId);
     updateCartCount();
}

function vaciarElementosServidor(){
    const xhr = new XMLHttpRequest();
    localStorage.removeItem('cartData');
    xhr.open('POST', 'php/clients/clear_cart.php', true); // Crea un archivo PHP para manejar la limpieza del array cart_data
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
    xhr.open('GET', 'php/design/car_count.php', true);

    xhr.onload = function () {
        if (xhr.status === 200) {
            const count = xhr.responseText;
            cartCountElement.textContent = count;
        }
    };

    xhr.send();
}