<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $rfc = $_POST['rfc']; // Get RFC from the AJAX request

    $query = "SELECT * FROM empleados WHERE rfc = '$rfc'";
    $params = array($rfc);

    $result = pg_query_params($connection, $query, $params);

    if ($result) {
        $row = pg_fetch_assoc($result);

        if ($row) {
            $response = array(
                'success' => true,
                'name' => $row['nombre'],
                'apellido' => $row['apellido'],
                'puesto' => $row['puesto'],
                'horario' => $row['horario'],
                'sucursal' => $row['sucursal']
            );

            echo json_encode($response);
        } else {
            $response = array(
                'success' => false,
                'message' => 'No person found with the RFC: ' . $rfc
            );

            echo json_encode($response);
        }
    } else {
        $response = array(
            'success' => false,
            'message' => 'Error executing the query.'
        );

        echo json_encode($response);
    }

    // Close the database connection
    pg_close($connection);
} else {
    $response = array(
        'success' => false,
        'message' => 'Failed to connect to PostgreSQL.'
    );

    echo json_encode($response);
}
?>

