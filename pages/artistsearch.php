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
	if(isset($_POST["artistname"])){
			$artistname = $_POST["artistname"];
	}

	//sql statement for getting the data
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
 			echo $row["firstName"];
			echo " ";
			echo $row["lastName"];
			echo ", born on ";
			echo $row["dob"];
			echo "<br>";
		}
		
		$sql3 = "SELECT album.name FROM album, artist, song WHERE artist.artisticName LIKE '%".$artistname."%' AND song.artistName LIKE '%".$artistname."%' AND album.albumID = song.albumNameID GROUP BY album.name";
			$result3 = $conn->query($sql3);
			//Testing if the result worked properly
			if(!$result3){
				trigger_error('Invalid query: ' . $conn->error);
			}
			if($result3->num_rows > 0){
				//output data
				echo "<br> Albums: <br>";
				while($row3 = $result3->fetch_assoc()){
					echo $row3["name"];
					echo "<br>";
				}
			}
		
		$sql2 = "SELECT label.name FROM label, artist WHERE artist.currentLabelID = label.labelID AND artist.artisticName LIKE '%".$artistname."%' GROUP BY name";
			$result2 = $conn->query($sql2);
			//Testing if the result worked properly
			if(!$result2){
				trigger_error('Invalid query: ' . $conn->error);
			}
			if($result2->num_rows > 0){
				//output data
				while($row2 = $result2->fetch_assoc()){
					echo "<br>Current label: ";
					echo $row2["name"];
				}
			}
		
	}else{
			echo "No results";
	}

  ?>