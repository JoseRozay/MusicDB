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
	if(isset($_POST["songname"])){
			$songname = $_POST["songname"];
	}

	//sql statement for getting the data
	$sql = "SELECT song.songName, song.artistName, song.length, song.contributingArtists, label.lname, genre.gname, album.aname FROM song, label, genre, album WHERE album.albumID = song.albumNameID AND label.labelID = song.labelNameID AND genre.genreID = song.genreNameID AND song.songName LIKE '%".$songname."%'";

	$result = $conn->query($sql);

	//Testing if the result worked properly
	if(!$result){
		trigger_error('Invalid query: ' . $conn->error);
	}


	if($result->num_rows > 0){
		//output data
		while($row = $result->fetch_assoc()){
			echo " ".$row["songName"]."<br>By: ".$row["artistName"]."<br>On: ".$row["aname"]."<br>Genre: ".$row["gname"]."<br>Featuring: ".$row["contributingArtists"]."<br>Song length (in seconds): ".$row["length"]."<br>For label: ".$row["lname"]." <br><br>";
		}
	}else{
		echo "No results";
	}

  ?>
  </body>