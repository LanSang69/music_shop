<?php
$host = "localhost";
$port = "5432";
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $id = $_GET['id'];

    $query = "UPDATE producto SET estado_venta = 'en venta' WHERE id_producto = $id";
    $result = pg_query($connection, $query);

    if ($result) {
        // Return a JSON response indicating successs
        echo json_encode(['success' => true]);
    } else {
        $error_message = pg_last_error();
        // Return a JSON response indicating failure and the error message
        echo json_encode(['success' => false, 'message' => $error_message]);
    }
}
?>
