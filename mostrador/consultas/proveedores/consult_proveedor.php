<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proveedores</title>
    <link rel="stylesheet" type="text/css" href="../../css/styles_list.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>

    <h1>Proveedores</h1>

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
                <td>RFC</td>
                <td>Razón social</td>
                <td>Código postal</td>
                <td>Colonia</td>
                <td>Ciudad</td>
                <td>Nombre del contacto</td>
                <td>Primer apellido</td>
                <td>Segundo apellido</td>
                <td>Correo</td>
                <td>Check</td>
            </tr>
            <?php
$connection = pg_connect("host=localhost port=5432 dbname=notamala user=lansan69 password=LanSan2004*");

if ($connection) {

    $result = pg_query($connection, "SELECT * FROM proveedor WHERE estado_proveedor = 'Activo'ORDER BY id_proveedor");

    while ($row = pg_fetch_assoc($result)) {
        ?>
            <tr>
                <td><?php echo $row['nombre'] ?></td>
                <td><?php echo $row['rfc'] ?></td>
                <td><?php echo $row['razon_social'] ?></td>
                <td><?php echo $row['colonia'] ?></td>
                <td><?php echo $row['ciudad'] ?></td>
                <td><?php echo $row['codigo_postal'] ?></td>
                <td><?php echo $row['nombre_contacto'] ?></td>
                <td><?php echo $row['primer_apellido'] ?></td>
                <td><?php echo $row['segundo_apellido'] ?></td>
                <td><?php echo $row['correo'] ?></td>
                <td><input type="radio" name="selectedItem" value="<?php echo $row['id_proveedor']; ?>"></td>
            </tr>
            <?php
    }
}
?>

        </table>
    </div>

    <div class="action-buttons">
        <form action="add_proveedor.php" method="post">
            <button type="submit" class="add-button">Agregar</button>
        </form>
        <button class="modify-button" onclick="modifyProveedor()">Modificar</button>
        <button class="delete-button" onclick="deleteProveedor()">Eliminar</button>
    </div>

    <!-- Script for handling the checked options -->
    <script src="script.js"></script>

</body>

</html>