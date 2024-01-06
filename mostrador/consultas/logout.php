<?php
// Start the session
session_start();

// Unset all session variables
$_SESSION = array();

// Destroy the session
session_destroy();

// Redirect to a login page or another appropriate page
header("Location: ../login.php");
exit();
?>
