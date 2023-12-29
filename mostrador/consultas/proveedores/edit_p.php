<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar proveedor</title>
    <link rel="stylesheet" type="text/css" href="../../css/styles_list.css">
</head>

<body>
    <?php
         $id = $_GET['id'];
         $nombre = $_GET['nombre'];
         $rfc = $_GET['rfc'];
         $rs = $_GET['rs'];
         $colonia = $_GET['colonia'];
         $ciudad = $_GET['ciudad'];
         $cp = $_GET['cp'];
         $nombre_c = $_GET['nc'];
         $apellido1 = $_GET['apellido1'];
         $apellido2 = $_GET['apellido2']; // Fix the typo in the form field name
         $correo = $_GET['correo'];
    ?>
    <div class="table-content">
        <div>
            <form action="sp_edit_p.php" method="post">
                <table border="1" class="table">
                    <tr>
                        <td>Ingresa datos: </td>
                        <td> <input type="text" name="id" value="<?=$id?>" style="display:none" id=""> </td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td> <input type="text" name="nombre" value="<?=$nombre?>" id=""> </td>
                    </tr>
                    <tr>
                        <td>RFC</td>
                        <td> <input type="text" name="rfc" value="<?=$rfc?>" id=""> </td>
                    </tr>
                    <tr>
                        <td>Razón social</td>
                        <td> <input type="text" name="rs" value="<?=$rs?>" id=""> </td>
                    </tr>
                    <tr>
                        <td>Colonia</td>
                        <td> <input type="text" name="colonia" value="<?=$colonia?>" id=""> </td>
                    </tr>
                    <tr>
                        <td>Ciudad</td>
                        <td> <input type="text" name="ciudad" value="<?=$ciudad?>" id="" required> </td>
                    </tr>
                    <tr>
                        <td>Código Postal</td>
                        <td> <input name="cp" value="<?=$cp?>" id="" required></td>
                    </tr>
                    <tr>
                        <td>Nombre contacto</td>
                        <td> <input name="nombre_c" value="<?=$nombre_c?>" id="" required></td>
                    </tr>
                    <tr>
                        <td>Primer apellido</td>
                        <td> <input name="apellido1" value="<?=$apellido1?>" id=""></td>
                    </tr>
                    <tr>
                        <td>Segundo apellido</td>
                        <td> <input name="apllido2" value="<?=$apellido2?>" id=""></td>
                    </tr>
                    <tr>
                        <td>Correo</td>
                        <td> <input name="correo" value="<?=$correo?>" id="" required></td>
                    </tr>
                </table>
                <div class="submit-button">
                    <button type="submit">Guardar</button>
                </div>
            </form>
            <form action="consult_proveedor.php" method="get" class="return-form">
                <button type="submit" formaction="consult_proveedor.php">Volver</button>
            </form>
        </div>
    </div>
</body>

</html>