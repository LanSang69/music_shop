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

    <h1>Productos</h1>

    <div id="search-box">
        <form action="buscar_p.php" method="post">
            <input type="text" id="search-input" placeholder="Ingrese texto de búsqueda" name="buscar">
            <button id="search-button">Buscar</button>
        </form>

        <form action="consult_employee.php" method="post">
            <button id="restart-button" name="Restart">Eliminar búsqueda</button>
        </form>

        <form action="consult_employee.php" method="get">
            <button type="submit" formaction="../gerente.php">Volver</button>
        </form>

    </div>

    <div class="table-content">
        <table>
            <tr>
                <td>Nombre</td>
                <td>Tipo</td>
                <td>Existencia</td>
                <td>Precio</td>
                <td>Marca</td>
                <td>Modelo</td>
                <td>Opciones</td>
            </tr>
            <?php
$connection = pg_connect("host=localhost port=5432 dbname=music_shop user=lansan69 password=LanSan2004*");

// Define the number of rows per page
$rowsPerPage = 10;

// Get the current page number from the URL
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

if ($connection) {
    // Calculate the OFFSET based on the current page and rows per page
    $offset = ($page - 1) * $rowsPerPage;

    // Fetch data with LIMIT and OFFSET
    $result = pg_query($connection, "SELECT * FROM producto WHERE estado_venta='en venta' ORDER BY id_producto LIMIT $rowsPerPage OFFSET $offset");

    while ($row = pg_fetch_assoc($result)) {
        ?>
            <tr>
                <td><?php echo $row['nombre'] ?></td>
                <td><?php echo $row['tipo_producto'] ?></td>
                <td><?php echo $row['existencia'] ?></td>
                <td><?php echo $row['precio_venta'] ?></td>
                <td><?php echo $row['marca'] ?></td>
                <td><?php echo $row['modelo'] ?></td>
                <td><input type="radio" name="selectedItem" value="<?php echo $row['id_producto']; ?>"></td>
            </tr>
            <?php
    }

    // Pagination controls
    $totalRows = pg_num_rows(pg_query($connection, "SELECT * FROM producto"));
    $totalPages = ceil($totalRows / $rowsPerPage);

    echo '<div class="pagination">';
    for ($i = 1; $i <= $totalPages; $i++) {
        echo '<a href="?page=' . $i . '">' . $i . '</a>';
    }
    echo '</div>';
}
?>

        </table>
    </div>

    <div class="action-buttons">
        <form action="add_product.php" method="post">
            <button type="submit" class="add-button">Agregar</button>
        </form>
        <button class="modify-button" onclick="modifyProduct()">Modificar</button>
        <button class="delete-button" onclick="deleteProduct()">Descontinuar</button>
    </div>

    <!-- Script for handling the checked options -->
    <script src="script.js"></script>

</body>

</html>