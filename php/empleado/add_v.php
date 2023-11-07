<?php
$host = "localhost";
$port = "5432";  // Default PostgreSQL port
$dbname = "music_shop";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    echo "<div class='alert'>Not inserted yet</div>";

    $id_c = $_POST['id_cliente'];
    $pago = $_POST['pago'];
    $pagoMap= [
        'Efectivo' => 1,
        'Tarjeta de débito' => 2,
        'Tarjeta de crédito' => 3,
    ];

    $db_pago = $pagoMap[$pago];
    $sucursal = $_POST['sucursal'];
    $empleado = $_POST['empleado'];

    $query = "INSERT INTO venta (id_cliente, tipo_pago, sucursal_id, empleado_id)
              VALUES ('$id_c', '$db_pago', '$sucursal', '$empleado')";

    $result = pg_query($connection, $query);

    if ($result) {
        header("Location: ../../src/empleados/compra_producto.html");
    } else {
        
    }
} else {
    echo "<div class='alert alert-danger'>Error de conexión a la base de datos</div>";
}

?>
