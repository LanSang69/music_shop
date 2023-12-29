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
        $colonia = $_GET['colonia'];
        $ciudad = $_GET['ciudad'];
        $cp = $_GET['cp'];
    ?>
    <div class="table-content">
    <div>
        <form action="sp_edit_s.php" method="post">
        <table border="1" class="table">
                    <tr>
                        <td>Ingresa datos: </td>
                        <td> <input type="text" name="id" value="<?=$id?>" style="display:none" id=""> </td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td> <input type="text" value="<?=$nombre?>" name="nombre" id=""> </td>
                    </tr>
                    <tr>
                        <td>Colonia</td>
                        <td> <input type="text" value="<?=$colonia?>" name="colonia" id=""> </td>
                    </tr>
                    <tr>
                        <td>Ciudad</td>
                        <td> <input type="text" value="<?=$ciudad?>" name="ciudad" id="" required> </td>
                    </tr>
                    <tr>
                        <td>Código Postal</td>
                        <td> <input name="cp" id="" value="<?=$cp?>" required></td>
                    </tr>
                    <tr>
                        <td>Estado</td>
                        <td>
                            <select id="estado" name="estado">
                                <option value="activa">Activa</option>
                                <option value="cerrada">Cerrada</option>
                            </select>
                        </td>
                    </tr>
                </table>
        <div class="submit-button">
            <button type="submit">Guardar</button>
        </div>
        </form>
    <form action="consult_product.php" method="get" class="return-form">
        <button type="submit" formaction="consult_sucursal.php">Volver</button>
    </form>
    </div>
</div>

</body>

</html>