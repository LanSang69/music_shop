<?php
// Start the session
session_start();

// consult_employee.php

if (isset($_SESSION["puesto"])) {
    $id_puesto = $_SESSION["puesto"];

    switch ($id_puesto) {
        case 1:
            header("Location: ../boss.php");
            exit();
        case 2:
            header("Location: ../gerente.php");
            exit();
        default:
            header("Location: ../../login.php");
            exit();
    }
} else {
    // Handle the case when id_puesto is not set
    echo "Error: id_puesto is not set.";
}
?>
