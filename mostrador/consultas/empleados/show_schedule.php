<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar empleado</title>
    <link rel="stylesheet" href="../../css/loginStyle.css">
</head>

<body>
<a href="consult_employee.php">Volver</a>
    <table border="1">
        <tr>
            <td>Día</td>
            <td>Hora entrada</td>
            <td>Hora de salida</td>
            <td>Opciones</td>
        </tr>
        <?php
        $id = $_GET['id'];

        $connection = pg_connect("host=localhost port=5432 dbname=music_shop user=lansan69 password=LanSan2004*");

            if ($connection) {
                $result = pg_query($connection, "SELECT dia.dia AS dia_name, hora_entrada, hora_salida FROM horario JOIN empleado ON empleado.id = id_empleado 
                JOIN dia ON dia.id = horario.dia WHERE id_empleado = '$id'");
                while ($row = pg_fetch_assoc($result)) {
                    ?>
        <tr>
            <td><?php echo $row['dia_name'] ?></td>
            <td><?php echo $row['hora_entrada'] ?></td>
            <td><?php echo $row['hora_salida'] ?></td>
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
                    <a href="delete_em.php? id=<?php echo $row['id']?>">Eliminar</a>
                </td>
        </tr>
        <?php 
                }
            }
    ?>
    </table>
</body>

</html>