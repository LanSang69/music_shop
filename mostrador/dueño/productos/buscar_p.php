<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
    <link rel="stylesheet" href="../../css/loginStyle.css">
</head>

<body>
    <div class="busqueda">
        <div class="buscar">
            <form action="buscar_p.php" method="post">
                <input type="text" name="buscar" id="">
                <input type="submit" value="buscar" id="">
            </form>
        </div>
        <div class="buscar">
            <form action="consult_product.php" method="post">
                <input type="submit" value="Restart" id="">
            </form>
        </div>
        <div class="buscar">
            <a href="add_employee.php">Nuevo</a>
        </div>
    </div>


    <div>
        <table border="1">
            <tr>
                <td>id</td>
                <td>Nombre</td>
                <td>Tipo</td>
                <td>Opciones</td>
            </tr>

            <?php
            $connection = pg_connect("host=localhost port=5432 dbname=music_shop user=lansan69 password=LanSan2004*");

            if ($connection) {
                $busqueda = $_POST['buscar'];
                $result = pg_query($connection, "SELECT id_producto, producto.nombre AS nombre, tipo_producto
                FROM producto WHERE producto.nombre ILIKE '%$busqueda%' 
                OR tipo_producto ILIKE '%$busqueda%'");
                
                while ($row = pg_fetch_assoc($result)) {
                    ?>
            <tr>
                <td><?php echo $row['id_producto'] ?></td>
                <td><?php echo $row['nombre'] ?></td>
                <td><?php echo $row['tipo_producto'] ?></td>
                <td>
                    <a href="edit_emp.php">Editar</a>
                    <a href="delete_emp.php? id=<?php echo $row['id']?>">Eliminar</a>
                    <a href="show_schedule.php">Horarios</a>
                </td>
            </tr>
            <?php 
                }
            }
                ?>
        </table>
    </div>

</body>

</html>