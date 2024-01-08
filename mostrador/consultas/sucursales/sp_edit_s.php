<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizar sucursal</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
    <?php
    $host = "localhost";
    $port = "5432";  // Default PostgreSQL port
    $dbname = "notamala";
    $user = "lansan69";
    $password = "LanSan2004*";

    $connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");
    if ($connection) {
        $id = $_POST['id']; // Assuming you are passing the ID through a hidden field in your form
        $nombre = $_POST['nombre'];
        $cp = $_POST['cp'];
        $municipio = $_POST['municipio'];
        $asentamiento = $_POST['asentamiento'];
        $t_asen = $_POST['t_asentamiento'];
        $calle = $_POST['calle'];
        $numero = $_POST['numero'];
        $estado = $_POST['estado'];
        $estadoMAP = [
            'activa' => 1,
            'cerrada' => 2,
        ];
        $db_estado = $estadoMAP[$estado];

        $query = "UPDATE sucursal 
                  SET nombre = '$nombre', 
                      codigo_postal = '$cp', 
                      municipio = '$municipio', 
                      asentamiento = '$asentamiento', 
                      tipo_asentamiento = '$t_asen', 
                      calle = '$calle', 
                      calle_numero = '$numero', 
                      id_estado = '$db_estado' 
                  WHERE id_sucursal = $id";

        $result = pg_query($connection, $query);

        if ($result) {
            echo "<script>
            Swal.fire({
                icon: 'success',
                title: 'Sucursal actualizada con éxito',
                confirmButtonText: 'OK'
            }).then(function () {
                window.location.href = 'consult_sucursal.php';
            });
          </script>";
        } else {
            $error_message = json_encode(pg_last_error(), JSON_HEX_QUOT | JSON_HEX_APOS);
            echo "<script>
                if (typeof Swal !== 'undefined' && Swal.fire) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error al actualizar sucursal',
                        text: $error_message,
                        confirmButtonText: 'OK'
                    }).then(function () {
                        window.history.back();
                    });
                } else {
                    console.error('SweetAlert2 is not available');
                }
              </script>";
        }
    }
    ?>
</body>

</html>
