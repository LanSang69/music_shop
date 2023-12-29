<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar horario</title>
    <link rel="stylesheet" type="text/css" href="../../css/styles_list.css">
</head>

<body>
<?php
    $id = $_GET['id'];
    $nombre = $_GET['name'];
    $rfc = $_GET['rfc'];

    $connection = pg_connect("host=localhost port=5432 dbname=notamala user=lansan69 password=LanSan2004*");

    if ($connection) {
        $result = pg_query($connection, "SELECT id_empleado, dia.id_dia, id_turno, dia.dia AS dia FROM horario_empleado
         JOIN dia ON horario_empleado.id_dia = dia.id_dia WHERE id_empleado = '$id'");
        
        $turnos = array(); // Initialize an array to store turno information for each day

        while ($row = pg_fetch_assoc($result)) {
            $turnos[$row['dia']] = $row['id_turno']; // Store the turno value for each day in the array
        }
    }
?>

<div class="table-content">
    <div>
        <form action="new_schedule.php" method="post">
            <table border="1" class="table">
                <thead>
                    <tr>
                        <td><?php echo "Horario de " . $nombre ?></td>
                        <td><input type="text" value="<?= $id ?>" style="display:none" name="id" id=""></td>
                        <td><input type="text" value="<?= $nombre ?>" style="display:none" name="nombre" id=""></td>
                    </tr>
                </thead>
                <?php
                    $dias = ['lunes', 'martes', 'miércoles', 'jueves', 'viernes', 'sábado'];

                    foreach ($dias as $dia) {
                        ?>
                        <tr>
                            <td><?= $dia ?></td>
                            <td>
                                <select name="<?= strtolower($dia) ?>" required>
                                    <option value="matutino" <?= ($turnos[$dia] == 1) ? 'selected' : '' ?>>Matutino</option>
                                    <option value="vespertino" <?= ($turnos[$dia] == 2) ? 'selected' : '' ?>>Vespertino</option>
                                    <option value="no-laborable" <?= ($turnos[$dia] == 3) ? 'selected' : '' ?>>No laborable</option>
                                </select>
                            </td>
                        </tr>
                    <?php
                    }
                ?>
            </table>
            <div class="submit-button">
                <button type="submit">Guardar</button>
            </div>
        </form>
        <form action="consult_employee.php" method="get" class="return-form">
            <button type="submit" formaction="consult_employee.php">Volver</button>
        </form>
    </div>
</div>

</body>

</html>