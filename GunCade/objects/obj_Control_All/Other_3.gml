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



// choices saved
  ini_write_real("choice day 2", "clown take weapon", acceptClownBatton_Day_2);
  ini_write_real("choice day 2", "cop rebuy weapon" , acceptCopRebuyBatton_Day_2 );
  ini_write_real("choice day 2", "wife buy flowers" , wifePresentGivenDay2 );


  ini_write_real("choice day 3", "nun give ransom", nunChoise_Day3);
  ini_write_real("choice day 3", "nerd pick topic", nerdChoise_4Topics_Day3);
  ini_write_real("choice day 3", "weather sold weapon", soldToWeather_Day3 );

  ini_write_real("choice day 4", "eat macaron first try", grannyChoise_Day4);
  ini_write_real("choice day 4", "eat macaron second try", grannyChoise2_Day4);
  ini_write_real("choice day 4", "kyle sell first weapon", kyleChoise_Day4 );  
  ini_write_real("choice day 4", "wife baught flowers", wifeGivenPresentD4_day5 ); // auto
  ini_write_real("choice day 4", "twins sell weapons", soldToTwins_Day4);  

  ini_write_real("choice day 5", "clown take weapon", acceptClownGun_Day_5 );
  ini_write_real("choice day 5", "cop rebuy weapon" , copGivePistol_Day_5 );
  ini_write_real("choice day 5", "jez give money"   , giveJezMoney_Day_5  );
  ini_write_string("choice day 5", "jez or nerd ditch", jezOrNerd_Day_5  );  
  ini_write_real("choice day 5", "twins sold weapons", soldTwins_Day_4 ); // auto 
  ini_write_real("choice day 5", "kyle pay ransome", payKyleRansome_Day_5 );  
  
  ini_write_real("choice day 6", "eat macaron"  , eatMacaronGranny1_Day_6);  
  ini_write_real("choice day 6", "eat macaron 2", eatMacaronGranny2_Day_6);    
  ini_write_real("choice day 6", "duke sold gun" , soldToDuke_Day6);  
  ini_write_real("choice day 6", "granny auto buy" , grannyAutoBuy_Day6 );   
 
  ini_write_real("choice day 7", "twins sold gun"  , soldToTwinds_Day7);  
  ini_write_real("choice day 7", "klye sell gun"  , giveKyle_Gun2_Day_7); 
  ini_write_real("choice day 7", "klye pay ransom second chance"  , payKyleRansomeThisTime_Day_7); 
  ini_write_real("choice day 7", "klye auto sale gun"  , autoSale_kyleWeapon_Day_7); 

  ini_write_real("choice day 8", "duke sold gun"     , soldToDuke_Day8); 
  ini_write_real("choice day 8", "weather sold gun"  , soldToWeather_Day8); 

  ini_write_real("choice day 9", "clown take gun"  , takeGunClown_Day9); 
  ini_write_real("choice day 9", "kyle sell or give gun"  , sellGiveKyleWeapon_Day9); 

  ini_write_real("choice day 10", "cop tell truth with dealing with clown"  , tellHalfCopTruth_Day10); 
  ini_write_real("choice day 10", "not random sold gun"  , soldToNotRandom_Day10); 
  ini_write_real("choice day 10", "kyle pay 2nd ransom"  , payKyleRansome_Day_10); 


ini_close();



if ( clearSaveFile == true){ 
ini_open("data.bob");

  ini_write_real("settings", "master volume", 0.6);
  ini_write_real("settings", "volume sfx",    0.85);  
  ini_write_real("settings", "volume music",  0.3);  

  ini_write_real("settings", "scale",      2);
  ini_write_real("settings", "fullscreen", 0);


  ini_write_real("progress", "day to jump to",      101);
  ini_write_real("progress", "income office",       0);


ini_close();
	}
 	