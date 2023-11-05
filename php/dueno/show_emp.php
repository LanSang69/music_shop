<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $result = pg_query($connection, "SELECT empleado.id AS id, empleado.nombre AS nombre, p_apellido, s_apellido, rfc, 
    puesto.nombre AS puesto_nombre, sucursal.nombre AS nombre_sucursal FROM empleado 
    JOIN puesto ON empleado.puesto = puesto.id JOIN sucursal ON sucursal.id = empleado.sucursal");

    // Display table data with styling
    echo '<table style="border-collapse: collapse;">'; // Add border-collapse CSS
    echo '<tr>';
    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">Id</th>';
    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">Nombre</th>';
    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">Primer apellido</th>';
    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">Segundo apellido</th>';
    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">RFC</th>';
    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">Puesto</th>';
    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">Sucursal</th>';

    echo '</tr>';

    while ($row = pg_fetch_assoc($result)) {
        echo '<tr>';
        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $row['id'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $row['nombre'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $row['p_apellido'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $row['s_apellido'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $row['rfc'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $row['puesto_nombre'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $row['nombre_sucursal'] . '</td>';
        echo '</tr>';
    }

    echo '</table>';

    // Remember to handle query execution and results properly.
	pg_close($connection);

} else {
    echo "Failed to connect to PostgreSQL.";
}
?>