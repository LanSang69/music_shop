<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar producto</title>
    <link rel="stylesheet" type="text/css" href="../../css/styles_list.css">
</head>

<body>
    <div class="table-content">
        <div>
            <form action="insert_p.php" method="post">
                <table border="1" class="table">
                    <tr>
                        <td>Ingresa datos: </td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td> <input type="text" name="nombre" id=""> </td>
                    </tr>
                    <tr>
                        <td>RFC</td>
                        <td> <input type="text" name="rfc" id=""> </td>
                    </tr>
                    <tr>
                        <td>Razón social</td>
                        <td> <input type="text" name="rs" id=""> </td>
                    </tr>
                    <tr>
                        <td>Colonia</td>
                        <td> <input type="text" name="colonia" id=""> </td>
                    </tr>
                    <tr>
                        <td>Ciudad</td>
                        <td> <input type="text" name="ciudad" id="" required> </td>
                    </tr>
                    <tr>
                        <td>Código Postal</td>
                        <td> <input name="cp" id="" required></td>
                    </tr>
                    <tr>
                        <td>Nombre contacto</td>
                        <td> <input name="nombre_c" id="" required></td>
                    </tr>
                    <tr>
                        <td>Primer apellido</td>
                        <td> <input name="apellido1" id="" required></td>
                    </tr>
                    <tr>
                        <td>Segundo apellido</td>
                        <td> <input name="apllido2" id="" required></td>
                    </tr>
                    <tr>
                        <td>Correo</td>
                        <td> <input name="correo" id="" required></td>
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