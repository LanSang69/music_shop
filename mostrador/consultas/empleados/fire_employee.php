<?php
$host = "localhost";
$port = "5432";
$dbname = "notamala";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $id = $_GET['id'];
    $nombre = $_GET['name'];
    $rfc = $_GET['rfc'];

    // Update query
    $query = "UPDATE empleado SET id_estado = 2 WHERE id_empleado = $id";
    $result = pg_query($connection, $query);

    // Delete query
    $query2 = "DELETE FROM horario_empleado WHERE id_empleado = $id";
    $result2 = pg_query($connection, $query2);

    // Check both results
    if ($result && $result2) {
        // Both queries were successful
        echo json_encode(['success' => true]);
    } else {
        // At least one of the queries failed
        $error_message = pg_last_error($connection); // Use pg_last_error with the connection parameter
        echo json_encode(['success' => false, 'message' => $error_message]);
    }
}
?>

