<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['id']) && isset($_POST['cantidad'])) {
    $productId = $_POST['id'];
    $newQuantity = $_POST['cantidad'];

    if (isset($_SESSION['cart_data'])) {
        // Check if the product is already in the cart
        $productIndex = array_search($productId, array_column($_SESSION['cart_data'], 'id'));

        if ($productIndex !== false) {
            // Check if the new quantity is greater than 0
            if ($newQuantity > 0) {
                // If the product is found and quantity is greater than 0, update the quantity
                $_SESSION['cart_data'][$productIndex]['cantidad'] = $newQuantity;

                // Recalculate the sum in the session
                $_SESSION['sum'] = 0;
                foreach ($_SESSION['cart_data'] as $product) {
                    $_SESSION['sum'] += $product['precio'] * $product['cantidad'];
                }

                echo "Quantity updated successfully";
            } else {
                // If the new quantity is 0, remove the product from cart_data
                unset($_SESSION['cart_data'][$productIndex]);

                // Recalculate the sum in the session
                $_SESSION['sum'] = 0;
                foreach ($_SESSION['cart_data'] as $product) {
                    $_SESSION['sum'] += $product['precio'] * $product['cantidad'];
                }

                echo "Product removed from the cart";
            }
        } else {
            // If the product is not found, you may choose to handle this case
            echo "Product not found in the cart";
        }
    } else {
        // If cart data does not exist, you may choose to handle this case
        echo "Cart is empty";
    }
} else {
    // Handle errors or invalid requests here
    echo "Invalid request";
}

?>
