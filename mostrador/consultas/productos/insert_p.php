<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insertar producto</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
        $sucursal = $_POST['sucursal'];
        $sucursalMAP= [
        'chalco' => 1,
        'roma' => 2,
        ];
        $db_sucursal = $sucursalMAP[$sucursal];
        $db_prov = $proveedorMAP[$proveedor];

        $query = "INSERT INTO producto (nombre, tipo_producto, marca, precio_venta, descripcion, modelo, existencia, proveedor, categoria, id_sucursal, estado_venta)
              VALUES ('$nombre', '$tipo_producto', 'Ernie Ball', '$precio_venta', '$descripcion', '$modelo', '$existencia', '$db_prov', '$categoria', '$db_sucursal', 'en venta')";


        $result = pg_query($connection, $query);

        if($result){
            echo "<script>
            Swal.fire({
                icon: 'success',
                title: 'Producto " . $nombre . " agregado con éxito',
                confirmButtonText: 'OK'
            }).then(function () {
                window.location.href = 'consult_product.php';
            });
          </script>";
        }else{
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