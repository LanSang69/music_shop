<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_SESSION['cart_data'])) {
        $_SESSION['cart_data'] = array(); // Limpia el array en la sesión
        echo 'Carrito limpiado correctamente';
    } else {
        echo 'El carrito ya está vacío.';
    }
} else {
    // Agregar eventos o acciones en caso de error
}
?>
