<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['id']) && isset($_POST['quantity'])) {
    $productId = $_POST['id'];
    $newQuantity = $_POST['quantity'];

    if (isset($_SESSION['cart_data'])) {
        // Check if the product is already in the cart
        $productIndex = array_search($productId, array_column($_SESSION['cart_data'], 'id'));

        if ($productIndex !== false) {
            // If the product is found, update the quantity
            $_SESSION['cart_data'][$productIndex]['cantidad'] = $newQuantity;
            echo "Quantity updated successfully";
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
