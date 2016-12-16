<body style="background-color:lightgrey">
<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "musicdb";

	//Setting up connection with already used 
	$conn = new mysqli($servername, $username, $password, $dbname);

	//Checking to see if connection worked
	if($conn->connect_error){
		die("Connection failed: ". $conn-> connect_error);
	}

	//Set variable from index.php
	if(isset($_POST["artistname"])){
			$artistname = $_POST["artistname"];
	}

	//Getting the data and putting it in a 
	$sql = "SELECT firstName, lastName, dob FROM artist WHERE artist.artisticName LIKE '%".$artistname."%'";
	$result = $conn->query($sql);

	//Testing if the result worked properly
	if(!$result){
		trigger_error('Invalid query: ' . $conn->error);
	}


	if($result->num_rows > 0){
		//output data
		echo "Name(s): <br>";
		while($row = $result->fetch_assoc()){
 			echo " ".$row["firstName"]." ".$row["lastName"]." ".$row["lastName"].", born on ".$row["dob"]." <br>";
		}
		
		$sql3 = "SELECT album.aname FROM album, artist, song WHERE artist.artisticName LIKE '%".$artistname."%' AND song.artistName LIKE '%".$artistname."%' AND album.albumID = song.albumNameID GROUP BY album.aname";
			$result3 = $conn->query($sql3);
			//Testing if the result worked properly
			if(!$result3){
				trigger_error('Invalid query: ' . $conn->error);
			}
			if($result3->num_rows > 0){
				//output data
				echo "<br> Albums: <br>";
				while($row3 = $result3->fetch_assoc()){
					echo " ".$row3["aname"]." <br>";
				}
			}
		
		$sql2 = "SELECT label.lname FROM label, artist WHERE artist.currentLabelID = label.labelID AND artist.artisticName LIKE '%".$artistname."%' GROUP BY lname";
			$result2 = $conn->query($sql2);
			//Testing if the result worked properly
			if(!$result2){
				trigger_error('Invalid query: ' . $conn->error);
			}
			if($result2->num_rows > 0){
				//output data
				while($row2 = $result2->fetch_assoc()){
					echo "<br>Current label: ".$row2["lname"]." ";
				}
			}
		
	}else{
			echo "No results";
	}

?>
</body>