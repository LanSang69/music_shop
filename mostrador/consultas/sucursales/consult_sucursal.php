<?php
session_start();
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Empleados</title>
    <link rel="stylesheet" type="text/css" href="../../css/styles_list.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>

    <h1>Sucursales Activas</h1>

    <div id="search-box">
        <form action="" method="post">
            <input type="text" id="search-actives" placeholder="Ingrese texto de búsqueda" name="buscar">
        </form>

        <form action="consult_sucursal.php" method="post">
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
                <td>Colonia</td>
                <td>Ciudad</td>
                <td>Código postal</td>
                <td>Estado</td>
                <td>Opciones</td>
            </tr>
            </thead>
            <tbody id="activos">
            </tbody>
        </table>
    </div>

    <div class="action-buttons">
        <form action="add_sucursal.php" method="post">
            <button type="submit" class="add-button">Agregar</button>
        </form>
        <button class="modify-button" onclick="modifySucursal()">Modificar</button>
        <button class="delete-button" onclick="deleteSucursal()">Cerrar</button>
    </div>

    <!-- Aquí se muestran los empleados despedidos -->
    <br><br>
    <h1>Sucursales Inactivas</h1>

    <div id="search-box">
        <form action="" method="post">
            <input type="text" id="search-inactives" placeholder="Ingrese texto de búsqueda" name="buscar">
        </form>

        <form action="consult_sucursal.php" method="post">
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
                <td>Colonia</td>
                <td>Ciudad</td>
                <td>Código postal</td>
                <td>Estado</td>
                <td>Opciones</td>
            </tr>
            </thead>
            <tbody id="inactivos">
            </tbody>
        </table>
    </div>

    <div class="action-buttons">
        <form action="add_sucursal.php" method="post">
            <button type="submit" class="add-button">Agregar</button>
        </form>
        <button class="modify-button" onclick="modifySucursal()">Modificar</button>
        <button class="delete-button" onclick="deleteSucursal()">Cerrar</button>
    </div>


    <!-- Script for handling the checked options -->
    <script src="script.js"></script>

    <script>
    const searchA = document.getElementById('search-actives');
    const searchI = document.getElementById('search-inactives');
    const dynamicContentContainer1 = document.getElementById('activos');
    const dynamicContentContainer2 = document.getElementById('inactivos');

    // Function to fetch and update content based on the selected sucursal, search input, and page
    function updateContent1(searchTerm, page) {
        // Make an AJAX request to fetch data based on the selected option, search term, and page
        fetch(`get_actives.php?search=${searchTerm}&page=${page}`)
            .then(response => response.text())
            .then(data => {
                // Update the dynamic content container
                dynamicContentContainer1.innerHTML = data;
            })
            .catch(error => console.error(error));
    }

    function updateContent2(searchTerm, page) {
        // Make an AJAX request to fetch data based on the selected option, search term, and page
        fetch(`get_inactives.php?search=${searchTerm}&page=${page}`)
            .then(response => response.text())
            .then(data => {
                // Update the dynamic content container
                dynamicContentContainer2.innerHTML = data;
            })
            .catch(error => console.error(error));
    }

    // Function to handle page change
    function changePage(page) {
        const searchAct = searchA.value;
        const searchInacr = searchI.value;
        updateContent1(searchAct, page);
        updateContent2(searchInacr, page);
    }

    // Event listener for input change
    searchA.addEventListener('input', function() {
        const searchAct = searchA.value;
        updateContent1(searchAct, 1);
    });

    searchI.addEventListener('input', function() {
        const searchInact = searchI.value;
        updateContent2(searchInact, 1);
    });


    // Fetch and update content when the page loads
    document.addEventListener('DOMContentLoaded', function() {
        const searchAct = searchA.value;
        const searchInacr = searchI.value;
        updateContent1(searchAct, 1);
        updateContent2(searchInacr, 1);
    });
    </script>

</body>

</html>