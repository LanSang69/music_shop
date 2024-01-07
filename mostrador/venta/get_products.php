<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

$connection = pg_connect("host=localhost port=5432 dbname=notamala user=lansan69 password=LanSan2004*");

if ($connection) {
    $query = "SELECT id_producto, nombre, precio_venta FROM producto";
    $result = pg_query($connection, $query);

    $products = [];
    while ($row = pg_fetch_assoc($result)) {
        $products[] = [
            'id' => $row['id_producto'],
            'nombre' => $row['nombre'],
            'precioUnitario' => $row['precio_venta'],
        ];
    }

    // Return the products as JSON
    echo json_encode($products);
}
?>
