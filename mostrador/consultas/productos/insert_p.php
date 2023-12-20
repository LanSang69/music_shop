<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insertar producto</title>
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
        $tipo_producto = $_POST['tipo'];
        $marca = $_POST['marca'];
        $precio_venta = $_POST['precio'];
        $descripcion = $_POST['descripcion'];
        $modelo = $_POST['modelo'];
        $existencia = $_POST['existencia'];
        $proveedor = $_POST['proveedor'];
        $categoria = $_POST['categoria'];
        
        $proveedorMAP= [
            'guitarG' => 1,
            'ernieB' => 2,
            'equipB' => 3,
            'takaG' => 4,
            ];
        $db_prov = $proveedorMAP[$proveedor];

        $query = "INSERT INTO producto (nombre, tipo_producto, marca, precio_venta, descripcion, modelo, existencia, proveedor, categoria)
              VALUES ('$nombre', '$tipo_producto', '$marca', '$precio_venta', '$descripcion', '$modelo', '$existencia', ' $db_prov', '$categoria')";


        $result = pg_query($connection, $query);

        if($result){
            echo "<div class='alert alert-success'>Usuario agregado con éxito</div>";
            echo "<script>
                    setTimeout(function() {
                        window.location.href = 'consult_product.php';
                    }, 1000); // 1000 milliseconds = 2 seconds
                  </script>";
        }else{
            echo "<div class='alert alert-danger'>Credenciales erróneas " . pg_last_error() . "</div>";
            echo "<script>
                    setTimeout(function() {
                        window.location.href = 'add_product.php';
                    }, 2000); // 2000 milliseconds = 2 seconds
                  </script>";
        }
    }
?>
</body>
</html>