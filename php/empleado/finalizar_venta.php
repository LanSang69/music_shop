<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['totalPrice'])) {
    $host = "localhost";
    $port = "5432";  // Default PostgreSQL port
    $dbname = "music_shop";
    $user = "lansan69";
    $password = "LanSan2004*";

    $connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

    if ($connection) {
        $lastIdQuery = "SELECT id FROM venta ORDER BY id DESC LIMIT 1"; // Query to obtain the last sale
        $lastIdResult = pg_query($connection, $lastIdQuery); // Execute the query with your connection
        $lastIdData = pg_fetch_assoc($lastIdResult); // Store the response

        $id_venta = $lastIdData['id'];
        $totalPrice = $_POST['totalPrice'];

        $query = "UPDATE venta SET monto_total = '$totalPrice' WHERE id = '$id_venta'";
        $result = pg_query($connection, $query);

        if ($result) {
            echo "Total price updated successfully";
        } else {
            echo "Error updating total price: " . pg_last_error($connection);
        }

        // Cerrar la cnexión cuando se complete el query
        pg_close($connection);
    } else {
        echo "Failed to connect to PostgreSQL.";
    }
} else {
    echo "Invalid request.";
}
?>
