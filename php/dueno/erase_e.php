<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $rfc = $_POST['rfc'];

    // Consulta para obtener el nombre antes de borrar
    $getNombreQuery = "SELECT CONCAT(p_apellido, s_apellido, nombre) FROM empleado WHERE rfc = '$rfc'";
    $getNombreResult = pg_query($connection, $getNombreQuery);
    $nombre = pg_fetch_result($getNombreResult, 0);

    // Revisar si el RFC se encuentra en la base de datos
    $checkQuery = "SELECT COUNT(*) FROM empleado WHERE rfc = '$rfc";
    
    $checkResult = pg_query($connection, $checkQuery);
    $rowCount = pg_fetch_result($checkResult, 0);

    if ($rowCount > 0) {
        // SI existe, entonces procede con la operación
        $deleteQuery = "DELETE FROM empleado WHERE rfc = '$rfc'";
        $deleteResult = pg_query($connection, $deleteQuery);

        if ($deleteResult) {
            $response = array(
                'success' => true,
                'message' => "Borrado exitoso para $nombre."
            );
        } else {
            $response = array(
                'success' => false,
                'message' => 'Error al borrar el registro: ' . pg_last_error()
            );
        }
    } else {
        $response = array(
            'success' => false,
            'message' => 'RFC no encontrado en la base de datos.'
        );
    }
} else {
    $response = array(
        'success' => false,
        'message' => 'Error al conectar con PostgreSQL: ' . pg_last_error()
    );
}    

header('Content-Type: application/json');
echo json_encode($response);
?>
