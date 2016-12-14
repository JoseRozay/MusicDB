

<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<center><header>MusicDB</header></center><br>
<div style="float:left; width:50%;">

    <form name="search" action="artistsearch.php" method="post">
        <fieldset>
          <label for="name">Artist Name:</label><br>
          <input type="text" id="artist" name="artistname" />

        <div class="button"> 
          <button  type="submit">Submit</button>
        </div>
      </fieldset>
    </form>

    <form name="search" action="labelsearch.php" method="post">
        <fieldset>
          <label for="name">Label Name:</label><br>
          <input type="text" id="label" name="labelname" />

        <div class="button"> 
          <button  type="submit">Submit</button>
        </div>
      </fieldset>
    </form>

</div>

<div style="float:left; width:50%;">
<form name="search" action="songsearch.php" method="post">
    <fieldset>
      <label for="name">Song Name:</label><br>
      <input type="text" id="song" name="songname" />

    <div class="button"> 
      <button  type="submit">Submit</button>
    </div>
  </fieldset>
</form>

<form name="search" action="albumsearch.php" method="post">
    <fieldset>
      <label for="name">Album Name:</label><br>
      <input type="text" id="album" name="albumname" />

    <div class="button"> 
      <button  type="submit">Submit</button>
    </div>
  </fieldset>
</form>

</div>
<div style="float:left; width:50%;">
<form name="search" action="genresearch.php" method="post">
    <fieldset>
      <label for="name">Genre Name:</label><br>
      <input type="text" id="genre" name="genrename" />

    <div class="button"> 
      <button  type="submit">Submit</button>
    </div>
  </fieldset>
</form>

</div>



</body>
</html>