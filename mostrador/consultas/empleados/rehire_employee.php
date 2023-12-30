<?php
$host = "localhost";
$port = "5432";
$dbname = "notamala";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $id_empleado = $_GET['id'];
    $nombre = $_GET['name'];
    $rfc = $_GET['rfc'];

    // Update query
    $query = "UPDATE empleado SET id_estado = 1 WHERE id_empleado = $id_empleado";
    $result = pg_query($connection, $query);

    // Insert query
    $schedule_query = "INSERT INTO horario_empleado (id_empleado, id_turno, id_dia)
    VALUES ('$id_empleado', 3, 1), ('$id_empleado', 3, 2), ('$id_empleado', 3, 3),
    ('$id_empleado', 3, 4), ('$id_empleado', 3, 5), ('$id_empleado', 3, 6)";

    $schedule_result = pg_query($connection, $schedule_query);

    // Check both results
    if ($result && $schedule_result) {
        // Both queries were successful
        echo json_encode(['success' => true]);
    } else {
        // At least one of the queries failed
        $error_message = pg_last_error($connection); // Use pg_last_error with the connection parameter
        echo json_encode(['success' => false, 'message' => $error_message]);
    }
}
?>
