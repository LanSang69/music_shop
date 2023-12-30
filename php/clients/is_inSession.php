<?php

session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['datos'])) {
    $datos = json_decode($_POST['datos'], true);

    if (!isset($_SESSION['cart_data'])) {
        $_SESSION['cart_data'] = array($datos);
    }
    // Envía una respuesta al cliente
    echo "Agregado al carrito correctamente";
} else {
    // Manejar errores o solicitudes no válidas aquí
}

?>