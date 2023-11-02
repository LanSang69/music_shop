<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MusicStore | Iniciar sesión</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css/styles_login_register.css">
    <link rel="stylesheet" href="css/loginStyle.css">
</head>
<body>
    <a class="button" href="home.php">Volver</a>
    <div class="form_login">
        <h1>Iniciar sesión</h1>
        <form method="post">
            <?php 
                include "php/clients/login_controller.php";
            ?>
            <div class="user">
                <input type="email" placeholder="Correo electrónico" name = "email" equired>
            </div>
            <div class="user">
                <input type="password" placeholder="Contraseña" name = "password" required>
            </div>
            <input type="submit" value="Entrar" name="btn_submit">
            <div class="registrarse">
                <a href="register.php">Quiero registrarme</a>
            </div>
        </form>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script src="script.js"></script>
</body>
</html>
