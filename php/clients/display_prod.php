<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $result = pg_query($connection, "SELECT id_producto, producto.nombre AS nombre, tipo_producto, 
    marca, precio_venta, descripcion, modelo, existencia, image_url, apartado, proveedor.nombre AS proveedor, 
    categoria, marca, modelo, descripcion FROM producto JOIN proveedor ON proveedor=proveedor.id ORDER BY id_producto");


    while ($row = pg_fetch_assoc($result)) {
        if ($row["existencia"] >= 15) {
            $existenciaC = '#00FF00';
        } else {
            $existenciaC = '#FF0000';
        }

        echo '<div class="categorie">';
        echo '<div class="categorie-1">';
        echo '<h3 class="product-title" id="' . $row["id_producto"] . '">' . $row["nombre"] . '</h3>';
        echo '<div class="prices">';
        echo '<p class="precio">$' . $row["precio_venta"] . '</p>';
        echo '<br>';
        echo '<p class="existencia">Disponibles: <span class="existenciaDB" style="color:' . $existenciaC . '">' . $row["existencia"] . '</span></p>';
        echo '</div>';
        echo '<a href="#" class="agregar-carrito btn-3" data-id="' . $row["id_producto"] . '">Agregar al carrito</a>';

        echo '<ul>';        
        echo '<li class="submenu">';
        echo '<a href="#" class="btn-1">Información</a>';
        echo '<div id="carrito">';

        echo '<table id="lista-info" class="espacio">';
        echo '<thead>';
        echo '<tr>';
        echo '<th>Descripción: <p class="existenciaT">' . $row["descripcion"] .'</th>';
        echo '</tr>';
        echo '<tr>';
        echo '<th>Marca: <p class="existenciaT">' .$row["marca"] .'</th>';
        echo '</tr>';
        echo '<tr>';
        echo '<th>Modelo: <p class="existenciaT">' .$row["modelo"] .'</th>';
        echo '</tr>';
        echo '</thead>';
        echo '</table>';

        echo '</div>';
        echo '</li>';
        echo '</ul>';
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