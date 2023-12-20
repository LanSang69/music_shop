<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar producto</title>
</head>

<body>
    <?php
        $nombre = $_POST['nombre'];
        $tipo_producto = $_POST['tipo'];
        $marca = $_POST['marca'];
        $precio_venta = $_POST['precio'];
        $descripcion = $_POST['descripcion'];
        $modelo = $_POST['modelo'];
        $existencia = $_POST['existencia'];
        $proveedor = $_POST['proveedor'];
        $categoria = $_POST['categoria'];
    ?>
    <div>
        <form action="insert_p.php" method="post">
            <table border="1">
                <tr>
                    <td>Ingresa datos: </td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td> <input type="text" name="nombre" id=""> </td>
                </tr>
                <tr>
                    <td>Tipo</td>
                    <td> <input type="text" name="tipo" id=""> </td>
                </tr>
                <tr>
                    <td>Marca</td>
                    <td> <input type="text" name="marca" id=""> </td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td> <input type="text" name="precio" id="" required> </td>
                </tr>
                <tr>
                    <td>Descripción</td>
                    <td> <textarea name="descripcion" id="" required></textarea> </td>
                </tr>
                <tr>
                    <td>Modelo</td>
                    <td> <input type="text" name="modelo" id="" required> </td>
                </tr>
                <tr>
                    <td>Existencia</td>
                    <td> <input type="text" name="existencia" id="" required> </td>
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
                    <td> <input type="text" name="categoria" id="" required> </td>
                </tr>
            </table>
            <div>
                <input type="submit" value="Guardar">
                <a href="consult_product.php">Cancelar</a>
            </div>
        </form>
    </div>

</body>

</html>