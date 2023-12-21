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
        $id = $_POST['id'];
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

        $query = "UPDATE empleado
        SET nombre = '$nombre',
            p_apellido = '$p_apellido',
            s_apellido = '$s_apellido',
            rfc = '$rfc',
            id_puesto = '$db_puesto',
            id_sucursal = '$db_sucursal'
            WHERE id_empleado = '$id'";

        $result = pg_query($connection, $query);

        if ($result) {
                echo "<script>
                        Swal.fire({
                            icon: 'success',
                            title: 'Empleado " . $nombre." de RFC: ". $rfc.  " modificado con éxito',
                            confirmButtonText: 'OK'
                        }).then(function () {
                            window.location.href = 'consult_employee.php';
                        });
                      </script>";
        } else {
            $error_message = json_encode(pg_last_error(), JSON_HEX_QUOT | JSON_HEX_APOS);

        echo "<script>
                if (typeof Swal !== 'undefined' && Swal.fire) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error al modificar empleado',
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