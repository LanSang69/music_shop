<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

$connection = pg_connect("host=localhost port=5432 dbname=notamala user=lansan69 password=LanSan2004*");

if ($connection) {
    $busqueda = isset($_GET['search']) ? $_GET['search'] : '';
    
    // Check if $busqueda is empty, and if so, do not execute the query
    if (!empty($busqueda)) {
        $page = isset($_GET['page']) ? $_GET['page'] : 1; // Change to $_POST to be consistent with your fetch request
        $limit = 4; // Adjust this to the number of items per page

        $offset = ($page - 1) * $limit;
        $sql = "SELECT cliente.id_cliente AS id, nombre, p_apellido, s_apellido, rfc, colonia, correo, numero FROM cliente 
        LEFT JOIN telefono ON telefono.id_cliente = cliente.id_cliente 
        WHERE nombre ILIKE '%$busqueda%' OR p_apellido ILIKE '%$busqueda%' OR correo ILIKE '%$busqueda%'
        OR s_apellido ILIKE '%$busqueda%' OR rfc ILIKE '%$busqueda%' OR numero ILIKE '%$busqueda%'
        OR colonia ILIKE '%$busqueda%'";

        $sql .= " ORDER BY cliente.id_cliente
        LIMIT $limit OFFSET $offset";

        $result = pg_query($connection, $sql);

        while ($row = pg_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>{$row['id']}</td>";
            echo "<td>{$row['nombre']}</td>";
            echo "<td>{$row['p_apellido']}</td>";
            echo "<td>{$row['s_apellido']}</td>";
            echo "<td>{$row['correo']}</td>";
            echo "<td>{$row['rfc']}</td>";
            echo "<td>{$row['colonia']}</td>";
            echo "<td>{$row['numero']}</td>";
            echo "</tr>";
        }

        // Fetch total number of records for pagination
        $countSql = "SELECT COUNT(*) FROM cliente 
        JOIN telefono ON telefono.id_cliente = cliente.id_cliente 
        WHERE nombre ILIKE '%$busqueda%' OR p_apellido ILIKE '%$busqueda%' 
        OR s_apellido ILIKE '%$busqueda%' OR rfc ILIKE '%$busqueda%' OR numero ILIKE '%$busqueda%'
        OR colonia ILIKE '%$busqueda%'";
            
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
}
?>