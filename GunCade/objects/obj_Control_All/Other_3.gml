/// @description auto saving!



ini_open("data.bob");

  ini_write_real("seed", "HasSeed", hasSeed);
  ini_write_string("seed", "seed",  setSeed);


  ini_write_real("settings", "master volume", volume_Master);
  ini_write_real("settings", "volume sfx",    volume_Sfx);  
  ini_write_real("settings", "volume music",  volume_Music);  

  ini_write_real("settings", "scale",      screenScale);
  ini_write_real("settings", "fullscreen", fullscreen);


ini_close();