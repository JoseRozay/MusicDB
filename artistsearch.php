<?php

	$conn = new mysqli();
	mysqli_select_ab('music nigga bet')

	if($conn -> connect_error){
		die("Connection failed: ". $conn-> connect_error);
	}

	//Set variable from index.php
	$artistname = $_POST["artistname"];

	//sql statement for getting the data
	$sql = "SELECT * FROM table WHERE columm LIKE '%". $artistname. "%'";
	$result = $conn->query($sql);

	//Testing if the result worked properly
	if(!$result){
		trigger_error('Invalid query: ' . $conn->error);
	}


	if($result -> num_rows > 0){
		//output data
		while($row = $result->fetch_assoc()){
			echo "Column: " . $row.column ;//Print stuff out from  
		}
	}else{
		echo "No results"
	}

  ?>