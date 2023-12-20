<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar empleado</title>
</head>

<body>
    <div>
        <form action="insert_emp.php" method="post">
            <table border="1">
                <tr>
                    <td>Ingresa datos: </td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td> <input type="text" name="nombre" id=""> </td>
                </tr>
                <tr>
                    <td>Primer apellido</td>
                    <td> <input type="text" name="p_apellido" id=""> </td>
                </tr>
                <tr>
                    <td>Segundo apellido</td>
                    <td> <input type="text" name="s_apellido" id=""> </td>
                </tr>
                <tr>
                    <td>RFC</td>
                    <td> <input type="text" name="rfc" id="" required> </td>
                </tr>
                <tr>
                    <td>Puesto</td>
                    <td>
                        <select name="puesto" required>
                            <option value="gerente">Gerente</option>
                            <option value="mostrador">Mostrador</option>
                            <option value="supervisor">Supervisor</option>
                            <option value="atencion">Atención a clientes</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Sucursal</td>
                    <td>
                        <select name="sucursal" required>
                            <option value="chalco">Chalco</option>
                            <option value="roma">Roma</option>
                        </select>
                    </td>
                </tr>
            </table>
            <div>
                <input type="submit" value="Guardar">
                <a href="consult_employee.php">Cancelar</a>
            </div>
        </form>
    </div>

</body>

</html>