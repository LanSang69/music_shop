<?php
session_start();

if (isset($_SESSION['cart_data'])) {
    $cartCount = count($_SESSION['cart_data']);
} else {
    $cartCount = 0;
}

echo $cartCount;
?>
