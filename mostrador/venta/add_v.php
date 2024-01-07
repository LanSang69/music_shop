<?php
session_start();

$host = "localhost";
$port = "5432";
$dbname = "notamala";
$user = "lansan69";
$password = "LanSan2004*";

$connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($connection) {
    $cliente = $_POST['id_cliente'];
    $metodo_pago = $_POST['pago'];
    $pagoMAP = [
        "efectivo" => 1,
        "tarjeta" => 2
    ];
    $pago = $pagoMAP[$metodo_pago];
    $total = $_POST['monto'];
    $sucursal = $_SESSION['id_sucursal'];
    $empleado = $_SESSION['id_empleado'];

    
    //Data for tarjeta
    
    $query = "INSERT INTO venta (id_cliente, tipo_pago, monto_total, id_sucursal, id_empleado)
              VALUES ('$cliente', '$pago', '$total', '$sucursal', '$empleado')
              RETURNING id_venta";

$result = pg_query($connection, $query);

if ($result) {
    $row = pg_fetch_assoc($result);
    $id_venta = $row['id_venta'];
    
    if($metodo_pago === "efectivo"){
        $recibido = $_POST['recibido'];
        
        $queryEfectivo = "INSERT INTO pago_efectivo (id_venta, recibido) VALUES ($id_venta, $recibido)";
        $result2 = pg_query($connection, $queryEfectivo);
    }
    
    else if($metodo_pago === "tarjeta"){
        $seguimiento = $_POST['n_seguimiento'];
        
        $queryTarjeta = "INSERT INTO pago_tarjeta (id_venta, numero_seguimiento) VALUES ($id_venta, $seguimiento)";
        $result2 = pg_query($connection, $queryTarjeta);
    }

        $response = [
            'success' => true,
            'id_venta' => $id_venta,
            'message' => 'Venta registrada con éxito'
        ];
    } else {
        $error_message = json_encode(pg_last_error(), JSON_HEX_QUOT | JSON_HEX_APOS);

        $response = [
            'success' => false,
            'error' => $error_message
        ];
    }

    // Send the response as JSON
    header('Content-Type: application/json');
    echo json_encode($response);
} else {
    $response = [
        'success' => false,
        'error' => 'Error de conexión a la base de datos'
    ];

    // Send the response as JSON
    header('Content-Type: application/json');
    echo json_encode($response);
}
?>
