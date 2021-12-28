<html>
<head><link rel="stylesheet" href="home.css"></head>
</html>
<?php

$check=true;

if(isset($_REQUEST["username"]) && isset($_REQUEST["password"])){
	$username=$_REQUEST["username"];
	$password=$_REQUEST["password"];

	include "connect.php";

	$sql="Select * From laundry.customer where UserName='".$username."' AND PassWord='".$password."' " ;
	$result=mysqli_query($connect,$sql);
	if(mysqli_num_rows($result)>0){
		$check=false;
	}else{
		$sql="Insert INTO laundry.customer(UserName,PassWord) Values ('".$username."','".$password."')";
		$result=mysqli_query($connect,$sql);
		$connect->close();
		header("Location:signin.php");
	}
}

$inputtype = "Sign Up";
$page = "signup.php";
include "log.html";
?>