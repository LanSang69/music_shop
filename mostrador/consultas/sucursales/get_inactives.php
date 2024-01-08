<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

$connection = pg_connect("host=localhost port=5432 dbname=notamala user=lansan69 password=LanSan2004*");

if ($connection) {
    $busqueda = isset($_GET['search']) ? $_GET['search'] : '';
    $page = isset($_GET['page']) ? $_GET['page'] : 1; // Change to $_POST to be consistent with your fetch request
    $limit = 10; // Adjust this to the number of items per page

    $offset = ($page - 1) * $limit;
    $sql = "SELECT id_sucursal, nombre, codigo_postal, municipio, asentamiento, tipo_asentamiento, calle, calle_numero, sucursal.id_estado, estado_sucursal.estado AS estado 
    FROM sucursal 
    JOIN estado_sucursal ON estado_sucursal.id_estado = sucursal.id_estado 
    WHERE 
        (nombre ILIKE '%$busqueda%' 
        OR municipio ILIKE '%$busqueda%' 
        OR asentamiento ILIKE '%$busqueda%'
        OR CAST(codigo_postal AS TEXT) ILIKE '%$busqueda%') 
        AND sucursal.id_estado = 2";

    $sql .= " ORDER BY id_sucursal
    LIMIT $limit OFFSET $offset";

    $result = pg_query($connection, $sql);

    while ($row = pg_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>{$row['nombre']}</td>";
        echo "<td>{$row['codigo_postal']}</td>";
        echo "<td>{$row['municipio']}</td>";
        echo "<td>{$row['asentamiento']}</td>";
        echo "<td>{$row['tipo_asentamiento']}</td>";
        echo "<td>{$row['calle']}</td>";
        echo "<td>{$row['calle_numero']}</td>";
        echo "<td>{$row['estado']}</td>";
        echo "<td><input type='radio' name='selectedItem' value='{$row['id_sucursal']}'></td>";
        echo "</tr>";
    }
    
    

    // Fetch total number of records for pagination
    $countSql = "SELECT COUNT(*) FROM sucursal JOIN estado_sucursal ON estado_sucursal.id_estado = sucursal.id_estado
      WHERE 
        (nombre ILIKE '%$busqueda%' 
        OR municipio ILIKE '%$busqueda%' 
        OR asentamiento ILIKE '%$busqueda%'
        OR CAST(codigo_postal AS TEXT) ILIKE '%$busqueda%') 
        AND sucursal.id_estado = 2";
        
    $countResult = pg_query($connection, $countSql);
    $rowCount = pg_fetch_row($countResult)[0];

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