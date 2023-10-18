<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    echo "Connected to PostgreSQL successfully!<br><br>";

    $result = pg_query($connection, "SELECT * FROM cliente");

    // Display table data with styling
    echo '<table style="border-collapse: collapse;">'; // Add border-collapse CSS
    echo '<tr>';
    echo '<th style="border: 1px solid black; padding: 5px;">Nombre</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Apellidos</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">RFC</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Domicilio fiscal</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Correo</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Celular</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Teléfono</th>';

    echo '</tr>';

    while ($row = pg_fetch_assoc($result)) {
        echo '<tr>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['nombre'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['apellido'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['rfc'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['domicilio_f'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['correo'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['celular'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['telefono'] . '</td>';
        echo '</tr>';
    }

    echo '</table>';

    // Remember to handle query execution and results properly.
	pg_close($connection);

} else {
    echo "Failed to connect to PostgreSQL.";
}
?>

