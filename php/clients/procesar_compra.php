<?php

session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['datos'])) {
    $datos = json_decode($_POST['datos'], true);

    if (isset($_SESSION['cart_data'])) {
        // Check if the product with the same ID already exists in the cart
        $existingProductIndex = array_search($datos['id'], array_column($_SESSION['cart_data'], 'id'));

        if ($existingProductIndex !== false) {
            // Product already exists, you can update quantity or do nothing
            echo "El producto ya existe en el carrito";
        } else {
            // Product does not exist, add it to the cart
            $_SESSION['cart_data'][] = $datos;
            echo "Agregado al carrito correctamente";
        }
    } else {
        // If the cart data does not exist, create a new array with the product data
        $_SESSION['cart_data'] = array($datos);
        echo "Agregado al carrito correctamente";
    }

    // Perform any necessary actions with the data, such as saving it to a database or performing calculations.
} else {
    // Handle errors or invalid requests here
}

?>
