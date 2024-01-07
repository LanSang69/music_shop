<?php
session_start();

$host = "localhost";
$port = "5432";
$dbname = "notamala";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $id_venta = $_POST['id_venta'];
    $id_producto = $_POST['id_producto'];
    $cantidad = $_POST['cantidad'];

    // TODO: Validate and sanitize input values before using them in the query

    $query = "INSERT INTO venta_producto (id_venta, id_producto, cantidad)
              VALUES ('$id_venta', '$id_producto', '$cantidad')";

    $result = pg_query($connection, $query);

    if ($result) {
        $response = [
            'success' => true,
            'message' => 'Producto agregado a la venta con éxito'
        ];
    } else {
        $error_message = json_encode(pg_last_error(), JSON_HEX_QUOT | JSON_HEX_APOS);

        $response = [
            'success' => false,
            'error' => $error_message
        ];
    }

    // Send the response as JSON
    header('Content-Type: application/json');
    echo json_encode($response);
} else {
    $response = [
        'success' => false,
        'error' => 'Error de conexión a la base de datos'
    ];

    // Send the response as JSON
    header('Content-Type: application/json');
    echo json_encode($response);
}
?>
