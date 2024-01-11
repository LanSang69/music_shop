<?php
session_start();

$host = "localhost";
$port = "5432";
$dbname = "notamala";
$user = "lansan69";
$password = "LanSan2004*";

// Check if the request method is POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

    if ($connection) {
        // Start transaction
        pg_query($connection, 'BEGIN');

        $cliente = $_SESSION["id_cliente"];
        $pago = 3;
        $total = $_POST['monto'];
        $sucursal = 3;

        // Data for tarjeta
        $query = "INSERT INTO venta (id_cliente, tipo_pago, monto_total, id_sucursal)
                  VALUES ('$cliente', '$pago', '$total', '$sucursal')
                  RETURNING id_venta";

        $result = pg_query($connection, $query);

        if ($result) {
            $row = pg_fetch_assoc($result);
            $id_venta = $row['id_venta'];

            $seguimiento = $_POST['numero_referencia'];

            $queryPaypal = "INSERT INTO pago_paypal (id_venta, id_compra) VALUES ($id_venta, '$seguimiento')";
            $result2 = pg_query($connection, $queryPaypal);

            if ($result2) {
                if (isset($_SESSION['cart_data'])) {
                    foreach ($_SESSION['cart_data'] as $producto) {
                        $id_producto = $producto['id'];
                        $cantidad = $producto['cantidad'];

                        $query3 = "INSERT INTO venta_producto (id_venta, id_producto, cantidad)
                        VALUES ('$id_venta', '$id_producto', '$cantidad')";

                        $result3 = pg_query($connection, $query3);

                        if (!$result3) {
                            // Rollback the transaction if any query fails
                            pg_query($connection, 'ROLLBACK');
                            $error_message = pg_last_error($connection);
                            echo json_encode(['success' => false, 'message' => 'Error in Query: ' . $error_message]);
                            exit; // Stop execution after sending the response
                        }

                        $query4 = "UPDATE producto SET existencia = (existencia - $cantidad) WHERE id_producto = $id_producto";
                        $result4 = pg_query($connection, $query4);
                        
                        // Check if the UPDATE query was successful
                        if ($result4) {
                            $query5 = "SELECT existencia FROM producto WHERE id_producto = $id_producto";
                            $result5 = pg_query($connection, $query5);
                        
                            // Check if the SELECT query was successful
                            if ($result5) {
                                $row = pg_fetch_assoc($result5);
                                $newExistencia = $row['existencia'];
                        
                                // Check if the quantity is still greater than 0
                                if ($newExistencia >= 0) {
                                    // Commit the transaction if everything is successful
                                    pg_query($connection, 'COMMIT');
                        
                                    echo json_encode(['success' => true]);
                                    exit; // Stop execution after sending the response
                                } else {
                                    // Rollback the transaction if the quantity is less than 0
                                    pg_query($connection, 'ROLLBACK');
                                    echo json_encode(['success' => false, 'message' => 'Quantity cannot be negative.']);
                                    exit; // Stop execution after sending the response
                                }
                            } else {
                                // Rollback the transaction if the SELECT query fails
                                pg_query($connection, 'ROLLBACK');
                                $error_message = pg_last_error($connection);
                                echo json_encode(['success' => false, 'message' => 'Error in SELECT Query: ' . $error_message]);
                                exit; // Stop execution after sending the response
                            }
                        } else {
                            // Rollback the transaction if the UPDATE query fails
                            pg_query($connection, 'ROLLBACK');
                            $error_message = pg_last_error($connection);
                            echo json_encode(['success' => false, 'message' => 'Error in UPDATE Query: ' . $error_message]);
                            exit; // Stop execution after sending the response
                        }
                    }
                } else {
                    // Rollback the transaction if there is an issue with the cart data
                    pg_query($connection, 'ROLLBACK');
                    $response = [
                        'success' => false,
                        'error' => 'Error de conexión a la base de datos'
                    ];
                    echo json_encode($response);
                    exit; // Stop execution after sending the response
                }

                // Commit the transaction if all queries succeed
                pg_query($connection, 'COMMIT');

                echo json_encode(['success' => true]);
            } else {
                // Rollback the transaction if PayPal query fails
                pg_query($connection, 'ROLLBACK');
                $error_message = pg_last_error($connection);
                echo json_encode(['success' => false, 'message' => 'Error in Query: ' . $error_message]);
            }
        } else {
            // Rollback the transaction if the main query fails
            pg_query($connection, 'ROLLBACK');
            $error_message = pg_last_error($connection);
            echo json_encode(['success' => false, 'message' => 'Error in Query: ' . $error_message]);
        }

        // Close the database connection
        pg_close($connection);
    } else {
        // Database connection failed
        $error_message = pg_last_error($connection);
        echo json_encode(['success' => false, 'message' => 'Error in Query: ' . $error_message]);
    }
} else {
    // Invalid request method
    echo json_encode(['success' => false, 'message' => 'Invalid request method']);
}
?>
