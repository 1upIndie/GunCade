/// @description auto saving!



ini_open("data.bob");

  ini_write_real("seed", "HasSeed", hasSeed);
  ini_write_string("seed", "seed",  setSeed);
  
ini_close();