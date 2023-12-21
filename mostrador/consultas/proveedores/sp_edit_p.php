<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizar proveedor</title>
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
        $id = $_POST['id']; // Assuming you have an input field for ID in your form
        $nombre = $_POST['nombre'];
        $rfc = $_POST['rfc'];
        $rs = $_POST['rs'];
        $colonia = $_POST['colonia'];
        $ciudad = $_POST['ciudad'];
        $cp = $_POST['cp'];
        $nombre_c = $_POST['nombre_c'];
        $apellido1 = $_POST['apellido1'];
        $apellido2 = $_POST['apellido2'];
        $correo = $_POST['correo'];

        $query = "UPDATE proveedor SET 
                    nombre = '$nombre',
                    rfc = '$rfc',
                    razon_social = '$rs',
                    colonia = '$colonia',
                    ciudad = '$ciudad',
                    codigo_postal = '$cp',
                    nombre_contacto = '$nombre_c',
                    primer_apellido = '$apellido1',
                    segundo_apellido = '$apellido2',
                    correo = '$correo'
                  WHERE id_proveedor = $id";

        $result = pg_query($connection, $query);

        if ($result) {
            echo "<script>
            Swal.fire({
                icon: 'success',
                title: 'Proveedor actualizado con éxito',
                confirmButtonText: 'OK'
            }).then(function () {
                window.location.href = 'consult_proveedor.php';
            });
          </script>";
        } else {
            $error_message = json_encode(pg_last_error(), JSON_HEX_QUOT | JSON_HEX_APOS);
            echo "<script>
                if (typeof Swal !== 'undefined' && Swal.fire) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error al actualizar proveedor',
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
