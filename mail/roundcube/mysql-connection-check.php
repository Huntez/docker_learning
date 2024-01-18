<?php

// Exit immediately if any output is generated
ob_start();

$dsn = "mysql:host=mysql;dbname=roundcube";
$username = "roundcube";
$password = "password";

try {
    $db = new PDO($dsn, $username, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    exit(1); // Exit with error code 1 if connection fails
}

exit(0); // Exit with success code 0 if connection succeeds

// Discard any output generated
ob_end_clean();

?>
