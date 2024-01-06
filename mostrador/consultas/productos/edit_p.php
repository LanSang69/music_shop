<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar producto</title>
    <link rel="stylesheet" type="text/css" href="../../css/styles_list.css">
</head>

<body>
    <?php
        $id = $_GET['id'];
        $nombre = $_GET['name'];
        $tipo = $_GET['tipo'];
        $existencia = $_GET['existencia'];
        $precio = $_GET['precio'];
        $marca = $_GET['marca'];
        $modelo = $_GET['modelo'];
        $sucursal = $_GET['sucursal'];
    ?>
    <div class="table-content">
    <div>
        <form action="sp_edit_p.php" method="post">
            <table border="1">
                <tr>
                    <td>Ingresa datos: </td>
                    <td><input type="text" value="<?=$id?>" style="display:none" name="id" id=""></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td> <input type="text" value="<?=$nombre?>" name="nombre" id=""> </td>
                </tr>
                <tr>
                    <td>Tipo</td>
                    <td> <input type="text" value="<?=$tipo?>" name="tipo" id=""> </td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td> <input type="text" value="<?=$precio?>" name="precio" id="" required> </td>
                </tr>
                <tr>
                    <td>Modelo</td>
                    <td>
                            <select id="modelo" name="modelo">
                                <option value="ErnieBall-Slinky">ErnieBall-Slinky</option>
                                <option value="Yamaha-SaxAlto">Yamaha-SaxAlto</option>
                                <option value="Yamaha-YRS23">Yamaha-YRS23</option>
                                <option value="KRK-StudioSpeakers">KRK-StudioSpeakers</option>
                                <option value="Fender-PrecisionBass">Fender-PrecisionBass</option>
                                <option value="FC-20">FC-20</option>
                                <option value="ES335">ES335</option>
                                <option value="Moog-Modular">Moog-Modular</option>
                                <option value="G-1000">G-1000</option>
                                <option value="TEB 23">TEB 23</option>
                                <option value="Remo-PT10">Remo-PT10</option>
                                <option value="Pearl-DrumSet">Pearl-DrumSet</option>
                                <option value="Sennheiser-XSW2-835">Sennheiser-XSW2-835</option>
                                <option value="Ampeg-BassAmp">Ampeg-BassAmp</option>
                                <option value="Mackie-Mixer">Mackie-Mixer</option>
                                <option value="XL-Strings">XL-Strings</option>
                                <option value="E-Drum Pro">E-Drum Pro</option>
                                <option value="PO6070">PO6070</option>
                                <option value="Gretsch-CM1">Gretsch-CM1</option>
                                <option value="Strad-VM300">Strad-VM300</option>
                                <option value="Casio-KB200">Casio-KB200</option>
                                <option value="Korg-TM50">Korg-TM50</option>
                                <option value="EB-BassStrings">EB-BassStrings</option>
                                <option value="Yamaha-ST400">Yamaha-ST400</option>
                                <option value="Marshall-AMP">Marshall-AMP</option>
                                <option value="Behringer-Xenyx802">Behringer-Xenyx802</option>
                                <option value="Gibson-LP2000">Gibson-LP2000</option>
                                <option value="PDGY673">PDGY673</option>
                                <option value="PW-PL-01">PW-PL-01</option>
                                <option value="Boss-FX">Boss-FX</option>
                                <option value="L9345">L9345</option>
                                <option value="SE Custom 24">SE Custom 24</option>
                                <option value="Korg-Tuner">Korg-Tuner</option>
                                <option value="Gibson-LesPaul">Gibson-LesPaul</option>
                                <option value="EF381SC">EF381SC</option>
                                <option value="Ludwig-Drums">Ludwig-Drums</option>
                                <option value="Stradivarius-Cello">Stradivarius-Cello</option>
                                <option value="Pearl-FL200">Pearl-FL200</option>
                                <option value="DigiTech-RP55">DigiTech-RP55</option>
                                <option value="Monster-Cable">Monster-Cable</option>
                                <option value="Mogami-XLR">Mogami-XLR</option>
                                <option value="Steinway-Grand">Steinway-Grand</option>
                                <option value="Roland-E-Drums">Roland-E-Drums</option>
                                <option value="Taylor-Acoustic">Taylor-Acoustic</option>
                                <option value="PW-FBC">PW-FBC</option>
                                <option value="0149322317">0149322317</option>
                                <option value="Hosa-RCA6">Hosa-RCA6</option>
                                <option value="Shure-MC100">Shure-MC100</option>
                                <option value="SRN34">SRN34</option>
                                <option value="Akai-MPKMini">Akai-MPKMini</option>
                            </select>
                </tr>
                <tr>
                    <td>Existencia</td>
                    <td> <input type="text" value="<?=$existencia?>" name="existencia" id="" required> </td>
                </tr>
                <tr>
                    <td>Proveedor</td>
                    <td>
                        <select name="proveedor" required>
                            <option value="guitarG">Guitar gear</option>
                            <option value="ernieB">Ernie ball</option>
                            <option value="equipB">Equipboard</option>
                            <option value="takaG">Taka guitar México</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td>
                            <select id="category" name="categoria">
                                <option value="Accesorios">Accesorios</option>
                                <option value="Instrumentos Musicales">Instrumentos Musicales</option>
                                <option value="Productos de cuerda">Productos de cuerda</option>
                                <option value="Sintetizadores">Sintetizadores</option>
                                <option value="Baterías Electrónicas">Baterías Electrónicas</option>
                                <option value="Estudio de Grabación">Estudio de Grabación</option>
                                <option value="Efectos de Sonido">Efectos de Sonido</option>
                                <option value="Controladores MIDI">Controladores MIDI</option>
                                <option value="Instrumentos de Cuerda">Instrumentos de Cuerda</option>
                                <option value="Equipos de Audio">Equipos de Audio</option>
                                <option value="Guitarras">Guitarras</option>
                                <option value="Micrófonos">Micrófonos</option>
                                <option value="Mezcladoras de Sonido">Mezcladoras de Sonido</option>
                                <option value="Accesorios Musicales">Accesorios Musicales</option>
                                <option value="Teclados">Teclados</option>
                                <option value="Micrófonos de Estudio">Micrófonos de Estudio</option>
                                <option value="Instrumentos de Viento">Instrumentos de Viento</option>
                                <option value="Amplificadores">Amplificadores</option>
                                <option value="Baterías">Baterías</option>
                            </select>
                        </td>
                </tr>
                <tr>
                    <td>Sucursal</td>
                    <td>
                        <select name="sucursal" required>
                            <option value="chalco" <?=($sucursal == 'Chalco') ? 'selected' : ''?>>Chalco</option>
                            <option value="roma" <?=($sucursal == 'Roma') ? 'selected' : ''?>>Roma</option>
                        </select>
                    </td>
                </tr>
            </table>
        <div class="submit-button">
            <button type="submit">Guardar</button>
        </div>
        </form>
    <form action="consult_product.php" method="get" class="return-form">
        <button type="submit" formaction="consult_product.php">Volver</button>
    </form>
    </div>
</div>

</body>

</html>