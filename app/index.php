<?php
$servername = "db";
$username = "root";
$password = "phprs";
$dbname = "phprs";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT pes_id, pes_nome FROM pessoa";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
   // output data of each row
   while($row = $result->fetch_assoc()) {
       echo "id: " . $row["pes_id"]. " - Name: " . $row["pes_nome"]."<br>";
   }
} else {
   echo "0 results";
}
$conn->close();
?>
