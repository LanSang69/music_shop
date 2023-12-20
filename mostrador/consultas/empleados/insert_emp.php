<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insertar</title>
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

        $query = "INSERT INTO empleado (nombre, p_apellido, s_apellido, rfc, puesto, sucursal)
              VALUES ('$nombre', '$p_apellido', '$s_apellido', '$rfc', '$db_puesto', '$db_sucursal')";

        $result = pg_query($connection, $query);

        if($result){
            echo "<div class='alert alert-success'>Usuario agregado con éxito</div>";
            echo "<script>
                    setTimeout(function() {
                        window.location.href = 'consult_employee.php';
                    }, 1000); // 1000 milliseconds = 2 seconds
                  </script>";
        }else{
            echo "<div class='alert alert-danger'>Credenciales erróneas " . pg_last_error() . "</div>";
        }
    }
?>
</body>
</html>