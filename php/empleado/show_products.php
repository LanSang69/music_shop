<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $result = pg_query($connection, "SELECT id_producto, producto.nombre AS nombre, tipo_producto, marca, precio_venta, descripcion, modelo, existencia, apartado, proveedor.nombre AS proveedor, categoria FROM producto JOIN proveedor ON proveedor=proveedor.id;
    ");

    // Display table data with styling
    echo '<table style="border-collapse: collapse;">'; // Add border-collapse CSS
    echo '<tr>';
    echo '<th style="border: 1px solid black; padding: 5px;">Id</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Nombre</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Tipo</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Marca</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Precio</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Descripción</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Modelo</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Existencia</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Apartado</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Proveedor</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Categoría</th>';

    echo '</tr>';

    while ($row = pg_fetch_assoc($result)) {
        echo '<tr>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['id_proucto'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['nombre'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['tipo_producto'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['marca'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['precio_venta'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['descripcion'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['modelo'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['existencia'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['apartado'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['proveedor'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['categoria'] . '</td>';
        echo '</tr>';
    }

    echo '</table>';

    // Remember to handle query execution and results properly.
	pg_close($connection);

} else {
    echo "Failed to connect to PostgreSQL.";
}
?>