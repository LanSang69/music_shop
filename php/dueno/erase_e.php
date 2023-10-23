<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $rfc = $_POST['rfc'];

    // Check if the RFC exists in the database
    $checkQuery = "SELECT COUNT(*) FROM empleados WHERE rfc = '$rfc'";
    $checkResult = pg_query($connection, $checkQuery);
    $rowCount = pg_fetch_result($checkResult, 0);

    if ($rowCount > 0) {
        // The record exists, proceed with the delete operation
        $deleteQuery = "DELETE FROM empleados WHERE rfc = '$rfc'";
        $deleteResult = pg_query($connection, $deleteQuery);

        if ($deleteResult) {
            $response = array(
                'success' => true,
                'message' => 'Borrado éxitoso.'
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
        'message' => 'RFC no encontrado en la base de datos.'
    );
}    

header('Content-Type: application/json');
echo json_encode($response);
?>
