<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MusicStore | Registro</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css//styles_login_register.css">
    <link rel="stylesheet" href="css/loginStyle.css">
</head>
<body>
    <a class="button" href="home.php">Volver</a>
    <a class="button" href="login.php">Log in</a>
    <div class="form_registro">
        <h1>Registro</h1>
        <form id="myForm" method="post" action="">
            
            <?php 
                include "php/clients/register_controller.php";
            ?>

            <div class="user">
                <input type="text" name="nombre" placeholder="Nombre" required>
            </div>
	        <div class="user">
                <input type="text" name="apellido1" placeholder="Primer apellido">
            </div>
            <div class="user">
                <input type="text" name="apellido2" placeholder="Segundo apellido">
            </div>
            <div class="user">
                <input type="email" name="correo" placeholder="Correo" required>
            </div>
            <div class="user">
                <input type="password" name="password" placeholder="Contraseña" required>
            </div>
            <input type="submit" value="Registrarme" name="btn_submit">
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
</body>
</html>
