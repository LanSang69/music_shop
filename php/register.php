<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $rfc = $_POST['rfc'];
    $domicilio_f = $_POST['domicilio_f'];
    $correo = $_POST['correo'];
    $celular = $_POST['celular'];
    $telefono = $_POST['telefono'];

    $query = "INSERT INTO cliente (nombre, apellido, rfc, domicilio_f, correo, celular, telefono)
              VALUES ('$nombre', '$apellido', $rfc, '$domicilio_f', '$correo', '$celular', '$telefono')";

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

