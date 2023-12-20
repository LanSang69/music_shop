<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifying</title>
    <link rel="stylesheet" href="../../css/loginStyle.css">
</head>

<body>
    <?php
    $host = "localhost";
    $port = "5432";  // Default PostgreSQL port
    $dbname = "music_shop";
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
            'gerente' => 1,
            'mostrador' => 2,
            'supervisor' => 3,
            'atencion' => 4,
        ];
        $sucursal = $_POST['sucursal'];
        $sucursalMAP= [
            'chalco' => 1,
            'roma' => 2,
        ];
        $db_puesto = $puestoMAP[$puesto];
        $db_sucursal = $sucursalMAP[$sucursal];

        $query = "UPDATE empleado SET nombre = '$nombre', p_apellido = '$p_apellido', s_apellido='$s_apellido', rfc = '$rfc', puesto = '$db_puesto', sucursal = '$db_sucursal' WHERE id = '$id'";

        $result = pg_query($connection, $query);

        if($result){
            echo "<div class='alert alert-success'>Usuario modificado con éxito</div>";
            echo "<script>
                    setTimeout(function() {
                        window.location.href = 'consult_employee.php';
                    }, 500); // 1000 milliseconds = 1 second
                  </script>";
        }else{
            echo "<div class='alert alert-danger'>Error al modificar el usuario: " . pg_last_error() . "</div>";
            echo "<script>
                    setTimeout(function() {
                        window.location.href = 'consult_employee.php';
                    }, 2000); // 2000 milliseconds = 2 seconds
                  </script>";
        }
    }
    ?>
</body>

</html>
