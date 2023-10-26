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
            // Redirect to the admin page
            header("Location: ../src/dueno/plataforma_admin.html");
            exit; // Prevent further execution of the script
        } elseif ($username === "empleado") {
            // Redirect to the employee page
            header("Location: ../src/empleados/plataforma.html");
            exit; // Prevent further execution of the script
        } else {
            $response = array(
                'success' => false,
                'message' => 'Credenciales erróneas'
            );
        }
        pg_close($connection);
    } else {
        $response = array(
            'success' => false,
            'message' => 'Credenciales erróneas'
        );
    }

    header('Content-Type: application/json');
    echo json_encode($response);
}
?>
