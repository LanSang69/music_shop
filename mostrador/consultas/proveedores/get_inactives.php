<?php
$connection = pg_connect("host=localhost port=5432 dbname=notamala user=lansan69 password=LanSan2004*");

if ($connection) {
    $sucursal = isset($_GET['sucursal']) ? $_GET['sucursal'] : 'todas';
    $busqueda = isset($_GET['search']) ? $_GET['search'] : '';
    $page = isset($_GET['page']) ? $_GET['page'] : 1; // Change to $_POST to be consistent with your fetch request
    $limit = 10; // Adjust this to the number of items per page

    $offset = ($page - 1) * $limit;
    $sql = "SELECT * FROM proveedor WHERE (nombre ILIKE '%$busqueda%' 
    OR nombre_contacto ILIKE '%$busqueda%' OR primer_apellido ILIKE '%$busqueda%' 
    OR segundo_apellido ILIKE '%$busqueda%') AND estado_proveedor = 'Inactivo'";

    if ($sucursal !== 'todas') {
        $sql .= " AND empleado.id_sucursal = '$sucursal'";
    }

    $sql .= " ORDER BY id_proveedor
    LIMIT $limit OFFSET $offset";

    $result = pg_query($connection, $sql);

    while ($row = pg_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>{$row['nombre']}</td>";
        echo "<td>{$row['rfc']}</td>";
        echo "<td>{$row['razon_social']}</td>";
        echo "<td>{$row['colonia']}</td>";
        echo "<td>{$row['ciudad']}</td>";
        echo "<td>{$row['codigo_postal']}</td>";
        echo "<td>{$row['nombre_contacto']}</td>";
        echo "<td>{$row['primer_apellido']}</td>";
        echo "<td>{$row['segundo_apellido']}</td>";
        echo "<td>{$row['correo']}</td>";
        echo "<td><input type='radio' name='selectedItem' value='{$row['id_proveedor']}'></td>";
        echo "</tr>";
    }
    

    // Fetch total number of records for pagination
    $countSql = "SELECT COUNT(*) FROM proveedor 
        WHERE (nombre ILIKE '%$busqueda%' 
        OR nombre_contacto ILIKE '%$busqueda%' OR primer_apellido ILIKE '%$busqueda%' 
        OR segundo_apellido ILIKE '%$busqueda%') AND estado_proveedor = 'Activo'";
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
