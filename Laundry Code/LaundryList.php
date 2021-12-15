<?php
		
	echo "<p style='color:light-Blue;font-size:18;'>Laundry Time Slot</p>";
	$sql="select TimeSlot from laundry.laundry where Customer_UserName is null"; 		$result=mysqli_query($connect,$sql);
	if(mysqli_num_rows($result)>0){
		echo "<table border='2'><tr><td>Time Slot Available</td></tr>";
		echo "<form action='Laundry.php' method='post'>";
		while($row=mysqli_fetch_assoc($result)){
			echo "<tr><td>".$row["TimeSlot"]."</td><td><input type='radio' name='TimeSlot' value='".$row["TimeSlot"]."'></td>";
			
			}
		echo "<tr><td colspand='2' align='center'><input type='submit' value='ADD'></td></tr>";
		echo "</table>";
		echo "</form>";
		
	}else{
		echo "<p> No Available Time Now!</p>";
		
	}
	include "check.php";

	?>