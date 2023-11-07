<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MusicStore | Agregar Venta</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="../../css/styles_login_register.css">
    <link rel="stylesheet" href="../../css/loginStyle.css">
</head>
<body>
    <a class="button" href="add_cliente.html">Agregar datos del cliente</a>
    <a class="button" href="plataforma.html">Volver</a>
    <a class="button" href="../login_p.html">Log out</a>
    <div class="form_registro">
        <h1>Venta</h1>

        <form id="myForm" method="post">
            <?php 
                include "../../php/empleado/add_v.php";
            ?>

            <div class="user">
                <input type="text" name="id_cliente" placeholder="Id del cliente" required>
            </div>
            <div class="user">
            <select name="pago" required>
                <option value="">Seleccionar tipo de pago</option>
                <option value="Efectivo">Efectivo</option>
                <option value="Tarjeta de crédito">Tarjeta de débito</option>
                <option value="Tarjeta de crédito">Tarjeta de crédito</option>
            </select>
            </div>
            <div class="user">
                <input type="text" name="sucursal" placeholder="Sucursal" required>
            </div>
            <div class="user">
                <input type="text" name="empleado" placeholder="Empleado" required>
            </div>
            <input type="submit" value="Registrar">
            <div class="tablas">
                <a href="show_products.html" class="link__tabla">Productos</a>
                <a href="show_pago.html" class="link__tabla">Tipo de pago</a>
                <a href="show_cliente.html" class="link__tabla">Clientes</a>
                <a href="../dueno/show_sucursal.html" class="link__tabla">sucursales</a>
                <a href="consult.php" class="link__tabla">Hacer una consulta</a>
            </div>
        </form>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
</body>
</html>
