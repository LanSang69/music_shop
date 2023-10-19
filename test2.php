<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    echo "Connected to PostgreSQL successfully!<br><br>";

    $result = pg_query($connection, "SELECT * FROM empleados");

    // Display table data with styling
    echo '<table style="border-collapse: collapse;">'; // Add border-collapse CSS
    echo '<tr>';
    echo '<th style="border: 1px solid black; padding: 5px;">Nombre</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Apellidos</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">RFC</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Puesto</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Horario</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Id de Sucursal</th>';

    echo '</tr>';

    while ($row = pg_fetch_assoc($result)) {
        echo '<tr>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['nombre'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['apellido'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['rfc'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['puesto'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['horario'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['sucursal'] . '</td>';
        echo '</tr>';
    }

    echo '</table>';

    // Remember to handle query execution and results properly.
	pg_close($connection);

} else {
    echo "Failed to connect to PostgreSQL.";
}
?>