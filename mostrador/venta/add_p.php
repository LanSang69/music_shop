<?php
session_start();

$host = "localhost";
$port = "5432";
$dbname = "notamala";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    // Start transaction
    pg_query($connection, 'BEGIN');

    try {
        $id_venta = $_POST['id_venta'];
        $id_producto = $_POST['id_producto'];
        $cantidad = $_POST['cantidad'];

        // TODO: Validate and sanitize input values before using them in the query

        $query = "INSERT INTO venta_producto (id_venta, id_producto, cantidad)
                  VALUES ('$id_venta', '$id_producto', '$cantidad')";
        $result = pg_query($connection, $query);

        $query4 = "UPDATE producto SET existencia = existencia - $cantidad WHERE id_producto = $id_producto";
        $result4 = pg_query($connection, $query4);

        // Check if the UPDATE query was successful
        if ($result && $result4) {
            // Check if the quantity is equal to or higher than 0
            $query5 = "SELECT existencia FROM producto WHERE id_producto = $id_producto";
            $result5 = pg_query($connection, $query5);

            // Check if the SELECT query was successful
            if ($result5) {
                $row = pg_fetch_assoc($result5);
                $newExistencia = $row['existencia'];

                if ($newExistencia >= 0) {
                    // Commit the transaction if everything is successful
                    pg_query($connection, 'COMMIT');

                    $response = [
                        'success' => true,
                        'message' => 'Producto agregado a la venta con éxito'
                    ];
                } else {
                    // Rollback the transaction if the quantity is less than 0
                    pg_query($connection, 'ROLLBACK');
                    $response = [
                        'success' => false,
                        'error' => 'La cantidad después de la venta no puede ser negativa.'
                    ];
                }
            } else {
                // Rollback the transaction if the SELECT query fails
                pg_query($connection, 'ROLLBACK');
                $error_message = json_encode(pg_last_error(), JSON_HEX_QUOT | JSON_HEX_APOS);
                $response = [
                    'success' => false,
                    'error' => 'Error in SELECT Query: ' . $error_message
                ];
            }
        } else {
            // Rollback the transaction if any query fails
            pg_query($connection, 'ROLLBACK');
            $error_message = json_encode(pg_last_error(), JSON_HEX_QUOT | JSON_HEX_APOS);
            $response = [
                'success' => false,
                'error' => 'Error in Query: ' . $error_message
            ];
        }
    } catch (Exception $e) {
        // Rollback the transaction in case of an exception
        pg_query($connection, 'ROLLBACK');
        $response = [
            'success' => false,
            'error' => 'An error occurred: ' . $e->getMessage()
        ];
    } finally {
        // Close the database connection
        pg_close($connection);
    }

    // Send the response as JSON
    header('Content-Type: application/json');
    echo json_encode($response);
} else {
    $response = [
        'success' => false,
        'error' => 'Error de conexión a la base de datos'
    ];

    // Send the response as JSON
    header('Content-Type: application/json');
    echo json_encode($response);
}
?>
