<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $id_producto = $_POST['id_p'];
    $nombre = $_POST['nombre'];
    $tipo_producto = $_POST['tipo'];
    $marca = $_POST['marca'];
    $precio_venta = $_POST['precio'];
    $descripcion = $_POST['descripcion'];
    $modelo = $_POST['modelo'];
    $existencia = $_POST['existencia'];
    $proveedor = $_POST['proveedor'];
    $categoria = $_POST['categoria'];

    $query = "UPDATE producto SET nombre = '$nombre', tipo_producto = '$tipo_producto', marca = '$marca', precio_venta = '$precio_venta', descripcion = '$descripcion', modelo = '$modelo', existencia = '$existencia', proveedor = $proveedor, categoria = '$categoria' WHERE id_producto = $id_producto";

    $result = pg_query($connection, $query);

    if ($result !== false) {
        $rowsAffected = pg_affected_rows($result);
        if ($rowsAffected > 0) {
            $response = array(
                'success' => true,
                'message' => 'Registro actualizado correctamente.'
            );
        } else {
            $response = array(
                'success' => false,
                'message' => 'No se encontraron registros para actualizar.'
            );
        }
    } else {
        $response = array(
            'success' => false,
            'message' => 'Error al ejecutar la actualización: ' . pg_last_error()
        );
    }
} else {
    $response = array(
        'success' => false,
        'message' => 'Falló la conexión con PostgreSQL.'
    );
}

header('Content-Type: application/json');
echo json_encode($response);

?>