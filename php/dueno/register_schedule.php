<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $id = $_POST['id'];
    $dia = $_POST['dia'];
    $hora_e = $_POST['hora_e'];
    $hora_s = $_POST['hora_s'];

    $query = "INSERT INTO horario (id_empleado, dia, hora_entrada, hora_salida)
              VALUES ('$id', '$dia', '$hora_e', '$hora_s')";

    $result = pg_query($connection, $query);

    if ($result) {
        $response = array(
            'success' => true,
            'message' => 'Registro insertado correctamente.'
        );
    } else {
        $response = array(
            'success' => false,
            'message' => 'Error al insertar el registro: ' . pg_last_error()
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