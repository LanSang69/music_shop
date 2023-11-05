<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $result = pg_query($connection, "SELECT * FROM sucursal");

    // Display table data with styling
    echo '<table style="border-collapse: collapse;">'; // Add border-collapse CSS
    echo '<tr>';
    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">id</th>';
    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">Nombre</th>';
    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">Colonia</th>';
    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">Ciudad</th>';
    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">Código Postal</th>';
    echo '</tr>';

    while ($row = pg_fetch_assoc($result)) {
        echo '<tr>';
        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $row['id'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $row['nombre'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $row['colonia'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $row['ciudad'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $row['codigo_postal'] . '</td>';
        echo '</tr>';
    }

    echo '</table>';

    // Remember to handle query execution and results properly.
	pg_close($connection);

} else {
    echo "Failed to connect to PostgreSQL.";
}
?>