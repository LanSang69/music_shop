<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>La Nota Mala - Registro de Venta</title>
    <link rel="stylesheet" href="VentaProd.css">
    <link href="carga.css" rel="stylesheet" type="text/css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>

<body>
    <form action="return.php" method="get">
            <button type="submit">Volver</button>
    </form>

    <div class="container">
        <header>
            <h1>La Nota Mala</h1>
        </header>
        <main>
            <h2>Registro de Venta</h2>
            <h3>Datos de la Sucursal</h3>
            <input type="text" name="sucursal_id" value="<?php echo $_SESSION["sucursal"]?>" style="font-size:20px"
                readonly>
            <h3>Datos del empleado</h3>
            <input type="text" name="sucursal_id" value="<?php echo $_SESSION["nombre"]?>" style="font-size:20px"
                readonly>

            <form action="/registro-venta/datos" method="post">
                <div class="user">
                    <select name="id_cliente" id="id_cliente" onchange="toggleClienteInput() "
                        style="width:500px; height:30px; font-size:20px;" required>
                        <option value="" style="font-size:20px">Seleccionar cliente</option>
                        <option value="mostrador" style="font-size:20px">Mostrador</option>
                        <option value="otro" style="font-size:20px">Otro</option>
                    </select>
                    <input type="text" name="cliente_id" id="cliente_id" placeholder="Id cliente"
                        style="width:100px; height:30px; font-size:15px; display: none;">
                </div>

                <div id="client-details" class="hidden" style="display:none">
                    <title>Barra de Búsqueda</title>
                    <form>

                        <label for="busqueda" style="font-size:25px">Ingresa el término de búsqueda:</label>
                        <input type="text" id="search-clients" placeholder="Buscar" name="buscar"
                            style="width:500px; height:30px; font-size:20px;" autocomplete="off">
                        <button type="button" style="width:150px; height:50px; font-size:20px;"
                            onclick="clearSearch()">Borrar</button>
                        <br>
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
                                    <td>Calle</td>
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
                    <input type="text" id="search-products" placeholder="Buscar" name="buscar"
                        style="width:500px; height:30px; font-size:20px;" autocomplete="off">
                    <button type="submit" id="product-button"
                        style="width:150px; height:50px; font-size:20px;">Agregar</button>

                    <div id="autocomplete-results">

                    </div>

                    <table id="product-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Cantidad</th>
                                <th>Precio Unitario</th>
                                <th>Subtotal</th>
                                <th>Eliminar</th>
                                <th>Modificar cantidad</th>
                            </tr>
                        </thead>
                        <tbody id="table-body">
                            <!-- Filas de la tabla se agregarán dinámicamente aquí -->
                        </tbody>
                    </table>
                </div>
                <!-- Fin de Barra de Búsqueda con Tabla -->


                <div class="total">
                    <label for="searchInput" style="font-size:20px;">Total:</label>
                    <input type="text" class="precio-total" style="width:150px; height:30px; font-size:15px;" readonly>
                </div>

                <select name="metodo_pago" id="id_metodo" style="width:500px; height:30px; font-size:20px;" required>
                    <option value="">Seleccionar método de pago</option>
                    <option value="efectivo">Efectivo</option>
                    <option value="tarjeta">Tarjeta</option>
                </select>

                <button type="button" style="width:150px; height:50px; font-size:20px;">Continuar</button>
            </form>

            <div id="pago-efectivo" class="efectivo" style="display:none;">
                <div class="payment-details">
                    <h3>Recibido:</h3>
                    <input type="number" id="recibido-input" placeholder="Monto recibido" style="width:150px; height:30px; font-size:15px;">
                    <h3>Cambio:</h3>
                    <input type="number" id="cambio-input" placeholder="Monto recibido" style="width:150px; height:30px; font-size:15px;" readonly>
        
                     <button id="terminar-compra" style="width:150px; height:50px; font-size:15px;">Terminar Compra</button>
                </div>
            </div>
        
            <div id="pago-tarjeta" class="tarjeta" style="display:none;">
            <button id="startButton" onclick="startTransaction()">Recibir tarjeta</button>

            <div class="terminal" id="terminal" onclick="startTransaction()">
                <div id="message">Insertar tarjeta</div>
                <div class="loading-circle" id="loadingCircle"></div>
            </div>

            <div id="transferNumber"></div>
            </div>

        </main>
    </div>


    <script src="VentaProd.js"></script>
    <script src="buscarCliente.js"></script>
    <script src="metodo_pago.js"></script>
    <script src="cambio.js"></script>
    <script src="terminar_compra.js"></script>
    <script>
    function toggleClienteInput() {
        var clienteSelect = document.getElementById("id_cliente");
        var clienteInput = document.getElementById("cliente_id");
        const search = document.getElementById("client-details");

        if (clienteSelect.value == "otro") {
            clienteInput.style.display = "block";
            clienteInput.setAttribute("required", "required");
            search.style.display = "block";
            clienteInput.value = '';
        } else {
            clienteInput.style.display = "none";
            clienteInput.removeAttribute("required");
            search.style.display = "none";
        }
    }
    </script>
</body>

</html>