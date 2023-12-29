document.addEventListener("DOMContentLoaded", function() {
    const searchInput = document.getElementById("searchInput");
    const autocompleteResults = document.getElementById("autocomplete-results");
    const tableBody = document.getElementById("table-body");

    // Simulación de datos
    const datosSimulados = [
        { id: 1, nombre: "Producto 1 ", precioUnitario: 10 },
        { id: 2, nombre: "Producto 2", precioUnitario: 15 },
        { id: 3, nombre: "Producto 3", precioUnitario: 20 },
        // Agrega más datos según sea necesario
    ];

    const productosSeleccionados = {};

    searchInput.addEventListener("input", function() {
        const searchTerm = this.value.toLowerCase();

        const resultadosFiltrados = datosSimulados.filter(item =>
            item.nombre.toLowerCase().includes(searchTerm)
        );

        mostrarResultados(resultadosFiltrados);
    });

    function mostrarResultados(resultados) {
        autocompleteResults.innerHTML = "";

        if (resultados.length > 0) {
            autocompleteResults.style.display = "block";
            resultados.forEach(resultado => {
                const item = document.createElement("div");
                item.textContent = resultado.nombre;

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
            const cellNombre = row.insertCell(1);
            const cellCantidad = row.insertCell(2);
            const cellPrecioUnitario = row.insertCell(3);
            const cellSubtotal = row.insertCell(4);

            cellId.textContent = productoId;
            cellNombre.textContent = producto.nombre;
            cellCantidad.textContent = 1;
            cellPrecioUnitario.textContent = producto.precioUnitario;
            cellSubtotal.textContent = calcularSubtotal(productoId);
        }

        // Actualiza la cantidad y el subtotal en la tabla
        actualizarTabla();
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
    
    }

    function calcularSubtotal(productoId) {
        return productosSeleccionados[productoId].cantidad * productosSeleccionados[productoId].precioUnitario;
    }
});
  
function buscar() {
    // Obtener el valor del cuadro de selección
    var metodo = document.getElementById("metodo").value;
    // Obtener el valor de la barra de búsqueda
    var busqueda = document.getElementById("busqueda").value;
    // Realizar la búsqueda según el método seleccionado
    var resultados = simularBusqueda(metodo, busqueda);
    // Mostrar los resultados
    mostrarResultados(resultados);
    // Limpiar la barra de búsqueda
    document.getElementById("busqueda").value = "";
}

function simularBusqueda(metodo, busqueda) {
    // Simulación de datos de clientes
    var clientes = [
        { Id_cliente: 1, nombre: 'Cliente A', direccion: 'Dirección A', correo: 'clienteA@example.com', celular: '123456789' },
        { Id_cliente: 2, nombre: 'Cliente B', direccion: 'Dirección B', correo: 'clienteB@example.com', celular: '987654321' },
        { Id_cliente: 3, nombre: 'Cliente C', direccion: 'Dirección C', correo: 'clienteC@example.com', celular: '555555555' },
        { Id_cliente: 4, nombre: 'Cliente D', direccion: 'Dirección D', correo: 'clienteD@example.com', celular: '999999999' },
    ]
    // Filtrar resultados según el método de búsqueda
    var resultados = clientes.filter(function(cliente) {
        return String(cliente[metodo]).toLowerCase().includes(busqueda.toLowerCase());
    })
    return resultados;
}

function mostrarResultados(resultados) {
    // Limpiar resultados anteriores
    document.getElementById("resultados").innerHTML = ""
    // Mostrar los nuevos resultados
    resultados.forEach(function(cliente) {
        var resultadoElemento = document.createElement("div");
        resultadoElemento.innerHTML = "ID: " + cliente.Id_cliente + "<br>" +
                                     "Nombre: " + cliente.nombre + "<br>" +
                                     "Dirección: " + cliente.direccion + "<br>" +
                                     "Correo: " + cliente.correo + "<br>" +
                                     "Celular: " + cliente.celular + "<br><br>";
        document.getElementById("resultados").appendChild(resultadoElemento);
    });
}