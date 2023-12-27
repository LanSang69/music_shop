<?php
session_start();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <Meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MusicStore | La música es tu mejor compañía</title>
    <link rel="stylesheet" href="../../css/styles_comprar.css">
</head>
<body>

    <a class="button" href="../../home_log.php">Volver</a>

    <section class="promos container" id="lista-1">
        <h2 class="title_prod">Productos en el carrito</h2>

        <div class="categories">

            <?php
            $_SESSION['sum'] = 0;

            if (isset($_SESSION['cart_data'])) {

                foreach ($_SESSION['cart_data'] as $producto) {
                    $_SESSION['sum'] += $producto['precio'] * $producto['cantidad'];

                    echo ' <div class="categorie">';
                    echo '<div class="categorie-1" id="' . $producto['id'] . '">';
                    echo '<h3>' . $producto['titulo'] . '</h3>';

                    echo '<img src="' . $producto['imagen'] . '" class="categorie-img" alt="">';

                    echo '<p id="precioProducto"> Precio: $<span class="precio" data-id="' . $producto['id'] . '">' . $producto['precio'] . '</span></p>';
                    echo '<div class="alter_cantidad">';
                    echo '<img src="../../images/minus.png" class="icons_buy menos" data-id="' . $producto['id'] . '">';
                    echo '<p class="existencia"> Cantidad: <span class="cantidad" data-id="' . $producto['id'] . '">' . $producto['cantidad'] . '</span></p>';
                    echo '<img src="../../images/add.png" class="icons_buy mas" data-id="' . $producto['id'] . '">';
                    echo '</div>';
                    echo '</div>';
                    echo '</div>';
                }
            } else {
                echo 'El carrito está vacío.';
            }
            ?>

            <div class="categorie">
                <p class="existencia p_total"> Total:<br>$<span class="totalPrice" id="total"> <?php echo number_format($_SESSION['sum'], 2, '.', ',') ?> </span></p>
            </div>

            <div class="categorie">
                <a href="#" class="agregar-carrito btn-3" data-id="1">Proceder con la compra</a>
            </div>

        </div>
    </section>

    <script src="../../js/cantidad.js"></script>
</body>
</html>
