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

                        if (isset($_SESSION['cart_data'])) {
                            foreach ($_SESSION['cart_data'] as $producto) {
                                echo ' <div class="categorie">';
                                echo '<div class="categorie-1" id="' . $producto['id'] . '">';
                                echo '<h3>' . $producto['titulo'] . '</h3>';

                                echo '<img src="' .$producto['imagen'] . '" class="categorie-img" alt="">';

                                echo '<p id="precioProducto"> Precio: <span class="cantidad">' . $producto['precio'] . '</span></p>';
                                echo '<div class="alter_cantidad">';
                                echo '<img src="../../images/minus.png" class="icons_buy" id="menos">';
                                echo '<p class="existencia"> Cantidad: <span class="cantidad" id="cantidadProducto">  1 </span></p>';
                                echo '<img src="../../images/add.png" class="icons_buy" id="mas">';
                                echo '</div>';
                                echo '</div>';
                                echo '</div>';
                                
                            }
                        } else {
                        echo 'El carrito está vacío.';
                        }
                    ?>

                    <div class="categorie">
                        <a href="#" class="agregar-carrito btn-1" id="precioTotal">Calcular total</a>
                    </div>

                    <div class="categorie">
                        <p class="existencia total"> Total: <span class="totalPrice" id="total"> 0 </span></p>
                    </div>

                    <div class="categorie">
                        <a href="#" class="agregar-carrito btn-3" data-id="1">Proceder con la compra</a>
                    </div>


        </div>
    </section>
    <script src="../../js/cantidad.js"></script>
    <script src="../../js/total.js"></script>
</body>
</html>

