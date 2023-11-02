<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $result = pg_query($connection, "SELECT id_producto, producto.nombre AS nombre, tipo_producto, marca, precio_venta, descripcion, modelo, existencia, image_url, apartado, proveedor.nombre AS proveedor, categoria FROM producto JOIN proveedor ON proveedor=proveedor.id");


    while ($row = pg_fetch_assoc($result)) {
        echo '<div class="categorie">';
        echo '<div class="categorie-1">';
        echo '<h3 class="product-title">' . $row["nombre"] . '</h3>';
        echo '<div class="prices">';
        echo '<p class="precio">$' . $row["precio_venta"] . '</p>';
        echo '</div>';
        echo '<a href="#" class="agregar-carrito btn-3" data-id="' . $row["id_producto"] . '">Agregar al carrito</a>';
        echo '</div>';
        echo '<div class="categorie-img">';
        echo '<img src="' . $row["image_url"] . '" alt="' . $row["product_name"] . '">';
        echo '</div>';
        echo '</div>';
    }

	pg_close($connection);

} else {
    echo "Failed to connect to PostgreSQL.";
}
?>