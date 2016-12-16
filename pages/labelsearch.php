<body style="background-color:lightgrey">
<?php
	
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "musicdb";

	$conn = new mysqli($servername, $username, $password, $dbname);

	if($conn->connect_error){
		die("Connection failed: ". $conn-> connect_error);
	}


	//Set variable from index.php
	if(isset($_POST["labelname"])){
			$labelname = $_POST["labelname"];
	}

	//sql statement for getting the data
	$sql = "SELECT label.lname, label.establishDate, artist.artisticName FROM label JOIN artist ON artist.currentLabelID = label.labelID WHERE label.lname LIKE '%".$labelname."%' GROUP BY artist.artisticName";

	$result = $conn->query($sql);

	//Testing if the result worked properly
	if(!$result){
		trigger_error('Invalid query: ' . $conn->error);
	}

	if($result->num_rows > 0){
		//output data
		while($row = $result->fetch_assoc()){
		echo " ".$row["lname"].", Establish date: ".$row["establishDate"]."<br>";
		}
		$sql2 = "SELECT artist.artisticName FROM label JOIN artist ON artist.currentLabelID = label.labelID WHERE label.lname LIKE '%".$labelname."%' GROUP BY artist.artisticName";
		$result2 = $conn->query($sql2);
		//Testing if the result worked properly
		if(!$result2){
			trigger_error('Invalid query: ' . $conn->error);
		}

		if($result2->num_rows > 0){
			//output data
			echo "<br>";
			while($row2 = $result2->fetch_assoc()){
				echo "Artists: ".$row2["artisticName"].", <br>";
			}
		}
		
	}else{
		echo "No results";
	}
  ?>
  </body>