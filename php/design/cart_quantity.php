<?php
session_start();

if (isset($_POST['action'])) {
    $action = $_POST['action'];

    if ($action === 'increment') {
        $_SESSION['cantidad_comprada']++;
        $_SESSION['precio_compra'] *= $_SESSION['cantidad_comprada'];

    } elseif ($action === 'decrement' && $_SESSION['cantidad'] > 0) {
        $_SESSION['cantidad_comprada']--;
        $_SESSION['precio_compra'] *= $_SESSION['cantidad_comprada'];
    }

    echo $_SESSION['cantidad_comprada'];
    echo $_SESSION['precio_compra'];
}
?>
