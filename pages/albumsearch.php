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
	if(isset($_POST["albumname"])){
			$albumname = $_POST["albumname"];
	}
	//sql statement for getting the data
	$sql = "SELECT album.name, genre.name, trackCount, releaseDate, playtime, song.artistName FROM album, song, genre WHERE song.albumNameID = albumID AND album.name LIKE '%".$albumname."%' AND song.genreNameID = genre.genreID GROUP BY album.name";

	$result = $conn->query($sql);

	//Testing if the result worked properly
	if(!$result){
		trigger_error('Invalid query: ' . $conn->error);
	}
	
	if($result->num_rows > 0){
		//output data
		echo $albumname;
		while($row = $result->fetch_assoc()){
			echo "<br>Artist: ";
			echo $row["artistName"];
			echo "<br>Release date: ";
			echo $row["releaseDate"];
			echo "<br>Genre: ";
			echo $row["name"];
			echo "<br>Track count: ";
			echo $row["trackCount"];
			echo "<br>Playtime (in seconds): ";
			echo $row["playtime"];
		}
	}else{
		echo "No results";
	}
  ?>