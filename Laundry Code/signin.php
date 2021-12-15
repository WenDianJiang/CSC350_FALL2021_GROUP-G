<html>
<head><link rel="stylesheet" href="home.css"></head>
</html>
<?php
session_start();
$_SESSION["username"]="";
$check=true;

if(isset($_REQUEST["username"]) && isset($_REQUEST["password"])){
	$username=$_REQUEST["username"];
	$password=$_REQUEST["password"];

	include "connect.php";

	$sql="Select * From Laundry.customer where UserName='".$username."' And PassWord='".$password."' " ;
	$result=mysqli_query($connect,$sql);
	if(mysqli_num_rows($result)>0){
		
		
		$connect->close();
		$_SESSION["username"]=$username;
		header("Location:Laundry.php");
	}else{
		$check=false;
	}
}

$inputtype = "Sign in";
$page = "signin.php";
include "log.html";
?>