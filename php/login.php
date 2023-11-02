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
            if ($username === "admin") {
                header("Location: ../src/dueno/plataforma_admin.html");
            } elseif ($username === "empleado") {
                header("Location: ../src/empleados/plataforma.html");
            }
            pg_close($connection);
            exit;
    } else {
        header("Location: ../src/login_p.html");
    }
}
?>
