<?// You can execute your SQL queries here.
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
?>
