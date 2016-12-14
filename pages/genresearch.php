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
	if(isset($_POST["genrename"])){
			$genrename = $_POST["genrename"];
	}

	//sql statement for getting the data
	$sql = "SELECT name, description FROM genre WHERE genre.name LIKE '%".$genrename."%'";

	$result = $conn->query($sql);
;
	
	//Testing if the result worked properly
	if(!$result){
		trigger_error('Invalid query: ' . $conn->error);
	}
	
	if($result->num_rows > 0){
		//output data
		echo $genrename;
		$row = $result->fetch_assoc();
		echo "<br>Description: ";
		echo $row["description"];
		
		$sql2 = "SELECT DISTINCT album.name FROM song, album, genre WHERE genre.name LIKE '%".$genrename."%' AND song.genreNameID = genre.genreID AND song.albumNameID = album.albumID";
			
		$result2 = $conn->query($sql2);
		if(!$result2){
			trigger_error('Invalid query: ' . $conn->error);
		}
		
		echo "<br><br>Albums in DB under genre: <br>";	
		while($row2 = $result2->fetch_assoc()){
		echo $row2["name"];
		echo ", ";
		}
	}else{
		echo "No results";
	}
?>