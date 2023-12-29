<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insertar</title>
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
    if($connection){
        $nombre = $_POST['nombre'];
        $p_apellido = $_POST['p_apellido'];
        $s_apellido = $_POST['s_apellido'];
        $rfc = $_POST['rfc'];
        $puesto = $_POST['puesto'];
        $puestoMAP= [
            'gerente' => 2,
            'ventas' => 3,
            'mostrador' => 4,
            'Supervisor' => 5,
            'atencion' => 6,
            ];
        $sucursal = $_POST['sucursal'];
        $sucursalMAP= [
        'roma' => 1,
        'chalco' => 2,
        ];
        $db_puesto = $puestoMAP[$puesto];
        $db_sucursal = $sucursalMAP[$sucursal];

        $query = "INSERT INTO empleado (nombre, p_apellido, s_apellido, rfc, id_puesto, id_sucursal)
              VALUES ('$nombre', '$p_apellido', '$s_apellido', '$rfc', '$db_puesto', '$db_sucursal')";

        $result = pg_query($connection, $query);

        if ($result) {
            $query2 = "SELECT id_empleado FROM empleado ORDER BY id_empleado DESC LIMIT 1";
            $result2 = pg_query($connection, $query2);
            $row = pg_fetch_assoc($result2);
            $id_empleado = $row['id_empleado'];

            $schedule_query = "INSERT INTO horario_empleado (id_empleado, id_turno, id_dia)
            VALUES ('$id_empleado', 3, 1), ('$id_empleado', 3, 2), ('$id_empleado', 3, 3),
            ('$id_empleado', 3, 4), ('$id_empleado', 3, 5), ('$id_empleado', 3, 6)";

            $schedule_result = pg_query($connection, $schedule_query);
            if($schedule_result){
                echo "<script>
                        Swal.fire({
                            icon: 'success',
                            title: 'Usuario " . $nombre." de RFC: ". $rfc.  " agregado con éxito',
                            confirmButtonText: 'OK'
                        }).then(function () {
                            window.location.href = 'consult_employee.php';
                        });
                      </script>";
            }else{
                $error_message = json_encode(pg_last_error(), JSON_HEX_QUOT | JSON_HEX_APOS);

            echo "<script>
                if (typeof Swal !== 'undefined' && Swal.fire) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error al agregar horario',
                        text: $error_message,
                        confirmButtonText: 'OK'
                    }).then(function () {
                        window.history.back();
                    });
                } else {
                    console.error('SweetAlert2 is not available');
                }
              </script>";
            }
        } else {
            $error_message = json_encode(pg_last_error(), JSON_HEX_QUOT | JSON_HEX_APOS);

        echo "<script>
                if (typeof Swal !== 'undefined' && Swal.fire) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error al agregar empleado',
                        text: $error_message,
                        confirmButtonText: 'OK'
                    }).then(function () {
                        window.history.back();
                    });
                } else {
                    console.error('SweetAlert2 is not available');
                }
              </script>";
        }
    }
?>
</body>

</html>