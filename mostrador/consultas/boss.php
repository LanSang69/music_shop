<?php
    session_start();
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de empleados</title>
    <style>
    .button-container {
        display: flex;
        flex-wrap: wrap;
        flex-direction: column;
        gap: 10px;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
    }

    .button {
        padding: 10px 20px;
        background-color: #3498db;
        text-decoration: none;
        color: #fff;
        border: none;
        cursor: pointer;
    }

    .button_logout {
        align-items: left;
        position: fixed;
        margin: 10px;
        top: 20px;
        padding: 10px 20px;
        border-radius: 10px;
        text-decoration: none;
        background-color: #3498db;
        color: #fff;
        border: none;
        cursor: pointer;
    }

    .button_logout-container {
        align-items: left;
        margin: 20px;
        ;
    }
    </style>
</head>

<body>
    <div class="button_logout-container">
        <a class="button_logout" href="../login.php">Log out</a>
    </div>
    <div class="button-container">
        <div>
            <h1>BIENVENIDO
                <?php
                    echo $_SESSION["nombre"];
                ?>
            </h1>
        </div>
        <div>
            <a href="productos/consult_product.php" class="button">Productos</a>
            <a href="empleados/consult_employee.php" class="button">Empleados</a>
            <a href="" class="button">Proveedores</a>
        </div>
    </div>
</body>

</html>