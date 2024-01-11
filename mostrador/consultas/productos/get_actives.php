<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

$connection = pg_connect("host=localhost port=5432 dbname=notamala user=lansan69 password=LanSan2004*");

if ($connection) {
    $sucursal = isset($_GET['sucursal']) ? $_GET['sucursal'] : 'todas';
    $searchTerm = isset($_GET['search']) ? $_GET['search'] : '';
    $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
    $limit = 10;  // Default limit, adjust this to the number of items per page

    $offset = ($page - 1) * $limit;

    $sql = "SELECT id_producto, producto.nombre AS nombre, tipo_producto, existencia, precio_venta, marca, 
        modelo, producto.id_sucursal AS id_sucursal, sucursal.municipio AS sucursal 
        FROM producto 
        JOIN sucursal ON producto.id_sucursal = sucursal.id_sucursal  
        WHERE (producto.nombre ILIKE '%$searchTerm%' OR tipo_producto ILIKE '%$searchTerm%')
        AND estado_venta = 'en venta'";

    if ($sucursal !== 'todas') {
        $sql .= " AND producto.id_sucursal = '$sucursal'";
    }

    $sql .= " ORDER BY id_producto LIMIT $limit OFFSET $offset";

    $result = pg_query($connection, $sql);

    while ($row = pg_fetch_assoc($result)) {
        // Output the data as needed, for example, append it as HTML
        echo "<tr>";
        echo "<td>{$row['nombre']}</td>";
        echo "<td>{$row['tipo_producto']}</td>";
        echo "<td>{$row['existencia']}</td>";
        echo "<td>{$row['precio_venta']}</td>";
        echo "<td>{$row['marca']}</td>";
        echo "<td>{$row['modelo']}</td>";
        echo "<td>{$row['sucursal']}</td>";
        echo "<td><input type='radio' name='selectedItem' value='{$row['id_producto']}'></td>";
        echo "</tr>";
    }

    // Fetch total number of records for pagination
    $countSql = "SELECT COUNT(*) FROM producto WHERE (nombre ILIKE '%$searchTerm%' OR tipo_producto ILIKE '%$searchTerm%')";

    if ($sucursal !== 'todas') {
        $countSql .= " AND id_sucursal = '$sucursal'";
    }

    $countResult = pg_query($connection, $countSql);
    $rowCount = pg_fetch_row($countResult)[0];

    // Set the limit to the total number of records if it is less than the default limit
    $limit = min($rowCount, $limit);

    // Calculate total pages
    $totalPages = ceil($rowCount / $limit);

    // Generate pagination links
    echo "<div class='pagination'>";
    for ($i = 1; $i <= $totalPages; $i++) {
        $activeClass = ($i == $page) ? 'active' : '';
        echo "<a class='page-link $activeClass' href='javascript:void(0);' onclick='changePage($i)'>$i</a>";
    }
    echo "</div>";
}
?>
