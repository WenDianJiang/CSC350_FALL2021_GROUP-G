<?php
$servername="localhost";
$userID="root";
$passWord="root";
$connect=mysqli_connect($servername,$userID,$passWord);
if(!$connect) die("Connection Error");

?>