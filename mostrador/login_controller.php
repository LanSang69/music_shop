<?php
session_start();

$host = "localhost";
$port = "5432";
$dbname = "notamala";
$user = "lansan69";
$passwordDB = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$passwordDB");

if ($connection) {
    if (!empty($_POST["btn_submit"])) {
        $usuario = pg_escape_string($_POST["rfc"]);  // Sanitize user input
        $password = pg_escape_string($_POST["password"]);  // Sanitize user input

        $psql = pg_query($connection, "SELECT * FROM empleado WHERE rfc='$usuario' AND password='$password' ");

        if (!$psql) {
            die("Error in SQL query: " . pg_last_error());
        }

        $datos = pg_fetch_assoc($psql);

        if ($datos) {
            $id_emp = $datos["id_empleado"];
            $_SESSION["id"] = $datos["id_empleado"];
            $_SESSION["nombre"] = $datos["nombre"];
            $_SESSION["correo"] = $datos["correo"];

            $permisos = pg_query($connection, "SELECT id_puesto FROM empleado WHERE id_empleado = '$id_emp'");

            if (!$permisos) {
                die("Error in SQL query: " . pg_last_error());
            }

            $permisos_data = pg_fetch_assoc($permisos);

            if ($permisos_data) {
                $id_puesto = $permisos_data["id_puesto"];

                if ($id_puesto == '1') {
                    header("Location: consultas/boss.php");
                    exit();
                } elseif ($id_puesto == '2') {
                    header("Location: consultas/gerente.php");
                    exit();
                } else {
                    header("Location: consultas/ventas.php");
                    exit();
                }
            } else {
                echo "<div class='alert alert-danger'>Permiso no encontrado</div>";
            }

        } else {
            echo "<div class='alert alert-danger'>Credenciales erróneas</div>";
        }
    } else {
        // Handle the case when the form is not submitted
    }
}
?>
