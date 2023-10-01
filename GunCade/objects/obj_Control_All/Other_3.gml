/// @description auto saving!





ini_open("data.bob");

  ini_write_real("seed", "first time set", firstTimeAllSet);

  ini_write_real("seed", "HasSeed", hasSeed);
  ini_write_string("seed", "seed",  setSeed);


  ini_write_real("settings", "master volume", volume_Master);
  ini_write_real("settings", "volume sfx",    volume_Sfx);  
  ini_write_real("settings", "volume music",  volume_Music);  

  ini_write_real("settings", "scale",      screenScale);
  ini_write_real("settings", "fullscreen", fullscreen);


// playlist saved
 // playlist!
 var arrayPlayListL = array_length(playListSongActiveBools);
 
 var playlist_II = 0;
	 repeat(arrayPlayListL){
	 
	   ini_write_real("playlist", playlist_II, playListSongActiveBools[playlist_II]);	 
	   playlist_II++;
	 }



ini_close();