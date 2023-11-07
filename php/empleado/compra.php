<?php
$host = "localhost";
$port = "5432";  
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $lastIdQuery = "SELECT id FROM venta ORDER BY id DESC LIMIT 1"; //Query para obtener la venta
        $lastIdResult = pg_query($connection, $lastIdQuery); //Hago el query con mi conexión
        $lastIdData = pg_fetch_assoc($lastIdResult); //Almaceno la respuesta

        $id_venta = $lastIdData['id'];
        $producto = $_POST['id_producto'];
        $cantidad = $_POST['cantidad'];

        $query = "INSERT INTO venta_producto (id_venta, id_producto, cantidad) VALUES ('$id_venta', '$producto', '$cantidad')";
        $result = pg_query($connection, $query);

        $cantidadQuery = "SELECT existencia FROM producto WHERE id_producto = '$producto'"; //Query para obtener a cantidad previa
        $cantidadResult = pg_query($connection, $cantidadQuery); //Hago el query con mi conexión
        $cantidadData = pg_fetch_assoc($cantidadResult); //Almaceno la respuesta

        $cantidadProd = $cantidadData['existencia'];
        $cantidadNueva = $cantidadProd - $cantidad;
        $query2 = "UPDATE producto SET existencia = '$cantidadNueva' WHERE id_producto = '$producto'";
        $result2 = pg_query($connection, $query2);

        if ($result && $result2) {
            // Product added successfully, calculate total price
            $totalQuery = "SELECT SUM(precio_venta*cantidad) AS total_price FROM venta_producto JOIN producto ON venta_producto.id_producto = producto.id_producto WHERE id_venta = '$id_venta'";
            $totalResult = pg_query($connection, $totalQuery);
            $totalData = pg_fetch_assoc($totalResult);
            $totalPrice = $totalData['total_price'];

            // Return the total price to the client
            echo json_encode(['success' => true, 'totalPrice' => $totalPrice]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Error al agregar el producto']);
        }
    }
} else {
    echo json_encode(['success' => false, 'message' => 'Error de conexión a la base de datos']);
}
?>
