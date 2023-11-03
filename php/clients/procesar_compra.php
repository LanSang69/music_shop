<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['datos'])) {
    $datos = json_decode($_POST['datos'], true);

    // Aquí puedes imprimir el array para verificar los datos
    echo '<pre>';
    print_r($datos);
    echo '</pre>';

    // Realiza las acciones necesarias con los datos, como guardarlos en una base de datos o realizar cálculos.

    // Enviar una respuesta al cliente
    echo "Agregado al carrito correctamente";
} else {
    // Manejar errores o solicitudes no válidas aquí
}
?>