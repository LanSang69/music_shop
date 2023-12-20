<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deleting</title>
    <link rel="stylesheet" href="../../css/loginStyle.css">
</head>

<body>
    <?php
    $host = "localhost";
    $port = "5432";  // Default PostgreSQL port
    $dbname = "music_shop";
    $user = "lansan69";
    $password = "LanSan2004*";
    
    $connection = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

    if($connection){
        $id = $_GET['id'];

        $query = "DELETE FROM empleado WHERE id = '$id'";

        $result = pg_query($connection, $query);

        if($result){
            header("Location: consult_employee.php");
        }else{
            echo "<div class='alert alert-danger'>Error al elmiminar el usuario: " . pg_last_error() . "</div>";
            echo "<script>
                    setTimeout(function() {
                        window.location.href = 'consult_employee.php';
                    }, 2000); // 2000 milliseconds = 2 seconds
                  </script>";
        }
    }
    ?>
</body>

</html>
