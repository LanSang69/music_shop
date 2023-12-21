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
            <form action="insert_s.php" method="post">
                <table border="1" class="table">
                    <tr>
                        <td>Ingresa datos: </td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td> <input type="text" name="nombre" id=""> </td>
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
            <form action="consult_sucursal.php" method="get" class="return-form">
                <button type="submit" formaction="consult_sucursal.php">Volver</button>
            </form>
        </div>
    </div>
</body>

</html>