<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar sucursal</title>
    <link rel="stylesheet" type="text/css" href="../../css/styles_list.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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
                        <td>Código Postal</td>
                        <td> <input name="cp" id="cp" required></td>
                    </tr>
                    <tr>
                        <td>Municipio</td>
                        <td>
                            <select name="municipio" id="municipio" required>
                                <!-- Options will be dynamically populated using JavaScript -->
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Asentamiento</td>
                        <td>
                            <select name="asentamiento" id="asentamiento" required>
                                <!-- Options will be dynamically populated using JavaScript -->
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Tipo asentamiento</td>
                        <td>
                            <select name="t_asentamiento" id="t_asentamiento" required>
                                <!-- Options will be dynamically populated using JavaScript -->
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Calle</td>
                        <td> <input type="text" name="calle" id="calle"> </td>
                    </tr>
                    <tr>
                        <td>Número</td>
                        <td> <input type="text" name="numero" id="número"> </td>
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

    <script src="auto_complete.js"></script>

</body>

</html>
