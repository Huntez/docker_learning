<?php
$servername = getenv('OPENCART_HOSTNAME') ?: 'mysql';
$username = getenv('OPENCART_DB_USERNAME');
$password = getenv('OPENCART_DB_PASSWORD');
$database = getenv('OPENCART_DATABASE') ?: 'opencart';
$port = getenv('OPENCART_PORT') ?: 3306;

$maxRetries = 5;
$retryCount = 0;

while ($retryCount < $maxRetries) {
   try {
       $conn = new mysqli($servername, $username, $password, $database, $port);

       if ($conn->connect_error) {
           throw new Exception($conn->connect_error);
       }

       // Connection successful, break out of the loop
       echo "1";
       $conn->close();
       break;

   } catch (Exception $e) {
       $retryCount++;
       sleep(5); // Wait for 5 seconds before retrying

       if ($retryCount === $maxRetries) {
           echo "0"; // All retries failed
           error_log("Database connection failed after $maxRetries attempts: " . $e->getMessage());
       }
   }
}
?>
