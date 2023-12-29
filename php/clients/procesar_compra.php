<?php

session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['datos'])) {
    $datos = json_decode($_POST['datos'], true);

    if (isset($_SESSION['cart_data'])) {
        // Si los datos del carrito ya existen en la sesión, agrega los nuevos datos del producto
        $_SESSION['cart_data'][] = $datos;
    } else {
        // Si los datos del carrito no existen, crea un nuevo arreglo con los datos del producto
        $_SESSION['cart_data'] = array($datos);
    }

    // Realiza las acciones necesarias con los datos, como guardarlos en una base de datos o realizar cálculos.

    // Envía una respuesta al cliente
    echo "Agregado al carrito correctamente";
} else {
    // Manejar errores o solicitudes no válidas aquí
}

?>