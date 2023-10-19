<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener el usuario y contraseña del formulario
    $username = $_POST["usuario"];
    $password = $_POST["password"];

    // Parámetros de conexión a la base de datos
    $host = "localhost";
    $port = "5432";
    $dbname = "music_shop";

    // Intentar conectar a la base de datos
    $connection = pg_connect("host=$host port=$port dbname=$dbname user=$username password=$password");

    if ($connection) {
        if ($result) {
            $row = pg_fetch_assoc($result);
            $userType = $row["user_type"];
            
            // Redireccionar según el tipo de usuario
            if ($userType === "admin") {
                header("Location: dueño/plataforma_admin.html");
            } elseif ($userType === "empleado") {
                header("Location: empleados/plataforma.html");
            }
            
            pg_close($connection);
            exit;
        } else {
            echo "Error en la consulta SQL: " . pg_last_error();
        }
    } else {
        echo "Error al conectar a PostgreSQL.";
    }
}

?>
