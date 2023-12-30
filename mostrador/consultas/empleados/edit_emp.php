<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar empleado</title>
    <link rel="stylesheet" type="text/css" href="../../css/styles_list.css">
</head>

<body>
    
<?php
        $id = $_GET['id'];
        $nombre = $_GET['name'];
        $p_apellido = $_GET['p_ap'];
        $s_apellido = $_GET['s_ap'];
        $rfc = $_GET['rfc'];
        $puesto = $_GET['puesto'];
        $sucursal = $_GET['sucursal'];
    ?>

<div class="table-content">
    <div>
    <form action="modify_emp.php" method="post">
        <table border="1" class="table">
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
                            <option value="gerente" <?=($puesto == 'Gerente') ? 'selected' : ''?>>Gerente</option>
                            <option value="ventas" <?=($puesto == 'Ventas') ? 'selected' : ''?>>Ventas</option>
                            <option value="mostrador" <?=($puesto == 'Mostrador') ? 'selected' : ''?>>Mostrador</option>
                            <option value="supervisor" <?=($puesto == 'Supervisor') ? 'selected' : ''?>>Supervisor</option>
                            <option value="atencion" <?=($puesto == 'Atención a clientes') ? 'selected' : ''?>>Atención a clientes</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Sucursal</td>
                    <td>
                        <select name="sucursal" required>
                            <option value="chalco" <?=($sucursal == 'La nota mala Chalco') ? 'selected' : ''?>>Chalco</option>
                            <option value="roma" <?=($sucursal == 'La nota mala Roma') ? 'selected' : ''?>>Roma</option>
                        </select>
                    </td>
                </tr>
            </table>
        <div class="submit-button">
            <button type="submit">Guardar</button>
        </div>
    </form>

    <form class="return-form" onsubmit="goBack()">
        <button type="submit" id="volver">Volver</button>
    </form>

    <script>
        // Agregar un evento click al enlace "Volver"
        document.getElementById('volver').addEventListener('click', function (event) {
            event.preventDefault(); // Evitar la acción predeterminada del enlace
            window.history.back(); // Retroceder a la página anterior
        });
    </script>
    
    </div>
</div>
</body>

</html>