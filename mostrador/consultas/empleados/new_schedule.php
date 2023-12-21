<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asignar nuevo horario</title>
    <link rel="stylesheet" href="../../css/loginStyle.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "notamala";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $id = $_POST['id'];
    $nombre = $_POST['nombre'];
    
    $dias = ['lunes', 'martes', 'miércoles', 'jueves', 'viernes', 'sábado'];

    foreach ($dias as $dia) {
        $turno = $_POST[$dia];
        $turnoMap= [
            'matutino' => 1,
            'vespertino' => 2,
            'no-laborable' => 3,
            ];
        $db_turno = $turnoMap[$turno];

        $update_query = "UPDATE horario_empleado SET id_turno = $db_turno WHERE id_empleado = $id AND id_dia = (SELECT id_dia FROM dia WHERE dia = '$dia')";
        
        $update_result = pg_query($connection, $update_query);

        if (!$update_result) {
            $error_message = json_encode(pg_last_error(), JSON_HEX_QUOT | JSON_HEX_APOS);

            echo "<script>
                    if (typeof Swal !== 'undefined' && Swal.fire) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error al actualizar horario',
                            text: $error_message,
                            confirmButtonText: 'OK'
                        }).then(function () {
                            window.history.back();
                        });
                    } else {
                        console.error('SweetAlert2 is not available');
                    }
                  </script>";
            exit; // Stop processing if an error occurs
        }
    }

    echo "<script>
            Swal.fire({
                icon: 'success',
                title: 'Horario de $nombre actualizado con éxito',
                confirmButtonText: 'OK'
            }).then(function () {
                window.location.href = 'consult_employee.php';
            });
          </script>";
}
?>

</body>

</html>
