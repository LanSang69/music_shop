<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <Meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MusicStore | La música es tu mejor compañía</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="css/styles_home.css">
</head>

<body>

    <header class="header">
        <div class="menu container">
            <a class="logo">La nota mala</a>
            <a class="logo">
            </a>
            <input type="checkbox" id="menu" />
            <label for="menu"><img src="images/menu.svg" class="menu-icono" alt=""></label>

            <nav class="navbar">
                <ul>
                    <li><a href="#">Inicio</a></li>
                    <li><a href="#lista-1">Productos</a></li>
                    <li><a href="login.php">Iniciar sesión</a></li>
                </ul>
            </nav>
            <div>
                <ul>
                    <li class="submenu">
                        <img src="images/car.svg" id="img-carrito" alt="">
                        <div id="carrito">
                            <table id="lista-carrito">
                                <thead>
                                    <tr>
                                        <th>Imagen</th>
                                        <th>Nombre</th>
                                        <th>Precio</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <a href="#" id="vaciar-carrito" class="btn-3">Vaciar carrito</a>
                            <a href="#" id="comprar-producto" class="btn-3">Comprar Ahora</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </header>

    <hr>
    <div class="footer-scroll">
    <a href="#footer">
    <img src="images/flecha.png" alt="" class="flecha">
    </a>
    </div>
    
    <section class="promos container" id="lista-1">
        <h2>Nuestros productos</h2>

        <div class="categories">

            <?php 
                include "php/clients/display_prod.php"
            ?>

            <div class="categorie">
                <div class="categorie-1">
                    <h3>Promoción 1</h3>
                    <div class="prices">
                        <p class="price-1">$2,100</p>
                        <p class="precio">$1,900</p>
                    </div>
                    <a href="#" class="agregar-carrito btn-3" data-id="1">Agregar al carrito</a>
                </div>
                <div class="categorie-img">
                    <img src="images/fender_strato.png" alt="">
                </div>
            </div>

            <div class="categorie">
                <div class="categorie-1">
                    <h3>Promoción 2</h3>
                    <div class="prices">
                        <p class="price-1">$2,499</p>
                        <p class="precio">$2,199</p>
                    </div>
                    <a href="#" class="agregar-carrito btn-3" data-id="2">Agregar al carrito</a>
                </div>
                <div class="categorie-img">
                    <img src="images/fender_telecaster.png" alt="">
                </div>
            </div>

            <div class="categorie">
                <div class="categorie-1">
                    <h3>Promoción 3</h3>
                    <div class="prices">
                        <p class="price-1">$2,599</p>
                        <p class="precio">$2,399</p>
                    </div>
                    <a href="#" class="agregar-carrito btn-3" data-id="3">Agregar al carrito</a>
                </div>
                <div class="categorie-img">
                    <img src="images/jackson_black.png" alt="">
                </div>
            </div>

            <div class="categorie">
                <div class="categorie-1">
                    <h3>Promoción 4</h3>
                    <div class="prices">
                        <p class="price-1">$6,599</p>
                        <p class="precio">$6,099</p>
                    </div>
                    <a href="#" class="agregar-carrito btn-3" data-id="4">Agregar al carrito</a>
                </div>
                <div class="categorie-img">
                    <img src="images/ibanez_gio.png" alt="">
                </div>
            </div>
        </div>
    </section>

    <hr>
    <section class="products container" id="lista-2">
        <h2>Nuevos Productos</h2>
        <div class="swiper mySwiper-2">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="product">
                        <img src="images/bateria_lm.png" alt="">
                        <div class="product-txt">
                            <h3>Bateria LM</h3>
                            <p>Bateria acustica</p>
                            <p class="precio">5000</p>
                            <a href="#" class="agregar-carrito btn-3" data-id="5">Agregar al carrito</a>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="product">
                        <img src="images/puas_boss.jpg" alt="">
                        <div class="product-txt">
                            <h3>Plumillas Boss</h3>
                            <p>Paquete de 10 plumillas Boss</p>
                            <p class="precio">300</p>
                            <a href="#" class="agregar-carrito btn-3" data-id="6">Agregar al carrito</a>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="product">
                        <img src="images/kit_guit_doner.jpg" alt="">
                        <div class="product-txt">
                            <h3>Kit de guitarra eléctrica</h3>
                            <p>Kit de la marca Doner</p>
                            <p class="precio">3000</p>
                            <a href="#" class="agregar-carrito btn-3" data-id="7">Agregar al carrito</a>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="product">
                        <img src="images/kit_guit2.jpg" alt="">
                        <div class="product-txt">
                            <h3>Kit de guitarra eléctrica</h3>
                            <p>Kit de guitarra de la marca Doner</p>
                            <p class="precio">3500</p>
                            <a href="#" class="agregar-carrito btn-3" data-id="8">Agregar al carrito</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </section>

    <hr>
    <footer class="footer container" id="footer">

        <div class="link">
            <h3>Navegar por la página</h3>
            <nav class="navbar">
                <ul>
                    <li><a href="#">Inicio</a></li>
                    <li><a href="#lista-1">Productos</a></li>
                    <li><a href="login.php">Iniciar sesión</a></li>
                    <li><a href="mostrador/login.php">Soy un empleado</a></li>
                </ul>
            </nav>
        </div>

        <div class="link">
            <h3>Acerca de la página</h3>
            <p>La nota mala es una idea propuesta para el manejo de una tienda de música d emanera efectiva utilizando
                conocimientos en bases de datos y en desarrollo web, enfocados sobre todo en php <br> <br>
                El presente proyecto se entrega para la materia de base de datos con el profesor Ulises Vélez Saldaña con el grupo 3CM5
            </p>
        </div>

    </footer>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
</body>

</html>