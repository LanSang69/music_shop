document.addEventListener("DOMContentLoaded", function() {
    const searchInput = document.getElementById("search-products");
    const autocompleteResults = document.getElementById("autocomplete-results");
    const tableBody = document.getElementById("table-body");
    const addB = document.getElementById("product-button");
    const precioTotalInput = document.querySelector(".precio-total");

    // Initialize an empty array to store product data
const datosSimulados = [];

// Function to fetch product data from the PHP script
function getProducts() {
    fetch('get_products.php')
        .then(response => response.json())
        .then(products => {
            // Update datosReales with the fetched product data
            datosSimulados.push(...products);

            // Use datosReales in your application logic
            console.log(datosSimulados);
        })
        .catch(error => console.error(error));
}

// Call the function to populate datosReales
getProducts();


    const productosSeleccionados = {};
    var resultadosFiltrados;

    searchInput.addEventListener("input", function(event) {
        const searchTerm = this.value.trim().toLowerCase();
    
        if (searchTerm !== "") {
            resultadosFiltrados = datosSimulados.filter(item =>
                item.nombre.toLowerCase().includes(searchTerm) ||
                item.id.toString().includes(searchTerm)
            );

            mostrarResultados(resultadosFiltrados);

        } else {
            // If the search term is empty, clear the results container
            mostrarResultados([]);
        }
    });
    
    // Listen for the "keydown" event on the input field
    searchInput.addEventListener("keydown", function(event) {
        // Check if the pressed key is "Enter" (key code 13)
        if (event.key === "Enter") {
            // Trigger the same action as clicking the "Agregar" button
            agregarProductoTabla(resultadosFiltrados[0]);
            autocompleteResults.style.display = "none";
            searchInput.value = "";
        }
    });

    addB.addEventListener("click", function(event) {
        agregarProductoTabla(resultadosFiltrados[0]);
        autocompleteResults.style.display = "none";
        searchInput.value = "";
    });

    function mostrarResultados(resultados) {
        autocompleteResults.innerHTML = "";
        

        if (resultados.length > 0) {
            autocompleteResults.style.display = "block";
            resultados.forEach(resultado => {
                const item = document.createElement("div");
                item.textContent = resultado.id + ' ' + resultado.nombre;

                item.addEventListener("click", function() {
                    agregarProductoTabla(resultado);
                    autocompleteResults.style.display = "none";
                    searchInput.value = "";
                });
      			// Cambiar el color del texto de las opciones
            item.style.color = "white"; // Puedes ajustar el color aquí

            // Cambiar el color de fondo de las opciones
            item.style.backgroundColor = "purple"; // Puedes ajustar el color aquí
			 // Ajustar el ancho al contenido del texto
            item.style.width = "auto";
            item.style.margin= "10px";
				// Cambiar el estilo del cursor al pasar sobre la opción
            item.style.cursor = "pointer";
                autocompleteResults.appendChild(item);
            });
        } else {
            autocompleteResults.style.display = "none";
        }
    }

    function agregarProductoTabla(producto) {
        const productoId = producto.id;
        if (productosSeleccionados[productoId]) {
            // Si el producto ya está en la tabla, incrementa la cantidad
            productosSeleccionados[productoId].cantidad++;
        } else {
            // Si es la primera vez que se agrega, establece la cantidad en 1
            productosSeleccionados[productoId] = {
                cantidad: 1,
                nombre: producto.nombre,
                precioUnitario: producto.precioUnitario
            };

            const row = tableBody.insertRow();
            const cellId = row.insertCell(0);
            cellId.id = `id-${productoId}`; // Assign an ID to the cell


            const cellNombre = row.insertCell(1);

            const cellCantidad = row.insertCell(2);
            cellCantidad.id = `cantidad-${productoId}`; // Assign an ID to the cell
            
            const cellPrecioUnitario = row.insertCell(3);
            const cellSubtotal = row.insertCell(4);
            const cellDelete = row.insertCell(5);
            const quitar = row.insertCell(6);

            cellId.textContent = productoId;
            cellNombre.textContent = producto.nombre;
            cellCantidad.textContent = 1;
            cellPrecioUnitario.textContent = producto.precioUnitario;
            cellSubtotal.textContent = calcularSubtotal(productoId);

             // Create a delete button and set its attributes
             const deleteButton = document.createElement("button");
             deleteButton.textContent = "Eliminar";
             deleteButton.classList.add("delete-button");
 
             // Add a click event listener to handle the deletion
             deleteButton.addEventListener("click", function() {
                 eliminarProductoTabla(productoId);
             });
 
             // Append the delete button to the cell
             cellDelete.appendChild(deleteButton);

             // Create a delete button and set its attributes
            const quitarE = document.createElement("button");
            quitarE.textContent = "Quita 1";
            quitarE.classList.add("quit-button");

            // Add a click event listener to handle the deletion
            quitarE.addEventListener("click", function() {
                quitarProductoTabla(productoId);
            });

            // Create a delete button and set its attributes
            const agregarE = document.createElement("button");
            agregarE.textContent = "Agregar 1";
            agregarE.classList.add("add-button");

            // Add a click event listener to handle the addition
            agregarE.addEventListener("click", function() {
                aumentarProductoTabla(productoId);
            });

            // Append the delete button to the cell
            quitar.appendChild(quitarE);
            quitar.appendChild(agregarE);

        }
        
        actualizarTabla();
        actualizarTotal();

    }

    function eliminarProductoTabla(productoId) {
        // Remove the row from the table
        const row = Array.from(tableBody.children).find(row => row.cells[0].textContent === productoId);
        if (row) {
            tableBody.removeChild(row);
            delete productosSeleccionados[productoId];
        }

        // Actualiza la cantidad y el subtotal en la tabla
        actualizarTabla();
        actualizarTotal();
    }

    function quitarProductoTabla(productoId) {
        if (productosSeleccionados[productoId] && productosSeleccionados[productoId].cantidad > 1) {
            // Si hay más de un producto, decrementa la cantidad
            productosSeleccionados[productoId].cantidad--;
        }
        else if(productosSeleccionados[productoId] && productosSeleccionados[productoId].cantidad == 1){
            eliminarProductoTabla(productoId);
        }

        // Actualiza la cantidad y el subtotal en la tabla
        actualizarTabla();
        actualizarTotal();
    }

    function aumentarProductoTabla(productoId) {
        productosSeleccionados[productoId].cantidad++;
        actualizarTabla();
        actualizarTotal();
    }

    function actualizarTabla() {

        for (const productoId in productosSeleccionados) {
            const subtotal = calcularSubtotal(productoId);
            const row = Array.from(tableBody.children).find(row => row.cells[0].textContent === productoId);
            if (row) {
                row.cells[2].textContent = productosSeleccionados[productoId].cantidad;
                row.cells[4].textContent = subtotal;
            }
        }

                // Actualiza la cantidad y el subtotal en la tabla
                const productosSeleccionadosString = JSON.stringify(productosSeleccionados);
                sessionStorage.setItem('productosSeleccionados', productosSeleccionadosString);
    }

    function actualizarTotal() {
        let total = 0;
        for (const productoId in productosSeleccionados) {
            total += calcularSubtotal(productoId);
        }
        precioTotalInput.value = total.toFixed(2); // Assuming you want the total rounded to 2 decimal places
    }

    function calcularSubtotal(productoId) {
        return productosSeleccionados[productoId].cantidad * productosSeleccionados[productoId].precioUnitario;
    }
});
