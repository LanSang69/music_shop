<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $nombre = $_POST['nombre'];
    $apellido1 = $_POST['apellido1'];
    $apellido2 = $_POST['apellido2'];
    $rfc = $_POST['rfc'];
    $puesto = $_POST['puesto'];
    $sucursal = $_POST['sucursal'];

    $query = "INSERT INTO empleado (nombre, p_apellido, s_apellido, rfc, puesto, sucursal)
              VALUES ('$nombre', '$apellido1', '$apellido2', '$rfc', '$puesto', '$sucursal')";

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