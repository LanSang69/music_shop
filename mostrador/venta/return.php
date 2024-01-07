<?php
// Start the session
session_start();

// consult_employee.php

if (isset($_SESSION["puesto"])) {
    $id_puesto = $_SESSION["puesto"];

    switch ($id_puesto) {
        case 1:
            header("Location: consultas/boss.php");
            exit();
        case 2:
            header("Location: consultas/gerente.php");
            exit();
        case 3: 
            header("Location: ../consultas/ventas.php");
            exit();
    }
} else {
    // Handle the case when id_puesto is not set
    header("Location: login.php");
}
?>
