<!DOCTYPE html>
<html>
<head>
    <title>Database Query Page</title>
    <link rel="stylesheet" href="../../css/show_table.css">
</head>
<body>
    <a class="button" href="#" id="volver">Volver</a>


    <h1 class="consult">Realiza tu consulta</h1>
    <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <input name="sql_query" rows="4" cols="50"></input><br>
        <input type="submit" value="Run Query" class="button_s">
    </form>

    <?php
    $host = "localhost";
    $port = "5432";
    $dbname = "music_shop";
    $user = "lansan69";
    $password = "LanSan2004*";

    $connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

    if ($connection) {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Get the user's SQL query from the form
            $sql_query = $_POST["sql_query"];

            // Execute the SQL query
            $result = pg_query($connection, $sql_query);

            if ($result === false) {
                echo "Error executing query: " . pg_last_error();
            } else {
                // Display the results as an HTML table
                echo '<h2>Query Results</h2>';
                echo '<table style="border-collapse: collapse;">';
                echo '<tr>';

                for ($i = 0; $i < pg_num_fields($result); $i++) {
                    $field_name = pg_field_name($result, $i);
                    echo '<th style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $field_name . '</th>';
                }

                echo '</tr>';

                while ($row = pg_fetch_assoc($result)) {
                    echo '<tr>';
                    foreach ($row as $value) {
                        echo '<td style="border: 1px solid black; padding: 5px; font-size: 20px;">' . $value . '</td>';
                    }
                    echo '</tr>';
                }
                echo '</table>';
            }
        }
        pg_close($connection);
    } else {
        echo "Failed to connect to PostgreSQL.";
    }
    ?>

<script>
        // Agregar un evento click al enlace "Volver"
        document.getElementById('volver').addEventListener('click', function (event) {
            event.preventDefault(); // Evitar la acción predeterminada del enlace
            window.history.back(); // Retroceder a la página anterior
        });
    </script>

</body>
</html>
