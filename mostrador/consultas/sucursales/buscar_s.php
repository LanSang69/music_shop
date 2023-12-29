<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sucursales</title>
    <link rel="stylesheet" type="text/css" href="../../css/styles_list.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>

    <h1>Sucursales</h1>

    <div id="search-box">
        <form action="buscar_s.php" method="post">
            <input type="text" id="search-input" placeholder="Ingrese texto de búsqueda" name="buscar">
            <button id="search-button">Buscar</button>
        </form>

        <form action="consult_sucursal.php" method="post">
            <button id="restart-button" name="Restart">Eliminar búsqueda</button>
        </form>

        <form action="../boss.php" method="get">
            <button type="submit" formaction="../boss.php">Volver</button>
        </form>

    </div>

    <div class="table-content">
        <table>
            <tr>
                <td>Nombre</td>
                <td>Colonia</td>
                <td>Ciudad</td>
                <td>Código postal</td>
                <td>Estado</td>
                <td>Opciones</td>
            </tr>
            <?php
$connection = pg_connect("host=localhost port=5432 dbname=notamala user=lansan69 password=LanSan2004*");

if ($connection) {
    $busqueda = $_POST['buscar'];
    $result = pg_query($connection, "SELECT id_sucursal, nombre, colonia, ciudad, codigo_postal, sucursal.id_estado, estado_sucursal.estado AS estado 
    FROM sucursal JOIN estado_sucursal ON estado_sucursal.id_estado = sucursal.id_estado WHERE 
    nombre ILIKE '%$busqueda%' OR
    colonia ILIKE '%$busqueda%' OR
    ciudad ILIKE '%$busqueda%'
    ORDER BY id_sucursal");

    while ($row = pg_fetch_assoc($result)) {
        ?>
            <tr>
                <td><?php echo $row['nombre'] ?></td>
                <td><?php echo $row['colonia'] ?></td>
                <td><?php echo $row['ciudad'] ?></td>
                <td><?php echo $row['codigo_postal'] ?></td>
                <td><?php echo $row['estado'] ?></td>
                <td><input type="radio" name="selectedItem" value="<?php echo $row['id_sucursal']; ?>"></td>
            </tr>
            <?php
    }
}
?>

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

</body>

</html>