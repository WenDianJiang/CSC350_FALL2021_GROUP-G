<html>
<head><link rel="stylesheet" href="home.css"></head>
</html>
<?php
session_start();

$username=$_SESSION["username"];
echo "<p style='font-weight:bold;font-size:18'> Welcome to Laundry Time Selection! ".$username."</p>";

include "connect.php";


	include "LaundryList.php";

if(isset($_REQUEST["TimeSlot"]) && $connect){
	$time=$_REQUEST["TimeSlot"];
	$sql="Update laundry.laundry SET Customer_UserName='".$username."' where TimeSlot='".$time."'";
	$result=mysqli_query($connect,$sql);
	$page="home.html";
	include "logout.html";
}



?>