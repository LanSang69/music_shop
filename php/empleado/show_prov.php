<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $result = pg_query($connection, "SELECT id, nombre, rfc, razon_social, CONCAT(calle, ' ', colonia, ' ', ciudad, ' ', codigo_postal) AS domicilio, CONCAT(primer_apellido, ' ', segundo_apellido, ' ', nombre_contacto) AS contacto, telefono_oficina, telefono_celular FROM proveedor");

    // Display table data with styling
    echo '<table style="border-collapse: collapse;">'; // Add border-collapse CSS
    echo '<tr>';
    echo '<th style="border: 1px solid black; padding: 5px;">Id</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Nombre</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">RFC</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Razón social</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Domicilio</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Contacto</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Telefono oficina</th>';
    echo '<th style="border: 1px solid black; padding: 5px;">Celular</th>';

    echo '</tr>';

    while ($row = pg_fetch_assoc($result)) {
        echo '<tr>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['id'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['nombre'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['rfc'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['razon_social'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['domicilio'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['contacto'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['telefono_oficina'] . '</td>';
        echo '<td style="border: 1px solid black; padding: 5px;">' . $row['telefono_celular'] . '</td>';
        echo '</tr>';
    }

    echo '</table>';

    // Remember to handle query execution and results properly.
	pg_close($connection);

} else {
    echo "Failed to connect to PostgreSQL.";
}
?>