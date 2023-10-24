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
    $dia = $_POST['dia'];
    $hora = $_POST['hora'];
    $sucursal = $_POST['sucursal'];

    $query = "UPDATE empleado SET nombre = '$nombre', p_apellido = '$apellido1', s_apellido='$apellido2', rfc = '$rfc', puesto = '$puesto', dia = '$dia', hora = '$hora', sucursal = '$sucursal' WHERE rfc = '$rfc'";

    $result = pg_query($connection, $query);

    if ($result) {
        $response = array(
            'success' => true,
            'message' => 'Registro actualizado correctamente.'
        );
    } else {
        $response = array(
            'success' => false,
            'message' => 'Error al actualizar el registro: ' . pg_last_error()
        );
    }
} else {
    $response = array(
        'success' => false,
        'message' => 'Falló la conexión con postgreSQL.'
    );
}

header('Content-Type: application/json'); // Establece el encabezado JSON
echo json_encode($response); // Devuelve la respuesta JSON
?>
