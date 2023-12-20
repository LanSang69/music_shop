<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Empleados</title>
    <link rel="stylesheet" href="../../css/loginStyle.css">
</head>

<body>
    <div class="busqueda">
        <div class="buscar">
            <form action="buscar_e.php" method="post">
                <input type="text" name="buscar" id="">
                <input type="submit" value="buscar" id="">
            </form>
        </div>
        <div class="buscar">
            <form action="consult_employee.php" method="post">
                <input type="submit" value="Restart" id="">
            </form>
        </div>
        <div class="buscar">
            <a href="add_employee.php">Nuevo</a>
            <a class="button" href="#" id="volver">Volver</a>

        </div>
    </div>

    <div>
        <table border="1">
            <tr>
                <td>id</td>
                <td>Nombre</td>
                <td>Primer apellido</td>
                <td>Segundo apellido</td>
                <td>RFC</td>
                <td>Puesto</td>
                <td>Sucursal</td>
                <td>Opciones</td>
            </tr>
            <?php
            $connection = pg_connect("host=localhost port=5432 dbname=music_shop user=lansan69 password=LanSan2004*");

            if ($connection) {
                $result = pg_query($connection, "SELECT empleado.id AS id, empleado.nombre AS nombre, p_apellido, s_apellido, rfc, 
                puesto.nombre AS puesto_nombre, sucursal.nombre AS nombre_sucursal FROM empleado 
                JOIN puesto ON empleado.puesto = puesto.id JOIN sucursal ON sucursal.id = empleado.sucursal ORDER BY id");
                while ($row = pg_fetch_assoc($result)) {
                    ?>
            <tr>
                <td><?php echo $row['id'] ?></td>
                <td><?php echo $row['nombre'] ?></td>
                <td><?php echo $row['p_apellido'] ?></td>
                <td><?php echo $row['s_apellido'] ?></td>
                <td><?php echo $row['rfc'] ?></td>
                <td><?php echo $row['puesto_nombre'] ?></td>
                <td><?php echo $row['nombre_sucursal'] ?></td>
                <td>
                    <a href="edit_emp.php?
                    id=<?php echo $row['id']?> &
                    nombre=<?php echo $row['nombre']?> &
                    p_ap=<?php echo $row['p_apellido']?> &
                    s_ap=<?php echo $row['s_apellido']?> &
                    rfc=<?php echo $row['rfc']?> &
                    puesto=<?php echo $row['puesto_nombre']?> &
                    sucursal=<?php echo $row['nombre_sucursal']?>
                    ">Editar</a>
                    <a href="delete_emp.php? id=<?php echo $row['id']?>">Eliminar</a>
                    <a href="show_schedule.php? 
                    id=<?php echo $row['id']?>
                    ">Horarios</a>
                </td>
            </tr>
            <?php 
                }
            }
                ?>
        </table>
    </div>

    <script>
    // Agregar un evento click al enlace "Volver"
    document.getElementById('volver').addEventListener('click', function(event) {
        event.preventDefault(); // Evitar la acción predeterminada del enlace
        window.history.back(); // Retroceder a la página anterior
    });
    </script>

</body>

</html>