<?php
// Assuming you have a database connection
$connection = pg_connect("host=localhost port=5432 dbname=notamala user=lansan69 password=LanSan2004*");

$cpInput = $_POST['cp'];

// Initialize the response
$response = ['data' => []];

if ($connection) {
    try {
        // Prepare and execute a query to retrieve data based on the CP input
        $query = "SELECT municipio, asentamiento, tipo_asentamiento FROM direccion WHERE codigo_postal = $1";
        $result = pg_query_params($connection, $query, array($cpInput));

        if ($result) {
            // Fetch all the rows as an associative array
            while ($row = pg_fetch_assoc($result)) {
                // Extract municipio, asentamiento, and tipo_asentamiento data
                $response['data'][] = [
                    'municipio' => $row['municipio'],
                    'asentamiento' => $row['asentamiento'],
                    'tipo_asentamiento' => $row['tipo_asentamiento'],
                ];
            }
        }
    } catch (Exception $e) {
        // Handle errors
        $response['error'] = 'Error: ' . $e->getMessage();
    } finally {
        // Close the database connection
        pg_close($connection);
    }
} else {
    // Handle connection error
    $response['error'] = 'Unable to connect to the database.';
}

// Return the response as JSON
echo json_encode($response);
?>
