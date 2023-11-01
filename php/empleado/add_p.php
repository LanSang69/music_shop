<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $nombre = $_POST['nombre'];
    $tipo_producto = $_POST['tipo'];
    $marca = $_POST['marca'];
    $precio_venta = $_POST['precio'];
    $descripcion = $_POST['descripcion'];
    $modelo = $_POST['modelo'];
    $existencia = $_POST['existencia'];
    $proveedor = $_POST['proveedor'];
    $categoria = $_POST['categoria'];

    $query = "INSERT INTO producto (nombre, tipo_producto, marca, precio_venta, descripcion, modelo, existencia, proveedor, categoria)
              VALUES ('$nombre', '$tipo_producto', '$marca', '$precio_venta', '$descripcion', '$modelo', '$existencia', '$proveedor', '$categoria')";

    $result = pg_query($connection, $query);

    if ($result) {
        $response = array(
            'success' => true,
            'message' => 'Registro insertado correctamente.'
        );
    } else {
        $response = array(
            'success' => false,
            'message' => 'Error al insertar el registro: ' . pg_last_error($connection)
        );
    }
} else {
    $response = array(
        'success' => false,
        'message' => 'Failed to connect to PostgreSQL.'
    );
}

header('Content-Type: application/json'); // Establece el encabezado JSON
echo json_encode($response); // Devuelve la respuesta JSON
?>
