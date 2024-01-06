<?php
$connection = pg_connect("host=localhost port=5432 dbname=notamala user=lansan69 password=LanSan2004*");

if ($connection) {
    $sucursal = isset($_GET['sucursal']) ? $_GET['sucursal'] : 'todas';
    $busqueda = isset($_GET['search']) ? $_GET['search'] : '';
    $page = isset($_GET['page']) ? $_GET['page'] : 1; // Change to $_POST to be consistent with your fetch request
    $limit = 10; // Adjust this to the number of items per page

    $offset = ($page - 1) * $limit;
    $sql = "SELECT empleado.id_empleado as id, empleado.nombre AS nombre, p_apellido, s_apellido, rfc, 
        puesto.nombre AS puesto_nombre, sucursal.nombre AS nombre_sucursal FROM empleado 
        JOIN puesto ON empleado.id_puesto = puesto.id_puesto JOIN sucursal ON sucursal.id_sucursal = empleado.id_sucursal
        WHERE 
        (empleado.nombre ILIKE '%$busqueda%' OR
        p_apellido ILIKE '%$busqueda%' OR
        s_apellido ILIKE '%$busqueda%' OR
        rfc ILIKE '%$busqueda%' OR
        puesto.nombre ILIKE '%$busqueda%' OR
        sucursal.nombre ILIKE '%$busqueda%') AND
        (empleado.id_estado = 1)";

    if ($sucursal !== 'todas') {
        $sql .= " AND empleado.id_sucursal = '$sucursal'";
    }

    $sql .= " ORDER BY id
    LIMIT $limit OFFSET $offset";

    $result = pg_query($connection, $sql);

    while ($row = pg_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>{$row['nombre']}</td>";
        echo "<td>{$row['p_apellido']}</td>";
        echo "<td>{$row['s_apellido']}</td>";
        echo "<td>{$row['rfc']}</td>";
        echo "<td>{$row['puesto_nombre']}</td>";
        echo "<td>{$row['nombre_sucursal']}</td>";
        echo "<td><input type='radio' name='selectedItem' value='{$row['id']}'></td>";
        echo "</tr>";
    }

    // Fetch total number of records for pagination
    $countSql = "SELECT COUNT(*) FROM empleado 
        JOIN puesto ON empleado.id_puesto = puesto.id_puesto JOIN sucursal ON sucursal.id_sucursal = empleado.id_sucursal
        WHERE 
        (empleado.nombre ILIKE '%$busqueda%' OR
        p_apellido ILIKE '%$busqueda%' OR
        s_apellido ILIKE '%$busqueda%' OR
        rfc ILIKE '%$busqueda%' OR
        puesto.nombre ILIKE '%$busqueda%' OR
        sucursal.nombre ILIKE '%$busqueda%') AND
        empleado.id_estado = 1";
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
