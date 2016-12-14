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
	if(isset($_POST["songname"])){
			$songname = $_POST["songname"];
	}

	//sql statement for getting the data
	$sql = "SELECT song.artistName, song.length, song.contributingArtists, label.name, genre.name, album.name FROM song, label, genre, album WHERE album.albumID = song.albumNameID AND label.labelID = song.labelNameID AND genre.genreID = song.genreNameID AND song.songName LIKE '%".$songname."%'";

	$result = $conn->query($sql);

	//Testing if the result worked properly
	if(!$result){
		trigger_error('Invalid query: ' . $conn->error);
	}


	if($result->num_rows > 0){
		//output data
		echo $songname;
		while($row = $result->fetch_assoc()){
			echo "<br>By: ";
			echo $row["artistName"];
			echo "<br>On: ";
			echo $row["name"];
			echo "<br>Genre: ";
			echo $row["name"];
			echo "<br>Featuring: ";
			echo $row["contributingArtists"];
			echo "<br>Song length (in seconds): ";
			echo $row["length"];
			echo "<br>For label: ";
			echo $row["name"];
		}
	}else{
		echo "No results";
	}

  ?>