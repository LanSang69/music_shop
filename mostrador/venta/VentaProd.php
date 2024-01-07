<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>La Nota Mala - Registro de Venta</title>
    <link rel="stylesheet" href="VentaProd.css">
    
</head>
<body>
<div class="container">
    <header>
        <h1>La Nota Mala</h1>
    </header>
    <main>
        <h2>Registro de Venta</h2>
       <h3>Datos de la Sucursal</h3>
            <input type="text" name="sucursal_id" value="<?php echo $_SESSION["sucursal"]?>" readonly>
      <h3>Datos del empleado</h3>
            <input type="text" name="sucursal_id" value="<?php echo $_SESSION["nombre"]?>" readonly>
      
        <form action="/registro-venta/datos" method="post">
        <div class="user">
            <select name="id_cliente" id="id_cliente" onchange="toggleClienteInput()" required>
                <option value="">Seleccionar cliente</option>
                <option value="mostrador">Mostrador</option>
                <option value="otro">Otro</option>
            </select>
            <input type="text" name="cliente_id" id="cliente_id" placeholder="Id del cliente" style="display: none;">
        </div>
  		
    <title>Barra de Búsqueda</title>
          <div id="efectivo-details" class="hidden">
    <form>
        
        <label for="busqueda">Ingresa el término de búsqueda:</label>
        <input type="text" id="search-clients" placeholder="Buscar" name="buscar">
        <br>
    </form>

    <div>
        <table>
            <thead>
                <tr>
                <td>Id cliente</td>
                <td>Nombre</td>
                <td>Primer apellido</td>
                <td>Segundo apellido</td>
                <td>Correo</td>
                <td>RFC</td>
                <td>Colonia</td>
                <td>Número</td>
                </tr>
            </thead>
            <tbody id="resultados">

            </tbody>
        </table>

    </div>


    </div>
            <h3>Producto Vendido</h3>
            <input type="hidden" name="venta_id" value="">

<!-- Barra de Autocompletar con Cantidad -->
<!-- Barra de Búsqueda con Tabla -->
    <div class="search-container">
        <label for="searchInput">Buscar Producto:</label>
        <input type="text" id="searchInput" name="searchInput" placeholder="Ingresa un término de búsqueda">
    <div id="autocomplete-results"></div>

        <table id="product-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Cantidad</th>
                    <th>Precio Unitario</th>
                    <th>Subtotal</th>
                </tr>
            </thead>
            <tbody id="table-body">
                <!-- Filas de la tabla se agregarán dinámicamente aquí -->
            </tbody>
        </table>
    </div>
    <!-- Fin de Barra de Búsqueda con Tabla -->

    
<!-- Fin de Barra de Autocompletar con Cantidad -->


            <div class="total">
                <input type="text" class="precio-total" readonly placeholder="Precio Total">
            </div>

          <select name="metodo_pago" id="id_metodo" required>
                <option value="">Seleccionar método de pago</option>
                <option value="efectivo">Efectivo</option>
                <option value="tarjeta">Tarjeta</option>
            </select>
          
            <button type="button">Continuar</button>
        </form>
    </main>
</div>

<script src="VentaProd.js"></script>
<script src="buscarCliente.js"></script>
<script>
    function toggleClienteInput() {
        var clienteSelect = document.getElementById("id_cliente");
        var clienteInput = document.getElementById("cliente_id");

        if (clienteSelect.value == "otro") {
            clienteInput.style.display = "block";
            clienteInput.setAttribute("required", "required");
        } else {
            clienteInput.style.display = "none";
            clienteInput.removeAttribute("required");
        }
    }
    </script>
</body>
</html>