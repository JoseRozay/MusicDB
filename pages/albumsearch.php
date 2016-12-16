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
	if(isset($_POST["albumname"])){
			$albumname = $_POST["albumname"];
	}
	//sql statement for getting the data
	$sql = "SELECT album.aname, genre.gname, trackCount, releaseDate, playtime, song.artistName FROM album, song, genre WHERE song.albumNameID = albumID AND album.aname LIKE '%".$albumname."%' AND song.genreNameID = genre.genreID GROUP BY album.aname";
	$result = $conn->query($sql);

	//Testing if the result worked properly
	if(!$result){
		trigger_error('Invalid query: ' . $conn->error);
	}
	
	if($result->num_rows > 0){
		//output data
		while($row = $result->fetch_assoc()){
			echo " ".$row["aname"]." <br>Artist: ".$row["artistName"]."<br>Release date: ".$row["releaseDate"]."<br>Genre: ".$row["gname"]."<br>Track count: ".$row["trackCount"]." <br>Playtime (in seconds):".$row["playtime"]."<br><br>";
		}
	}else{
		echo "No results";
	}
  ?>
  </body>