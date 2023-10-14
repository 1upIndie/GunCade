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


  ini_write_real("progress", "day to jump to",      currentCutscene_DAY);
  ini_write_real("progress", "income office",       cashTotalInSave_Office);



// props baught!
var arrayPropsL = array_length( obj_Control_All.array_OfficeProp);
var arrayProps_I = 0;
repeat( arrayPropsL ) {
	  ini_write_real("props office baught", obj_Control_All.array_OfficeProp[arrayProps_I].prop_Name,  obj_Control_All.array_OfficeProp[arrayProps_I].prop_isUnlocked );
	  arrayProps_I++;
}

  
  



// playlist saved
 // playlist!
 var arrayPlayListL = array_length(playListSongActiveBools);
 
 var playlist_II = 0;
	 repeat(arrayPlayListL){
	 
	   ini_write_real("playlist", playlist_II, playListSongActiveBools[playlist_II]);	 
	   playlist_II++;
	 }



ini_close();



if ( clearSaveFile == true){ 
ini_open("data.bob");

  ini_write_real("settings", "master volume", 0.6);
  ini_write_real("settings", "volume sfx",    0.85);  
  ini_write_real("settings", "volume music",  0.3);  

  ini_write_real("settings", "scale",      2);
  ini_write_real("settings", "fullscreen", 0);


  ini_write_real("progress", "day to jump to",      0);
  ini_write_real("progress", "income office",       0);


ini_close();
	}
 	