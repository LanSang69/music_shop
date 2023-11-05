<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['itemId'])) {
    $itemId = $_POST['itemId'];

    if (isset($_SESSION['cart_data'])) {
        // Find and remove the item from the cart_data array
        foreach ($_SESSION['cart_data'] as $key => $item) {
            if (isset($item['id']) && $item['id'] === $itemId) {
                unset($_SESSION['cart_data'][$key]);
                echo 'Elemento eliminado del carrito correctamente';
                break; // Exit the loop after the first match is removed
            }
        }

        // Re-index the array if necessary
        $_SESSION['cart_data'] = array_values($_SESSION['cart_data']);
    } else {
        echo 'El carrito está vacío.';
    }
} else {
    // Handle errors or invalid requests here
}
?>
