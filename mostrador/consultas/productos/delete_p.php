<?php
$host = "localhost";
$port = "5432";
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $id = $_GET['id'];

    // Check if there are any records in venta_producto for the given id
    $venta = "SELECT * FROM venta_producto WHERE id_producto = $id";
    $resultV = pg_query($connection, $venta);

    // Check if there are any records in venta_producto
    if ($resultV && pg_num_rows($resultV) > 0) {
        // If there are records, update the estado_venta
        $query = "UPDATE producto SET estado_venta = 'descontinuado' WHERE id_producto = $id";
    } else {
        // If there are no records, delete the product
        $query = "DELETE FROM producto WHERE id_producto = $id";
    }

    $result = pg_query($connection, $query);

    if ($result) {
        // Return a JSON response indicating success
        echo json_encode(['success' => true]);
    } else {
        $error_message = pg_last_error();
        // Return a JSON response indicating failure and the error message
        echo json_encode(['success' => false, 'message' => $error_message]);
    }
}
?>
