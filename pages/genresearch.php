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
	if(isset($_POST["genrename"])){
			$genrename = $_POST["genrename"];
	}

	//sql statement for getting the data
	$sql = "SELECT gname, description FROM genre WHERE genre.gname LIKE '%".$genrename."%'";

	$result = $conn->query($sql);
;
	
	//Testing if the result worked properly
	if(!$result){
		trigger_error('Invalid query: ' . $conn->error);
	}
	
	if($result->num_rows > 0){
		//output data
		//echo $genrename;
		while($row = $result->fetch_assoc()){
		echo " ".$row["gname"].": <br> Description: ".$row["description"]."<br>";
		}
			$sql2 = "SELECT DISTINCT album.aname FROM song, album, genre WHERE genre.gname LIKE '%".$genrename."%' AND song.genreNameID = genre.genreID AND song.albumNameID = album.albumID";
			
		$result2 = $conn->query($sql2);
		if(!$result2){
			trigger_error('Invalid query: ' . $conn->error);
		}
		
		echo "<br>Albums in DB under genre(s): <br>";	
		while($row2 = $result2->fetch_assoc()){
		echo " ".$row2["aname"].", ";
		}
	}else{
		echo "No results";
	}
?>
</body>