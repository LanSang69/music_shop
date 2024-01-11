<?php
session_start();

$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "notamala";
$user = "lansan69";
$passwordDB = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$passwordDB");

if ($connection) {

    if(!empty($_POST["btn_submit"])){
        $usuario=$_POST["email"];
        $password=$_POST["password"];
        $psql = pg_query($connection, "SELECT * FROM cliente WHERE correo='$usuario' AND password='$password' ");
        $datos = pg_fetch_assoc($psql);

        if ($datos) {
            $_SESSION["id_cliente"] = $datos["id_cliente"];
            $_SESSION["nombre"] = $datos["nombre"];
            $_SESSION["correo"] = $datos["correo"];
            header("Location: home_log.php");
        } else {
            echo "<div class='alert alert-danger'>Credenciales erróneas</div>";
        }
        
    }else{

    }
}   
?>