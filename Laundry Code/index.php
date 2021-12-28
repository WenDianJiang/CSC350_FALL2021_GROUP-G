<?php

$url="Home.html";
$sql="select * from laundry.laundry where Customer_UserName='".$username."'";
	$result=mysqli_query($connect,$sql);
	if(mysqli_num_rows($result)>0){
		echo "<br>"."You have Already Selected A Time!"."<br><br>" ;
		$sql="select TimeSlot from laundry.laundry where Customer_UserName='".$username."'";
		while($row=mysqli_fetch_assoc($result)){
			echo $row["TimeSlot"];
		}
		echo "<br><br>"."You will be send to the Home page in 5 second";
		$connect->close();
		include "Sendback.html";
	}
	
?>
