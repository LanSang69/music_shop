<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar empleado</title>
    <link rel="stylesheet" href="../../css/loginStyle.css">
</head>

<body>
    <?php
        $id = $_GET['id'];
        $nombre = $_GET['nombre'];
        $p_apellido = $_GET['p_ap'];
        $s_apellido = $_GET['s_ap'];
        $rfc = $_GET['rfc'];
        $puesto = $_GET['puesto'];
        $sucursal = $_GET['sucursal'];
    ?>
    <div>
        <form action="sp_edit_emp.php" method="post">
            <table border="1">
                <tr>
                    <td>Ingresa datos: </td>
                    <td><input type="text" value="<?=$id?>" style="display:none" name="id" id=""></td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td> <input type="text" value="<?=$nombre?>" name="nombre" id=""></td>
                </tr>
                <tr>
                    <td>Primer apellido</td>
                    <td> <input type="text" value="<?=$p_apellido?>" name="p_apellido" id=""> </td>
                </tr>
                <tr>
                    <td>Segundo apellido</td>
                    <td> <input type="text" value="<?=$s_apellido?>" name="s_apellido" id=""> </td>
                </tr>
                <tr>
                    <td>RFC</td>
                    <td> <input type="text" name="rfc" value="<?=$rfc?>" id="" required> </td>
                </tr>
                <tr>
                    <td>Puesto</td>
                    <td>
                        <select name="puesto" required>
                            <option value="gerente" <?=($puesto == 'gerente ') ? 'selected' : ''?>>Gerente</option>
                            <option value="mostrador" <?=($puesto == 'mostrador ') ? 'selected' : ''?>>Mostrador</option>
                            <option value="supervisor" <?=($puesto == 'supervisor ') ? 'selected' : ''?>>Supervisor</option>
                            <option value="atencion" <?=($puesto == 'atencion ') ? 'selected' : ''?>>Atención a clientes</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Sucursal</td>
                    <td>
                        <select name="sucursal" required>
                            <option value="chalco" <?=($sucursal == 'musica2') ? 'selected' : ''?>>Chalco</option>
                            <option value="roma" <?=($sucursal == 'musica3') ? 'selected' : ''?>>Roma</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Actualizar"></td>
                    <td>
                        <a href="consult_employee.php">Cancelar</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>

</html>