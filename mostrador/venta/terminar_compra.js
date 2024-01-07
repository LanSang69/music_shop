const comprarE = document.getElementById("terminar-compra");

comprarE.addEventListener('click', function(){
    // Retrieve data from sessionStorage in another JavaScript file
    const productosSeleccionadosString = sessionStorage.getItem('productosSeleccionados');
    const productosSeleccionados = JSON.parse(productosSeleccionadosString);
    const cliente_id  = document.getElementById("id_cliente");
    const input_cliente  = document.getElementById("cliente_id");
    let id_cliente = 0;
    const monto = document.querySelector(".precio-total");
    const pago = document.getElementById("id_metodo");
    const recibido = document.getElementById("recibido-input");
    const numero_referencia = null;

    if(cliente_id.value === "mostrador"){
        id_cliente = 1;
    } else {
        id_cliente = input_cliente.value;
    }

    // Create an array to hold all promises
    const promises = [];

    agregarVenta(id_cliente, pago.value, monto.value, recibido.value, numero_referencia)
        .then(id_venta => {
            // Log id_venta after it's resolved
            console.log(id_venta);

            // Loop through products and add them to promises array
            for (const productoId in productosSeleccionados) {
                const product = productosSeleccionados[productoId];
                promises.push(agregarProducto(id_venta, `${productoId}`, `${product.cantidad}`));
            }

            // Use Promise.all to wait for all promises to resolve
            return Promise.all(promises);
        })
        .then(results => {
            // Display SweetAlert for success
            Swal.fire({
                icon: 'success',
                title: 'Compra exitosa',
                text: 'La venta y los productos se han registrado correctamente.',
                confirmButtonText: 'OK'
            }).then(() => {
                // Refresh the page
                window.location.reload();
            });
        })
        .catch(error => {
            console.error('Error during product addition:', error);

            // Display SweetAlert for error
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'Ha ocurrido un error al registrar la venta o los productos.',
                confirmButtonText: 'OK'
            });
        });
});

function agregarVenta(id_cliente, pago, monto, recibido, numero_referencia) {
    const data = new URLSearchParams();
    data.append('id_cliente', id_cliente);
    data.append('pago', pago);
    data.append('monto', monto);
    data.append('recibido', recibido);
    data.append('n_seguimiento', numero_referencia);

    // Return a promise from the function
    return new Promise((resolve, reject) => {
        fetch('add_v.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: data,
        })
        .then(response => {
            if (response.ok) {
                return response.json();
            } else {
                throw new Error('Network response was not ok');
            }
        })
        .then(responseData => {
            if (responseData.success) {
                const id_venta = responseData.id_venta;
                // Resolve the promise with id_venta
                resolve(id_venta);
            } else {
                const errorMessage = responseData.error;
                console.error('Error:', errorMessage);
                // Reject the promise with the error message
                reject(errorMessage);
            }
        })
        .catch((error) => {
            console.error('Fetch Error:', error);
            // Reject the promise with the error
            reject(error);
        });
    });
}

function agregarProducto(id_venta, id_producto, cantidad) {
    const data = new URLSearchParams();
    data.append('id_venta', id_venta);
    data.append('id_producto', id_producto);
    data.append('cantidad', cantidad);

    // Return a promise from the function
    return fetch('add_p.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: data,
    })
    .then(response => {
        if (response.ok) {
            return response.json();
        } else {
            throw new Error('Network response was not ok');
        }
    })
    .then(responseData => {
        if (!responseData.success) {
            throw new Error(responseData.error || 'Unknown error');
        }
        // Return additional information if needed
        return responseData.message || 'Product added successfully';
    })
    .catch(error => {
        console.error('Error adding product:', error);
        throw error;
    });
}

function startTransaction() {
    document.getElementById('startButton').style.display = 'none';
    document.getElementById('terminal').style.display = 'block';
    document.getElementById('message').innerHTML = 'Insertar tarjeta';
    document.getElementById('loadingCircle').style.display = 'none';
    document.getElementById('transferNumber').style.display = 'none';
    document.getElementById('terminal').classList.remove('completed');

    document.getElementById('terminal').addEventListener('click', function () {
        document.getElementById('message').innerHTML = 'Leyendo imagen...';
        document.getElementById('loadingCircle').style.display = 'block';

        const productosSeleccionadosString = sessionStorage.getItem('productosSeleccionados');
        const productosSeleccionados = JSON.parse(productosSeleccionadosString);
        const cliente_id = document.getElementById("id_cliente");
        const input_cliente = document.getElementById("cliente_id");
        let id_cliente = 0;
        const monto = document.querySelector(".precio-total");
        const pago = document.getElementById("id_metodo");
        const recibido = document.getElementById("recibido-input");
        const numero_referencia = Math.floor(Math.random() * 1000000) + 1;

        if (cliente_id.value === "mostrador") {
            id_cliente = 1;
        } else {
            id_cliente = input_cliente.value;
        }

        const promises = [];

        agregarVenta(id_cliente, pago.value, monto.value, recibido.value, numero_referencia)
            .then(id_venta => {
                console.log(id_venta);

                for (const productoId in productosSeleccionados) {
                    const product = productosSeleccionados[productoId];
                    promises.push(agregarProducto(id_venta, `${productoId}`, `${product.cantidad}`));
                }

                return Promise.all(promises);
            })
            .then(results => {
                return new Promise(resolve => {
                    setTimeout(() => {
                        document.getElementById('message').innerHTML = 'Transacción completada. Retire su tarjeta.';
                        document.getElementById('loadingCircle').style.display = 'none';
                        document.getElementById('terminal').classList.add('completed');
                        document.getElementById('transferNumber').innerHTML = 'Número de referencia: ' + numero_referencia;
                        document.getElementById('transferNumber').style.display = 'block';
                        resolve(); // Resolve the promise inside the setTimeout
                    }, 4000);
                });
            })
            .then(() => {
                // Add a delay before refreshing the page
                setTimeout(() => {
                    // Display SweetAlert for success
                // Display SweetAlert for success
                Swal.fire({
                    icon: 'success',
                    title: 'Compra exitosa',
                    text: 'La venta y los productos se han registrado correctamente.',
                    confirmButtonText: 'OK'
                }).then(() => {
                    // Refresh the page
                    window.location.reload();
                });
                }, 2000); // Adjust the delay time (in milliseconds) as needed
            })
            .catch(error => {
                console.error('Error during product addition:', error);

                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Ha ocurrido un error al registrar la venta o los productos.',
                    confirmButtonText: 'OK'
                });
            });
    });
}
