

<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<center><header>MusicDB</header></center><br>
<div style="float:left; width:50%;">
<form action="artistsearch.php">
  <fieldset>
    <center>Artist name:<br>
    <input type="text" name="artistname" value="">
    <br>
    <input type="submit" value="Submit">
  </fieldset></center>
</form>

<form action="labelsearch.php">
  <fieldset>
   <center>Label name:<br>
    <input type="text" name="labelname" value="">
    <br>
    <input type="submit" value="Submit">
  </fieldset></center>
</form>

</div>


<div style="float:left; width:50%;">
<form action="songsearch.php">
  <fieldset>
    <center>Song name:<br>
    <input type="text" name="songname" value="">
    <br>
    <input type="submit" value="Submit">
  </fieldset></center>
</form>

<form action="albumsearch.php">
  <fieldset>
    <center>Album name:<br>
    <input type="text" name="albumname" value="">
    <br>
    <input type="submit" value="Submit">
  </fieldset></center>
</form>

</div>


</body>
</html>