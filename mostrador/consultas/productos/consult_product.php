<?php
session_start();
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
    <link rel="stylesheet" type="text/css" href="../../css/styles_list.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>

    <h1>Productos en venta</h1>

    <div id="search-box">

        <form action="" method="post">
            <select name="sucursal" id="sucursalA">
                <option value="todas" <?php echo ($_SESSION['sucursalI'] === 'todas') ? 'selected' : ''; ?>>Todas las
                    sucursales</option>
                <option value="1" <?php echo ($_SESSION['sucursal'] === '1') ? 'selected' : ''; ?>>Chalco</option>
                <option value="2" <?php echo ($_SESSION['sucursal'] === '2') ? 'selected' : ''; ?>>Roma</option>
            </select>
            <input type="text" id="search-actives" placeholder="Ingrese texto de búsqueda" name="buscar">
        </form>

        <form action="consult_product.php" method="post">
            <button id="restart-button" name="Restart">Eliminar búsqueda</button>
        </form>

        <form action="return.php" method="get">
            <button type="submit">Volver</button>
        </form>

    </div>

    <div class="table-content">
        <table>
            <thead>
                <tr>
                    <td>Nombre</td>
                    <td>Tipo</td>
                    <td>Existencia</td>
                    <td>Precio</td>
                    <td>Marca</td>
                    <td>Modelo</td>
                    <td>Sucursal</td>
                    <td>Opciones</td>
                </tr>
            </thead>

            <tbody id="activos">
            </tbody>
        </table>
    </div>

    <div id="pagination-container" class="pagination"></div>

    <div class="action-buttons">
        <form action="add_product.php" method="post">
            <button type="submit" class="add-button">Agregar</button>
        </form>
        <button class="modify-button" onclick="modifyProduct()">Modificar</button>
        <button class="delete-button" onclick="deleteProduct()">Descontinuar</button>
    </div>

    <br><br>
    <h1>Productos descontinuados</h1>

    <div id="search-box">

        <form action="" method="post">
            <select name="sucursal" id="sucursalI">
                <option value="todas" <?php echo ($_SESSION['sucursalI'] === 'todas') ? 'selected' : ''; ?>>Todas las
                    sucursales</option>
                <option value="1" <?php echo ($_SESSION['sucursal'] === '1') ? 'selected' : ''; ?>>Chalco</option>
                <option value="2" <?php echo ($_SESSION['sucursal'] === '2') ? 'selected' : ''; ?>>Roma</option>
            </select>
            <input type="text" id="search-inactives" placeholder="Ingrese texto de búsqueda" name="buscar">
        </form>

        <form action="consult_product.php" method="post">
            <button id="restart-button" name="Restart">Eliminar búsqueda</button>
        </form>

        <form action="return.php" method="get">
            <button type="submit">Volver</button>
        </form>

    </div>

    <div class="table-content">
        <table>
            <thead>
                <tr>
                    <td>Nombre</td>
                    <td>Tipo</td>
                    <td>Existencia</td>
                    <td>Precio</td>
                    <td>Marca</td>
                    <td>Modelo</td>
                    <td>Sucursal</td>
                    <td>Opciones</td>
                </tr>
            </thead>

            <tbody id="inactivos">
            </tbody>
        </table>
    </div>

    <div id="pagination-container" class="pagination"></div>

    <div class="action-buttons">
        <form action="add_product.php" method="post">
            <button type="submit" class="add-button">Agregar</button>
        </form>
        <button class="modify-button" onclick="modifyProduct()">Modificar</button>
        <button class="delete-button" onclick="recoverProduct()">Recuperar</button>
    </div>

    <!-- Script for handling the checked options and pagination -->
    <script src="script.js"></script>

<script>
const actives = document.getElementById('sucursalA');
const inactives = document.getElementById('sucursalI');
const sucursalA = actives.value;
const sucursalI = inactives.value;
const searchA = document.getElementById('search-actives');
const searchI = document.getElementById('search-inactives');
const dynamicContentContainer1 = document.getElementById('activos');
const dynamicContentContainer2 = document.getElementById('inactivos');

// Function to fetch and update content based on the selected sucursal, search input, and page
function updateContent1(sucursal, searchTerm, page) {
    // Make an AJAX request to fetch data based on the selected option, search term, and page
    fetch(`get_actives.php?search=${searchTerm}&page=${page}&sucursal=${sucursal}`)
        .then(response => response.text())
        .then(data => {
            // Update the dynamic content container
            dynamicContentContainer1.innerHTML = data;
        })
        .catch(error => console.error(error));
}

function updateContent2(sucursal, searchTerm, page) {
    // Make an AJAX request to fetch data based on the selected option, search term, and page
    fetch(`get_inactives.php?search=${searchTerm}&page=${page}&sucursal=${sucursal}`)
        .then(response => response.text())
        .then(data => {
            // Update the dynamic content container
            dynamicContentContainer2.innerHTML = data;
        })
        .catch(error => console.error(error));
}

    // Event listener for select change
    actives.addEventListener('change', function () {
        const selectedSucursal = actives.value;
        const searchTerm = searchA.value;
        updateContent1(selectedSucursal, searchTerm, 1); // Reset to page 1 when sucursal changes
    });

    // Event listener for select change
    inactives.addEventListener('change', function () {
        const selectedSucursal = inactives.value;
        const searchTerm = searchI.value;
        updateContent2(selectedSucursal, searchTerm, 1); // Reset to page 1 when sucursal changes
    });

// Function to handle page change
function changePage(page) {
    const searchAct = searchA.value;
    const searchInacr = searchI.value;
    updateContent1(searchAct, page);
    updateContent2(searchInacr, page);
}

    // Event listener for input change
    searchA.addEventListener('input', function() {
    const selectedSucursalA = actives.value;
    const searchAct = searchA.value;
    updateContent1(selectedSucursalA, searchAct, 1);
});

searchI.addEventListener('input', function() {
    const selectedSucursalI = inactives.value;
    const searchInact = searchI.value;
    updateContent2(selectedSucursalI, searchInact, 1);
});


// Fetch and update content when the page loads
document.addEventListener('DOMContentLoaded', function() {
    const selectedSucursalA = actives.value;
    const selectedSucursalI = inactives.value;
    const searchAct = searchA.value;
    const searchInacr = searchI.value;
    updateContent1(selectedSucursalA, searchAct, 1);
    updateContent2(selectedSucursalI, searchInacr, 1);
});
</script>
</body>

</html>