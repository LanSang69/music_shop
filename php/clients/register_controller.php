<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) 
{
    if(!empty($_POST["btn_submit"])){
        $nombre = $_POST['nombre'];
        $apellido1 = $_POST['apellido1'];
        $apellido2 = $_POST['apellido2'];
        $correo = $_POST['correo'];
        $password = $_POST['password'];

        $query = "INSERT INTO cliente (nombre, p_apellido, s_apellido, correo, password)
                VALUES ('$nombre', '$apellido1', '$apellido2', '$correo', '$password')";
        $result = pg_query($connection, $query);

        if ($result) {
            echo "<div class='alert alert-success'>Registrado correctamente</div>"; 
        } else {
            echo "<div class='alert alert-danger'>Error al registrar</div>". pg_last_error();
        }
    }
} 

else {
    echo "<div class='alert alert-danger'>Error al conectar</div>";
}
?>