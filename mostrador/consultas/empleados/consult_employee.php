<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Empleados</title>
    <link rel="stylesheet" type="text/css" href="../../css/styles_list.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>

    <h1>Empleados Activos</h1>

    <div id="search-box">
        <form action="buscar_e.php" method="post">
            <input type="text" id="search-input" placeholder="Ingrese texto de búsqueda" name="buscar">
            <button id="search-button">Buscar</button>
        </form>
        
        <form action="consult_employee.php" method="post">
            <button id="restart-button" name="Restart">Eliminar búsqueda</button>
        </form>

        <form action="return.php" method="get">
            <button type="submit">Volver</button>
        </form>

    </div>
    
    <div class="table-content">
        <table>
            <thead>
            <tr>
                <td>Nombre</td>
                <td>Primer apellido</td>
                <td>Segundo apellido</td>
                <td>RFC</td>
                <td>Puesto</td>
                <td>Sucursal</td>
                <td></td>
            </tr>
            </thead>
            <?php
            $connection = pg_connect("host=localhost port=5432 dbname=notamala user=lansan69 password=LanSan2004*");

            if ($connection) {
                $result = pg_query($connection, "SELECT empleado.id_empleado as id, empleado.nombre AS nombre, p_apellido, s_apellido, rfc, 
                puesto.nombre AS puesto_nombre, sucursal.nombre AS nombre_sucursal FROM empleado 
                JOIN puesto ON empleado.id_puesto = puesto.id_puesto JOIN sucursal ON sucursal.id_sucursal = empleado.id_sucursal WHERE empleado.id_estado = 1 ORDER BY id");
                while ($row = pg_fetch_assoc($result)) {
                    ?>
            <tbody>
            <tr>
                <td><?php echo $row['nombre'] ?></td>
                <td><?php echo $row['p_apellido'] ?></td>
                <td><?php echo $row['s_apellido'] ?></td>
                <td><?php echo $row['rfc'] ?></td>
                <td><?php echo $row['puesto_nombre'] ?></td>
                <td><?php echo $row['nombre_sucursal'] ?></td>
                <td><input type="radio" name="selectedItem" value="<?php echo $row['id']; ?>"></td>
            </tr>
            <?php 
                }
            }
                ?>
            </tbody>
        </table>
    </div>

    <div class="action-buttons">
        <form action="add_employee.php" method="post">
            <button type="submit" class="add-button">Agregar</button>
        </form>
        <button class="modify-button" onclick="modifyEmployee()">Modificar</button>
        <button class="delete-button" onclick="deleteEmployee()">Despedir</button>
        <button class="chedule-button" onclick="assignSchedule()">Asignar horario</button>
    </div>

    <!-- Aquí se muestran los empleados despedidos -->
    <br><br>
    <h1>Empleados Inactivos</h1>

<div id="search-box">
    <form action="buscar_inactivos.php" method="post">
        <input type="text" id="search-input" placeholder="Ingrese texto de búsqueda" name="buscar">
        <button id="search-button">Buscar</button>
    </form>
    
    <form action="consult_employee.php" method="post">
        <button id="restart-button" name="Restart">Eliminar búsqueda</button>
    </form>

    <form action="return.php" method="get">
        <button type="submit">Volver</button>
    </form>

</div>

<div class="table-content">
    <table>
        <thead>
        <tr>
            <td>Nombre</td>
            <td>Primer apellido</td>
            <td>Segundo apellido</td>
            <td>RFC</td>
            <td>Puesto</td>
            <td>Sucursal</td>
            <td></td>
        </tr>
        </thead>
        <?php
        $connection = pg_connect("host=localhost port=5432 dbname=notamala user=lansan69 password=LanSan2004*");

        if ($connection) {
            $result = pg_query($connection, "SELECT empleado.id_empleado as id, empleado.nombre AS nombre, p_apellido, s_apellido, rfc, 
            puesto.nombre AS puesto_nombre, sucursal.nombre AS nombre_sucursal FROM empleado 
            JOIN puesto ON empleado.id_puesto = puesto.id_puesto JOIN sucursal ON sucursal.id_sucursal = empleado.id_sucursal WHERE empleado.id_estado = 2 ORDER BY id");
            while ($row = pg_fetch_assoc($result)) {
                ?>
        <tbody>
        <tr>
            <td><?php echo $row['nombre'] ?></td>
            <td><?php echo $row['p_apellido'] ?></td>
            <td><?php echo $row['s_apellido'] ?></td>
            <td><?php echo $row['rfc'] ?></td>
            <td><?php echo $row['puesto_nombre'] ?></td>
            <td><?php echo $row['nombre_sucursal'] ?></td>
            <td><input type="radio" name="selectedItem" value="<?php echo $row['id']; ?>"></td>
        </tr>
        <?php 
            }
        }
            ?>
        </tbody>
    </table>
</div>

<div class="action-buttons">
    <form action="add_employee.php" method="post">
        <button type="submit" class="add-button">Agregar</button>
    </form>
    <button class="modify-button" onclick="modifyEmployee()">Modificar</button>
    <button class="delete-button" onclick="hireEmployee()">Recontratar</button>
    <button class="chedule-button" onclick="assignSchedule()">Asignar horario</button>
</div>


    <!-- Script for handling the checked options -->
    <script src="script.js"></script>

</body>
</html>