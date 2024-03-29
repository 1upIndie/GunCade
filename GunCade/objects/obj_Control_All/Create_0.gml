 /// @description Hier Beschreibung einfügen


audio_group_load( audiogroup_Music );
audio_group_load( audiogroup_SFX );


// fail save
clearSaveFile = false; // clears every time game is closed to default, no "real" saving then possible!

debug = true;
demo  = false;

randomize();


debugMiniGame = false; 
sound_Debug = false;


roomToJump = Room_Workspace;
roomToJump = room_Debug;
//roomToJump = room_StartScreen;
// roomToJump = room_DemoEnd;
// roomToJump = room_Office;
// roomToJump = room_DemoEnd;

alarm[0] = 4;
//room_goto(roomToJump);


fontSpriteNum       = font_add_sprite_ext(spr_Sprite_font_Numbers, "-0123456789$", true, 0   );
fontSpriteNumSilver = font_add_sprite_ext(spr_Sprite_font_NumbersSilver, "-0123456789$", true, 0   );

//draw_set_font(fontSpriteNum);


#region seed, set once/fixed values
hasSeed = 0;
setSeed = "";

ini_open("data.bob");

hasSeed  = ini_read_real("seed",   "HasSeed", 0);
setSeed  = ini_read_string("seed", "seed",   "");
ini_close();

if(hasSeed == true){

  random_set_seed(setSeed)
} else{
	
 randomize();
 setSeed = random_get_seed();
 hasSeed = true;

}


// timers
timeToSkipToOtherDay = 2*60; // after news show, skip then to same day but 1 to 12

#endregion


#region text prefix/suffixes / colors

  textPrefix    = "[font_Cutscene][scale, 0.9][c_white]"; // default for all 
 //textSuffixDialog    = "[/scale][/c]"; 
  textSuffix_Tab = "[/c][/scale]"; 
 
 
  textPrefixPlayer = "[font_Cutscene][scale, 0.8][#F9CE7B]";
  textSuffixDialogDialog = "[/scale][/c]";  
 
  textPrefix_Tab = "[font_Cutscene][scale, 1]";
  textSuffixDialog_Tab = "[/scale]";


  textCosts_Prefix = "[fontSpriteNum][scale, 1]";  // only used in minigame!
  textCosts_Suffix = "[/scale]";


  textCostsMiniGame_Prefix = "[spr_Sprite_font_NumbersSilver][scale, 0.5]";  // only used in minigame!
  textCostsMiniGame_Suffix = "[/scale]";

  textMoneyTotal_Prefix = "[spr_Sprite_font_NumbersSilver][scale, 0.5]";  // only used in minigame!
  textMoneyTotal_Suffix = "[/scale]";


// office only
  textDetail_CostOfficePrefix = "[spr_Sprite_font_Numbers][scale, 0.5][fa_center]";
  textDetail_CostOfficeSuffix = "[/c][/scale]"; 

    // value texts
   textResultDefault_OfficePrefix  = "[font_Cutscene][scale, 0.9][#E4E4E4]";
  // textResultDefault_OfficePrefixR = "[font_Cutscene][scale, 0.9][#E4E4E4][fa_right]";   
   textResultDefault_OfficePrefixR = "[font_Cutscene][scale, 0.9][#F4CF58][fa_right]";     
   textResultDefault_OfficeSuffix = "[/c][/scale]"; 

  // textResultTotalDefault_OfficePrefix = "[font_Cutscene][scale, 1.2][#F4F4F4]";
   textResultTotalDefault_OfficePrefix  = "[font_Cutscene][scale, 1.2][#F4CF58]";   
   textResultTotalDefault_OfficePrefixR = "[font_Cutscene][scale, 1.2][#F4CF58][fa_right]";      
   textResultTotalDefault_OfficeSuffix = "[/c][/scale]"; 



  // sorting by name
   textSortNamePrefix = "[font_Cutscene][scale, 0.5]";
   textSortNameSuffix = "[/scale]"; 

/// for weapons detail text box
  textDetail_HeadlinePrefix = "[font_Cutscene][scale, 1.5][c_gray]";
  textDetail_HeadlineSuffix = "[/c][/scale]"; 
 
  textDetail_CostPrefix = "[spr_Sprite_font_NumbersSilver][scale, 0.5][c_white]";
  textDetail_CostSuffix = "[/c][/scale]"; 

  textDetail_CashPrefix = "[spr_Sprite_font_Numbers][scale, 0.5][c_white]";
  textDetail_CashSuffix = "[/c][/scale]"; 

  textDetail_DescPrefix = "[font_Cutscene][scale, 1]";
  textDetail_DescSuffix = "[/scale]";


  textRadioSongOwner_Prefix = "[fnt_Radio_Owner][scale, 0.7][#94ABAE][fa_center]";
  textRadioSongOwner_Suffix = "[/c][/scale]";

  textRadioSongName_Prefix = "[fnt_Radio_Name][scale, 0.9][#94ABAE][fa_center]";
  textRadioSongName_Suffix = "[/c][/scale]";

  textRadioTimer_Prefix = "[fnt_RadioDigital][scale, 0.7][#94ABAE]";
  textRadioTimer_Suffix = "[/c][/scale]";

  textRadioMisc_Prefix = "[fnt_RadioDigitalThin][scale, 0.2][#22E1FB]";
  textRadioMisc_Suffix = "[/c][/scale]";

// for displaying additional text as bill!
  textBill_DescPrefix   = "[font_Cutscene][scale, 0.6][#ADACA6]"; // light gray
  textBill_DescSuffix   = "[/c][/scale]";

 // positions
 //moneyTxtX  = 718; // money old right side value
 //moneyTxtY  = 375; // money 
  moneyTxtX  = 35; // money 
  moneyTxtY  = 15; // money 
 
 
 // colors
 backgr_Dark_color = #0B0914;	
 
 
 // emotes and voice modulation
 var fixedPitch = 0.05
 fixed_Voice_PitchMin  = 1 - fixedPitch;
 fixed_Voice_PitchMax  = 1 + fixedPitch;
 
 fixed_EffectEmote_Size = 1;
 
#endregion

#region weapon texts + costs

static_Money_Tip = 50; // for perfect sale

function weaponCreate()constructor {
 
  weaponIndex       = 0;
  nameWeapon        = "";
  weaponSpr         = spr_Nothing;
  txt_Bill          = ""; // displayed!
  
  headLineText      = "";
  descriptionText1  = "";  
  descriptionText2  = ""; 

  costText          = "";
  cost              = 1;
  
  // fill in post hoc
  function fill_In(name___, spr___, index___){
  weaponIndex       = index___;
  nameWeapon        = name___;
  weaponSpr         = spr___; 
  }  
  
  

  stat_Power     = 1;  
  stat_Accuracy  = 1;
  stat_Range     = 1;  
  stat_FireRate  = 1;
  stat_Weight    = 1;
  
  function setStats( power_, accurracy, range_, fireRate_, weight_ ){

	  stat_Power      = power_;  
	  stat_Accuracy   = accurracy;
	  stat_Range      = range_;  
	  stat_FireRate   = fireRate_;
	  stat_Weight     = weight_;	  
  }
  
  // new
  detail_Spr = spr_Nothing;
  
  canHave_Ammo         = false;  
  canHave_LaserPointer = false;
  canHave_Muzzle       = false;  
  
  canHave_Stock        = false;  
  canHave_Optics       = false;  // small to big scope
  canHave_Grip         = false;  

  function setAttachments( cAmmo_, cLaser_, cMuzzle_, cStock_, cOptics, cGrip_){
    canHave_Ammo	     = cAmmo_;
    canHave_LaserPointer = cLaser_;
    canHave_Muzzle       = cMuzzle_;  
  
    canHave_Stock        = cStock_;  
    canHave_Optics       = cOptics;  
    canHave_Grip         = cGrip_;    
  }

} // end of constructor

array_DetailWeaponText = array_create(0);


//fill up with empty ones
var fill_I = 0;
repeat(100){
array_DetailWeaponText[fill_I] = new weaponCreate();
fill_I++;
}


// 0 pepper spray, 1 folding batt, 2 knife
// 10 scaringer, 11 9Oclock, 12 beagle
// 20 bolt, 21 lever, 22 250cal
// 30 tammy, 31woozie, 32 shmup
// 40 pump, 41 sawed off, 42 tripple
// 50 m16, 51 french, 52 ak
// 60 lmg, 61 grenadel, 62 mini, 63 bazooka
// 70 blow, 71 canon, 72 ac, 73 dc
// 80 ammo, 81 las, 82 muzzl, 83 stock. 84 optic, 85 grip


      // melee 0-10 pistols 10-20, rifles 20-30,  smg 30-40, shotgun 40-50, ar, 50-60, heavy 60-70, exotic 70-80, attachment 80-90	
var txtDetail_I = 0;
      array_DetailWeaponText[txtDetail_I].fill_In("melee 1", spr_MiniGame_Melee_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "melee 1"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 50;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Melee_1;	
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("melee 2", spr_MiniGame_Melee_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "melee 1"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 100;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Melee_2;		  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("melee 3", spr_MiniGame_Melee_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "melee 3"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 100;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Melee_3;		  
	  txtDetail_I++;  	  




txtDetail_I = 10;  // pistols
      array_DetailWeaponText[txtDetail_I].fill_In("pistol 1", spr_MiniGame_Pistol_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Scaringer"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 500;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Pistol_1;
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,0,0,0,0);
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("pistol 2", spr_MiniGame_Pistol_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "9 O'Clock"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 750;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Pistol_2;	 
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 1,1,0,1,0);	  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("pistol 3", spr_MiniGame_Pistol_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Beagle"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 900;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Pistol_3;	 	
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,0,0,0,0);	  
	  txtDetail_I++;  



txtDetail_I = 20; // rifles
      array_DetailWeaponText[txtDetail_I].fill_In("rifle 1", spr_MiniGame_Rifle_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Bolt action"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 700;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Rifle_1;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,0,0,0,0);	 	  
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("rifle 2", spr_MiniGame_Rifle_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Lever action"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 600;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Rifle_2;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,0,0,0,0);	 	  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("rifle 3", spr_MiniGame_Rifle_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "250 Caliber"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 800;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Rifle_3;		 
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,0,0,0,0);	 	  
	  txtDetail_I++;  




txtDetail_I = 30;  // smg
      array_DetailWeaponText[txtDetail_I].fill_In("smg 1", spr_MiniGame_Smg_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Tammy Gun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1500;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Smg_1;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,1,0,1,1);			  
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("smg 2", spr_MiniGame_Smg_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Woozie"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1800;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Smg_2;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 1,1,1,1,1);		  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("smg 3", spr_MiniGame_Smg_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "SHMUMP"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 2000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Smg_3;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 1,1,1,1,1);		  
	  txtDetail_I++;  


txtDetail_I = 40;  // shotguns
      array_DetailWeaponText[txtDetail_I].fill_In("shotgun 1", spr_MiniGame_Shotgun_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Pump"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 400;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Shotgun_1;	  
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,1,0,1,1);		  
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("shotgun 2", spr_MiniGame_Shotgun_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Saw'd-Off"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 800;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Shotgun_2;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,0,0,1,0);			  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("shotgun 3", spr_MiniGame_Shotgun_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Triple Barrel"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Shotgun_3;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,1,0,1,1);			  
	  txtDetail_I++; 



txtDetail_I = 50;   // military rifles
      array_DetailWeaponText[txtDetail_I].fill_In("ar 1", spr_MiniGame_Ar_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "M 16"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 2000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Ar_1;		
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 1,1,1,1,1);			  
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("ar 2", spr_MiniGame_Ar_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "French ar"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 2500;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Ar_2;		
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 1,1,1,1,1);	  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("ar 3", spr_MiniGame_Ar_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Ak 47"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 50;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Ar_3;		
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 1,1,1,1,1);	  
	  txtDetail_I++;



txtDetail_I = 60;  // exotics -> swapped to heavy

      array_DetailWeaponText[txtDetail_I].fill_In("heavy 1", spr_MiniGame_Heavy_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "lmg"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 4000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Heavy_1;		  
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,0,1,1,0);	  	  
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("heavy 2", spr_MiniGame_Heavy_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Grenade launcher"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 8000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Heavy_2;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,0,0,0,0);	  	  
	  txtDetail_I++;	  


      array_DetailWeaponText[txtDetail_I].fill_In("heavy 3", spr_MiniGame_Heavy_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Minigun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 10000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Heavy_3;		
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,0,0,0,0);	  	  
	  txtDetail_I++;
	    
      array_DetailWeaponText[txtDetail_I].fill_In("heavy 4", spr_MiniGame_Heavy_4, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Bazukem"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 15000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Heavy_4;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(1, 0,0,0,0,0);	  	  
	  txtDetail_I++;




txtDetail_I = 70;  // exotics NEW

      array_DetailWeaponText[txtDetail_I].fill_In("exotic 1", spr_MiniGame_Exotic_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Blowdart gun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 120;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Exotics_1;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(0, 0,0,0,0,0);		  
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("exotic 2", spr_MiniGame_Exotic_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Canon"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 4000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Exotics_2;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(0, 0,0,0,0,0);		  
	  txtDetail_I++;	  
   
      
      // ac
      array_DetailWeaponText[txtDetail_I].fill_In("exotic 3", spr_MiniGame_Exotic_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "AC gun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 10000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Exotics_3;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(0, 0,0,0,0,0);		  
	  txtDetail_I++;

      // dc gun
      array_DetailWeaponText[txtDetail_I].fill_In("exotic 4", spr_MiniGame_Exotic_4, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "DC gun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 10000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Exotics_4;	
	  array_DetailWeaponText[txtDetail_I].setAttachments(0, 0,0,0,0,0);		  
	  txtDetail_I++;


txtDetail_I = 80;  // from 70 to 80, added ammo

      // ammo !
      array_DetailWeaponText[txtDetail_I].fill_In("attachment ammo", spr_MiniGame_Attach_Ammo, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Ammo"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 20;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Attachment_Ammo;	
	  
	  array_DetailWeaponText[txtDetail_I].txt_Bill         = textBill_DescPrefix + "+" + string(array_DetailWeaponText[txtDetail_I].cost) + "$  Ammunition" + textBill_DescSuffix;
	  txtDetail_I++;
	  

      array_DetailWeaponText[txtDetail_I].fill_In("attachment laser", spr_MiniGame_Attach_LaserP, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Laser pointer"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 75;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Attachment_Laser;	   
	  
	  array_DetailWeaponText[txtDetail_I].txt_Bill         = textBill_DescPrefix + "+" + string(array_DetailWeaponText[txtDetail_I].cost) + "$  Laser pointer" + textBill_DescSuffix;	  
	  txtDetail_I++;	  

      // 82
      array_DetailWeaponText[txtDetail_I].fill_In("attachment muzzle", spr_MiniGame_Attach_Muzzle, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Muzzle"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 50;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Attachment_Muzzle;		  
	  
	  array_DetailWeaponText[txtDetail_I].txt_Bill         = textBill_DescPrefix + "+" + string(array_DetailWeaponText[txtDetail_I].cost) + "$  Muzzle" + textBill_DescSuffix;		  
	  txtDetail_I++;	  



	  
      array_DetailWeaponText[txtDetail_I].fill_In("attachment stock", spr_MiniGame_Attach_Stock, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Stock"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 75;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Attachment_Stock;		 
	  
	  array_DetailWeaponText[txtDetail_I].txt_Bill         = textBill_DescPrefix + "+" + string(array_DetailWeaponText[txtDetail_I].cost) + "$  Stock" + textBill_DescSuffix;		  
	  txtDetail_I++;	  

      // 84
      array_DetailWeaponText[txtDetail_I].fill_In("attachment optics", spr_MiniGame_Attach_Optics, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Optics"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 125;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Attachment_Optics;	 
	  
	  array_DetailWeaponText[txtDetail_I].txt_Bill         = textBill_DescPrefix + "+" + string(array_DetailWeaponText[txtDetail_I].cost) + "$  Optics" + textBill_DescSuffix;	  
	  txtDetail_I++;	  


      array_DetailWeaponText[txtDetail_I].fill_In("attachment grip", spr_MiniGame_Attach_Grip, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Grip"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 50;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  array_DetailWeaponText[txtDetail_I].detail_Spr       = spr_WeaponDetail_Attachment_Grip;	 	
	  
	  array_DetailWeaponText[txtDetail_I].txt_Bill         = textBill_DescPrefix + "+" + string(array_DetailWeaponText[txtDetail_I].cost) + "$  Grip" + textBill_DescSuffix;		  
	  txtDetail_I++;  
	  
	  
	  
	  
#endregion

#region particle collection!

garbageCollect_Particles_Index = 0;
garbageCollect_Particles       = array_create(0);

#endregion


#region tv programm


array_programmDay_1  = array_create(0);
array_programmDay_2  = array_create(0);
array_programmDay_3  = array_create(0);
array_programmDay_4  = array_create(0);
array_programmDay_5  = array_create(0);
array_programmDay_6  = array_create(0);
array_programmDay_7  = array_create(0);
array_programmDay_8  = array_create(0);
array_programmDay_9  = array_create(0);
array_programmDay_10 = array_create(0);
array_programmDay_11 = array_create(0);
array_programmDay_12 = array_create(0);



// day 1
array_programmDay_1[0] = obj_TvProgramm_Dance; // dance
array_programmDay_1[1] = obj_TvProgramm_News; // news
array_programmDay_1[2] = obj_TvProgramm_SecurityCam; // security
array_programmDay_1[3] = obj_TvProgramm_Commercials; // security


function createTvProgramm( tv_Index_, tv_spr_, name__ ) constructor {

     
	 tv_Spr         = tv_spr_;
	 tv_TotalFrames = sprite_get_number(tv_spr_);
	 
     var tvIndex = 0;	var totalFrames_ = 50;
	 tv_Move      = array_create(totalFrames_, "");
	 tv_Fade      = array_create(totalFrames_, "");	 
     tv_FrameTime = array_create(totalFrames_,  10);

	 tv_HasNews      = array_create(totalFrames_, 0);  // display string or not
     tv_HasNewsTxt   = array_create(totalFrames_, "");
     tv_HasNewsTxtS  = array_create(totalFrames_, "");
	 
    function setTv_Frame( tvIndex_,  tvMove_, tvFade_, tvFrameTime_,  ){
	 tv_Move[tvIndex_]      = tvMove_;
	 tv_Fade[tvIndex_]      = tvFade_;   
     tv_FrameTime[tvIndex_] = tvFrameTime_;
   } 
   
   
 prefixTvNewsTicker = "[font_TvNews_Ticker][scale, 0.5][c_white]";
 suffixTvNewsTicker = "[/c][/scale]";
 prefixTvNewsTickerS = "[font_TvNews_Ticker][scale, 0.2][c_white]";
 suffixTvNewsTickerS = "[/c][/scale]"; 
 
    function setTv_News( tvIndex_,  tvHasNews_, tvNewsTxt_ ){
       tv_HasNews[tvIndex_]    = tvHasNews_;  // 0, "normal", "small"
       tv_HasNewsTxt[tvIndex_]  = prefixTvNewsTicker   + tvNewsTxt_ + suffixTvNewsTicker;
       tv_HasNewsTxtS[tvIndex_] = prefixTvNewsTickerS  + tvNewsTxt_ + suffixTvNewsTickerS;	   	   
	}
   
   
}

arrayTv_Programms = array_create(0);
var tvIndexI = 0;
var tvDefaultTime             = 240;
var tvDefaultTimeShort        = 80;
var tvDefaultTimeNews         = 20;
var tvDefaultTimeSecurityCam  = 460;
var tvDefaultTimeCommercial   = 55;


// dance
arrayTv_Programms[tvIndexI] = new createTvProgramm(tvIndexI, spr_Tv_Programm_Dance, "dance dance"  );
arrayTv_Programms[tvIndexI].setTv_Frame(0, "move left", "",tvDefaultTime );
arrayTv_Programms[tvIndexI].setTv_Frame(1, "move right", "",tvDefaultTime );
arrayTv_Programms[tvIndexI].setTv_Frame(2, "zoom", "", tvDefaultTime );
arrayTv_Programms[tvIndexI].setTv_Frame(3, "zoom", "", tvDefaultTimeShort );

arrayTv_Programms[tvIndexI].setTv_Frame(4, "move left", "",tvDefaultTime );
arrayTv_Programms[tvIndexI].setTv_Frame(5, "move right", "" ,tvDefaultTime );
arrayTv_Programms[tvIndexI].setTv_Frame(6, "zoom", "" ,tvDefaultTime );
arrayTv_Programms[tvIndexI].setTv_Frame(7, "zoom", "", tvDefaultTimeShort );

arrayTv_Programms[tvIndexI].setTv_Frame(8, "move left", "",tvDefaultTime );
arrayTv_Programms[tvIndexI].setTv_Frame(9, "move right", "" ,tvDefaultTime );
arrayTv_Programms[tvIndexI].setTv_Frame(10, "zoom", "" ,tvDefaultTime );
arrayTv_Programms[tvIndexI].setTv_Frame(11, "zoom", "", tvDefaultTimeShort );

arrayTv_Programms[tvIndexI].setTv_Frame(12, "move left", "" ,tvDefaultTime );
arrayTv_Programms[tvIndexI].setTv_Frame(13, "move right", "" ,tvDefaultTime );
arrayTv_Programms[tvIndexI].setTv_Frame(14, "zoom", "" ,tvDefaultTime );
tvIndexI++;


var txtTv = "Breaking news, crime increase";
arrayTv_Programms[tvIndexI] = new createTvProgramm(tvIndexI, spr_Tv_Programm_News, "news"  );
arrayTv_Programms[tvIndexI].setTv_Frame(0, "", "", tvDefaultTimeNews );
arrayTv_Programms[tvIndexI].setTv_Frame(1, "", "", tvDefaultTimeNews );
arrayTv_Programms[tvIndexI].setTv_Frame(2, "", "", tvDefaultTimeNews );
arrayTv_Programms[tvIndexI].setTv_Frame(3, "", "", tvDefaultTimeNews );

arrayTv_Programms[tvIndexI].setTv_News(0, 1, txtTv);
arrayTv_Programms[tvIndexI].setTv_News(1, 1, txtTv);
arrayTv_Programms[tvIndexI].setTv_News(2, 1, txtTv);
arrayTv_Programms[tvIndexI].setTv_News(3, 1, txtTv);
tvIndexI++;

// security cam 2
arrayTv_Programms[tvIndexI] = new createTvProgramm(tvIndexI, spr_Tv_Programm_SecurityCam, "security cam"  );
arrayTv_Programms[tvIndexI].setTv_Frame(0, "move left", "" , tvDefaultTimeSecurityCam );
arrayTv_Programms[tvIndexI].setTv_Frame(1, "move left", "" ,tvDefaultTimeSecurityCam );
arrayTv_Programms[tvIndexI].setTv_Frame(2, "", "" , tvDefaultTimeSecurityCam );
arrayTv_Programms[tvIndexI].setTv_Frame(3, "", "" ,tvDefaultTimeSecurityCam );
arrayTv_Programms[tvIndexI].setTv_Frame(4, "", "" ,tvDefaultTimeSecurityCam );
tvIndexI++;


// 3
arrayTv_Programms[tvIndexI] = new createTvProgramm(tvIndexI, spr_Tv_Programm_Commercial, "commercial channel"  );
var interTvCommercialI = 0;
repeat(arrayTv_Programms[tvIndexI].tv_TotalFrames){
arrayTv_Programms[tvIndexI].setTv_Frame(interTvCommercialI, "", "" , tvDefaultTimeCommercial );
interTvCommercialI++;
}



tvIndexI++;

#endregion

#region sound fixed + songs + auto audio clean up + screen shake

// cleaning up in interval!
audio_cleanupArray = array_create(0);
audioCleanup = round(10 *60);
alarm[2] = audioCleanup;


audioFixed_FadeOut = 500;
audioFixed_FadeIn  = 500;
 
 sfxPitchMin_Thump = 0.95;
 sfxPitchMax_Thump = 1.05; 

 sfxCoinsMin_Thump = 0.95;
 sfxCoinsMax_Thump = 1.05; 

function createSong( id_, isUnique_,   song_, nameOwner_, nameSong_, length_, isUnlocked_ ) constructor{

  songId       = id_;
  songIsUnique = isUnique_; // if part of auto play or not!
  
  
  songSnd    = song_;
  songOwner  = nameOwner_;
  songName   = nameSong_;  
  songLength = length_;  
  
  // if unlocked and is set on auto play!
  songAutoPlayEnabled = true;
  songIsUnlocked      = isUnlocked_; 
}

arraySongs = array_create(0);
var songI = 0;

 arraySongs[songI] = new createSong(songI, 0, snd_1_Mokka__Retrogate , "Mokka", "Retrogate" , "(3:17)", 1 ); songI++;
 arraySongs[songI] = new createSong(songI, 0, snd_2_Mokka__Home, "Mokka", "Home", "(2:43)", 1 ); songI++;
 arraySongs[songI] = new createSong(songI, 0, snd_3_Ncalib__Galaxy_420, "NCALIB", "Galaxy 420", "(3:45)", 1 ); songI++;
 arraySongs[songI] = new createSong(songI, 0, snd_4_Mokka__Abstract_Feeling, "Mokka", "Abstract Feeling", "(2:08)", 1 ); songI++;
 arraySongs[songI] = new createSong(songI, 0, snd_5_Mokka__You_and_Me, "Mokka", "You and Me", "(2:30)", 1 ); songI++;
 arraySongs[songI] = new createSong(songI, 0, snd_6_Mokka_Early_Morning, "Mokka", "Early Morning", "(2:35)", 1 ); songI++;
 arraySongs[songI] = new createSong(songI, 0, snd_7_Mokka__Pandas_Dream, "Mokka", "Pandas Dream", "(3:08)", 1 ); songI++;
 arraySongs[songI] = new createSong(songI, 0, snd_8_Mokka__Pray_for_Us, "Mokka", "Pray for Us", "(2:02)", 1 ); songI++;
 arraySongs[songI] = new createSong(songI, 0, snd_9_Mokka__Synthetic_pleasures, "Mokka", "Synthetic Pleasures", "(2:08)", 1 ); songI++;
 arraySongs[songI] = new createSong(songI, 0, snd_10_DavidKBD__The_Hidden_One, "DavidKBD", "The Hidden One", "(2:02)", 1 ); songI++;
 arraySongs[songI] = new createSong(songI, 0, snd_11_Phat_Phrog_Studios__Adventure_Game_Music_Collection, "Phat Phrong Stuidos", "Adventure game music", "(3:28)", 1 ); songI++;  // 10




arraySongsPlaylist = array_create(0);


// screenshake
  screenShakeTime_PressButton    = 8;
  screenShakeTime_OfficeResult1  = 5;
  screenShakeTime_OfficeResult2  = 8;

  screenShakeAmount_PressButton    = 2;
  screenShakeAmount_OfficeResult1  = 2;
  screenShakeAmount_OfficeResult2  = 6;

  screenShakeTime_PressButtonSoft    = 4;
  screenShakeAmount_PressButtonSoft  = 2;

  screenShakeTime_PressButtonToggle    = 2; // for left right subtle toggle
  screenShakeAmount_PressButtonToggle  = 1;



 screenShakeTime_Hard   = 20;
 screenShakeTime_Soft   = 10; 
 screenShakeTime_Super  = 15;
 screenShakeTime_GUI    = 15;

 screenShakeAmount_Hard  = 6;
 screenShakeAmount_Soft  = 4; 
 screenShakeAmount_Super = 8; 
 screenShakeAmount_Gui   = 3;  

#endregion

#region unlocked


unlocked_WeaponType_Melee_       = true;
unlocked_WeaponType_Pistol_      = true;
unlocked_WeaponType_Rifle_       = true;

unlocked_WeaponType_Smg_         = true;
unlocked_WeaponType_Shotgun_     = true;
unlocked_WeaponType_ARifle_      = true;

unlocked_WeaponType_Heavy_       = true;
unlocked_WeaponType_Exotic_      = true;
unlocked_WeaponType_Accessory_   = true;


// specfic weapons unlocked
unlocked_WeaponType_Melee[1] = true;
unlocked_WeaponType_Melee[2] = true;
unlocked_WeaponType_Melee[3] = true;
unlocked_WeaponType_Melee[4] = true;

unlocked_WeaponType_Pistol[1] = true;
unlocked_WeaponType_Pistol[2] = true;
unlocked_WeaponType_Pistol[3] = true;
unlocked_WeaponType_Pistol[4] = true;

unlocked_WeaponType_Rifle[1] = true;
unlocked_WeaponType_Rifle[2] = true;
unlocked_WeaponType_Rifle[3] = true;
unlocked_WeaponType_Rifle[4] = true;


unlocked_WeaponType_Smg[1] = true;
unlocked_WeaponType_Smg[2] = true;
unlocked_WeaponType_Smg[3] = true;
unlocked_WeaponType_Smg[4] = true;

unlocked_WeaponType_Shotgun[1] = true;
unlocked_WeaponType_Shotgun[2] = true;
unlocked_WeaponType_Shotgun[3] = true;
unlocked_WeaponType_Shotgun[4] = true;

unlocked_WeaponType_Ar[1] = true;
unlocked_WeaponType_Ar[2] = true;
unlocked_WeaponType_Ar[3] = true;
unlocked_WeaponType_Ar[4] = true;


unlocked_WeaponType_Heavy[1] = true;
unlocked_WeaponType_Heavy[2] = true;
unlocked_WeaponType_Heavy[3] = true;
unlocked_WeaponType_Heavy[4] = true;
unlocked_WeaponType_Heavy[5] = true;

unlocked_WeaponType_Exotic[1] = true; // blowdart
unlocked_WeaponType_Exotic[2] = 0; // canon
unlocked_WeaponType_Exotic[3] = 0; // ac
unlocked_WeaponType_Exotic[4] = 0; // dc
unlocked_WeaponType_Exotic[5] = 0;


unlocked_WeaponType_Accessory[1] = true;
unlocked_WeaponType_Accessory[2] = true;
unlocked_WeaponType_Accessory[3] = true;
unlocked_WeaponType_Accessory[4] = true;
unlocked_WeaponType_Accessory[5] = true;
unlocked_WeaponType_Accessory[6] = true;

//// office unlocked!
function createOffice_Prop( id_, name_, cost_, unlockedByday_, endsByDay_ , isUnlocked_,  spr_, x_, y_  ) constructor {
   
   prop_Name           = name_;
   prop_Cost           = cost_;
   prop_UnlockedByDay  = unlockedByday_;
   prop_EndsByDay      = endsByDay_;   
   prop_isUnlocked     = isUnlocked_;   
   
   prop_Spr            = spr_;
   prop_X              = x_;   
   prop_Y              = y_;  
   
   
	   prop_Pop_Spr = spr_Nothing;
	   prop_Pop_X   = 0;
	   prop_Pop_Y   = 0;   
   
	   function setOffice_PopUp( pop_Spr_, pop_X, pop_Y ) {
		   prop_Pop_Spr =  pop_Spr_;
		   prop_Pop_X   =  pop_X;
		   prop_Pop_Y   =  pop_Y;    
	   }
   
   
}

var officeProp_I = 0;
array_OfficeProp = array_create(0);


array_OfficeProp[officeProp_I] = new createOffice_Prop(officeProp_I, "Hawaii", 30000, 0, 999, 0, spr_Office_Hawaii, 1177,122 );  // 0
  array_OfficeProp[officeProp_I].setOffice_PopUp( spr_Office_Hawaii_pop, 756, 100 ); officeProp_I++;
  
array_OfficeProp[officeProp_I] = new createOffice_Prop(officeProp_I, "Car", 500, 0, 999, 0, spr_Office_Car, 572,513 );  // 1
  array_OfficeProp[officeProp_I].setOffice_PopUp( spr_Office_Car_pop, 825, 255 ); officeProp_I++;  // same
  
array_OfficeProp[officeProp_I] = new createOffice_Prop(officeProp_I, "Coffee", 8000, 0, 999, 0, spr_Office_CoffeeMachine, 1258,548 );  // 2
  array_OfficeProp[officeProp_I].setOffice_PopUp( spr_Office_Coffee_pop, 825, 255 ); officeProp_I++; // same

array_OfficeProp[officeProp_I] = new createOffice_Prop(officeProp_I, "Flowers", 120, 0, 3, 0, spr_Office_Flowers, 741, 418 );  // 3
  array_OfficeProp[officeProp_I].setOffice_PopUp( spr_Office_Flowers_pop, 276, 402 ); officeProp_I++; 

array_OfficeProp[officeProp_I] = new createOffice_Prop(officeProp_I, "Mono", 350, 2, 3, 0, spr_Office_Mono, 792, 353 );  // 4
  array_OfficeProp[officeProp_I].setOffice_PopUp( spr_Office_Mono_pop, 369, 226 ); officeProp_I++;  

array_OfficeProp[officeProp_I] = new createOffice_Prop(officeProp_I, "Permit", 9999, 99, 99, 0, spr_Office_Flowers, 999, 999 ); // 5
  array_OfficeProp[officeProp_I].setOffice_PopUp( spr_Office_Mono_pop, 999, 999 ); officeProp_I++;  

#endregion



currentCutscene_DAY = 101; // start with tv!
currentCutscene     = 0;

current_SongIndex = 0; // important for playback!

#region choices and saved values through the game // temp, passive costs (kyle, wife, inventory)

volume_Master = 1;
volume_Sfx    = 1;
volume_Music  = 1;

screenScale  = 1; // default value!
fullscreen = false;

firstTimeAllSet = false;
// cash saved
var cashI = 1;


// bill system for office! extra expenses not counted in!
tempDay_Sold               = array_create(0);
tempDay_Tips               = array_create(0);
tempDay_Service            = array_create(0); // perfect, good, average, no service
 
 // test debug!
 tempDay_Sold[0] = 200;
 tempDay_Sold[1] = 100; 
 tempDay_Sold[2] = 50; 
 
 tempDay_Tips[0] = 0;
 tempDay_Tips[1] = 75; 
 tempDay_Tips[2] = 0; 
 
 tempDay_Service[0] = "perfect";
 tempDay_Service[1] = "good"; 
 tempDay_Service[2] = "good";   
 
tempDay_Costs_NewWeapons   = 0; // credit!
tempDay_Costs_Wife         = 0;
tempDay_Costs_Kyle         = 0;


// total value only shown in office!
cashTotalInSave_Office = 0; // the total amount of money available!  Important!!
cashSumOnDay           = 0;     // money earned during day!


acceptClownBatton_Day_2         = false; // this time clown offers a batton
acceptCopRebuyBatton_Day_2      = false; // if rebuys same button, you got a permit


wifePresentGivenDay2      = false;
nunChoise_Day3            = false; // if trying to refuse to give money to nun
nerdChoise_4Topics_Day3   = false; // 1-4
soldToWeather_Day3        = false;


grannyChoise_Day4         = false;    // eat a macaron first try
grannyChoise2_Day4        = false; // eat a macaron second attempts try
kyleChoise_Day4           = false;    // sell first weapon to kyle
wifeGivenPresentD4_day5   = false;    
soldToTwins_Day4          = false;


acceptClownGun_Day_5      = false; // this time clown offers a gun
copGivePistol_Day_5       = false; // retake gun
giveJezMoney_Day_5        = false; // give jez for concert
jezOrNerd_Day_5           = ""; //"jez"  "nerd"
soldTwins_Day_4           = false;  // sold to twins
payKyleRansome_Day_5      = false;


payKyleRansome_Day_5      = false;  // paying randsome day 5
eatMacaronGranny1_Day_6   = false;   //
eatMacaronGranny2_Day_6   = false;   // 
soldToDuke_Day6           = false;
grannyAutoBuy_Day6        = false;

soldToTwinds_Day7             = false;
giveKyle_Gun2_Day_7           = false; // giving kyle weapon (when rescuded before)
payKyleRansomeThisTime_Day_7  = false; // paying randsome next time (second chance)
autoSale_kyleWeapon_Day_7     =  false; // check if not giveKyle_Gun2_Day_7 is the same

soldToDuke_Day8               = false; /// maybe remove
soldToWeather_Day8            = false;

takeGunClown_Day9             = false;
sellGiveKyleWeapon_Day9       = false;

tellHalfCopTruth_Day10        = false;
soldToNotRandom_Day10         = false;
payKyleRansome_Day_10        = false;


// playlist value -> not really bools, but index of song or -999 as not set!
playListSongActiveBools = array_create(10, -999); // saved and set the song array auto!


// daily value costs of wife and kyle
function createCosts_WifeKyle( day_ , cost_Kyle_, cost_Wife_, newWeapons_ ) constructor {
	 cost_Kyle   =   cost_Kyle_; 
	 cost_Wife   =   cost_Wife_; 
	 newWeapons  =   newWeapons_;
}


var costs_KyleWife_I = 0;
array_Costs_KyleWife = array_create(0);
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, -2000 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;
  array_Costs_KyleWife[costs_KyleWife_I] = new createCosts_WifeKyle(costs_KyleWife_I,  -150, -200, 0 ); costs_KyleWife_I++;

#endregion

function Createcutscene(day_, isNews_) constructor {
	
  isNews = isNews_;	
  var maxBlocks = 1200;
 // sprBgr      = bgrSpr_; // default!
  totalBlocks = maxBlocks; // added up in each function
 
 
 var indexSet = 0;
 repeat(maxBlocks){
 	  dialogBlock_SprIdleStatic_1_[indexSet]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[indexSet]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[indexSet]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[indexSet]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[indexSet]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[indexSet]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[indexSet]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[indexSet]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[indexSet]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[indexSet]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[indexSet]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[indexSet]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[indexSet]         = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[indexSet]         = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[indexSet]         = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[indexSet]               = "";	  
	  dialogBlock_Txt[indexSet]                = ""; 	
	  dialogBlock_Sound[indexSet]              = ""; // sound effect on text scrolling 
	  dialogBlock_Txt_PersonActive[indexSet]   = 1; 	  // who is talking	  
	  dialogBlock_LoadIn[indexSet]	           = noone;	  // used for minigame loading
	  
indexSet++;	  
 }
 
 



	  function setSprite( index_, SlotX,  person_Mood_,  sprSwap ){
		  var sprIdleStatic   = spr_Nothing;
		  var sprIdle_        = spr_Nothing; 
		  var sprTalkStatic_  = spr_Nothing; 		  
		  var sprTalk_        = spr_Nothing; 		  
		  
		  
		  
		  // override!
			switch(person_Mood_){		  
					  

#region Jez


			 /////// JEZ		  
			  case  "jez default":    
				   sprIdleStatic   = spr_Dialog_Jez_SingleImage;                // single image, static
				   sprIdle_        = spr_Dialog_Jez_JustBlink;                  // just blink
				   sprTalkStatic_  = spr_Dialog_Jez_TalkNoBlink; 		        // talking, no blinking   
				   sprTalk_        = spr_Dialog_Jez_Talk_Blink; 		break;  // talking, + blink 

			  case  "jez angry": 			    
				   sprIdleStatic   = spr_Dialog_Jez_Angry_SingleImage;
				   sprIdle_        = spr_Dialog_Jez_Angry_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Jez_TalkNoBlink; 		        // talking, no blinking   
				   sprTalk_        = spr_Dialog_Jez_Talk_Blink; 		break;  // talking, + blink  

			  case  "jez disgusted": 			  
				   sprIdleStatic   = spr_Dialog_Jez_Disgusted_SingleImage;
				   sprIdle_        = spr_Dialog_Jez_Disgusted_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Jez_TalkNoBlink; 		        // talking, no blinking   
				   sprTalk_        = spr_Dialog_Jez_Talk_Blink; 		break;  // talking, + blink 

			  case  "jez smiling": 	 		  
				   sprIdleStatic   = spr_Dialog_Jez_SingleImage;
				   sprIdle_        = spr_Dialog_Jez_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Jez_TalkNoBlink; 		        // talking, no blinking   
				   sprTalk_        = spr_Dialog_Jez_Talk_Blink; 		break;  // talking, + blink    

			  case  "jez flirting": 			  
				   sprIdleStatic   = spr_Dialog_Jez_Flirting_SingleImage;
				   sprIdle_        = spr_Dialog_Jez_Flirting_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Jez_Flirting_TalkNoBlink; 		        // talking, no blinking   
				   sprTalk_        = spr_Dialog_Jez_Flirting_Talk_Blink; 		break;  // talking, + blink    

			  case  "jez dismissive": 			  
				   sprIdleStatic   = spr_Dialog_Jez_Dismissive_SingleImage;
				   sprIdle_        = spr_Dialog_Jez_Dismissive_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Jez_TalkNoBlink; 		        // talking, no blinking   
				   sprTalk_        = spr_Dialog_Jez_Talk_Blink; 		break;  // talking, + blink  	
				   
#endregion

#region Victor

			 /////// Victor	
			  case  "victor default":  
				   sprIdleStatic   = spr_Dialog_Victor_SingleImage;              // single image, static
				   sprIdle_        = spr_Dialog_Victor_SingleImage;             // just blink
				   sprTalkStatic_  = spr_Dialog_Victor_Talk; 		        // talking, no blinking   
				   sprTalk_        = spr_Dialog_Victor_Talk; 		  break;	// talking, + blink 


			  case  "victor angry":  
				   sprIdleStatic   = spr_Dialog_VictorAngry_SingleImage;
				   sprIdle_        = spr_Dialog_VictorAngry_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Victor_Talk; 		  
				   sprTalk_        = spr_Dialog_Victor_Talk; 		    break;
				   
			  case  "victor smiling":  
				   sprIdleStatic   = spr_Dialog_VictorSmiling_SingleImage;
				   sprIdle_        = spr_Dialog_VictorSmiling_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Victor_Talk; 		  
				   sprTalk_        = spr_Dialog_Victor_Talk; 		    break;	

			  case  "victor grumpy":  
				   sprIdleStatic   = spr_Dialog_VictorGrumpy_SingleImage;
				   sprIdle_        = spr_Dialog_VictorGrumpy_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Victor_Talk; 		  
				   sprTalk_        = spr_Dialog_Victor_Talk; 		    break;	

				   
			  case  "victor dismissive":  
				   sprIdleStatic   = spr_Dialog_VictorDismissive_SingleImage;
				   sprIdle_        = spr_Dialog_VictorDismissive_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Victor_Talk; 		  
				   sprTalk_        = spr_Dialog_Victor_Talk; 		  break;
				   
				   
#endregion

#region Kyle

			 /////// Kyle	
			  case  "kyle default":		  
				   sprIdleStatic   = spr_Dialog_Kyle_SingleImage;         // single image, static
				   sprIdle_        = spr_Dialog_Kyle_JustBlink;           // just blink
				   sprTalkStatic_  = spr_Dialog_Kyle_TalkNoBlink; 	      // talking, no blinking	  
				   sprTalk_        = spr_Dialog_Kyle_Talk_Blink; break;   // talking, + blink


			  case  "kyle angry":		  
				   sprIdleStatic   = spr_Dialog_Kyle_Angry_SingleImage;     // single image, static
				   sprIdle_        = spr_Dialog_Kyle_Angry_JustBlink;   // just blink
				   sprTalkStatic_  = spr_Dialog_Kyle_TalkNoBlink; 	      // talking, no blinking	  
				   sprTalk_        = spr_Dialog_Kyle_Talk_Blink; break;   // talking, + blink
	

			  case  "kyle smiling":		  
				   sprIdleStatic   = spr_Dialog_KyleHappy_SingleImage;
				   sprIdle_        = spr_Dialog_KyleHappy_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Kyle_TalkNoBlink; 	      // talking, no blinking	  
				   sprTalk_        = spr_Dialog_Kyle_Talk_Blink; break;   // talking, + blink

	
			  case  "kyle dismissive":		  
				   sprIdleStatic   = spr_Dialog_KyleDismissive_SingleImage;
				   sprIdle_        = spr_Dialog_KyleDismissive_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Kyle_TalkNoBlink; 	      // talking, no blinking	  
				   sprTalk_        = spr_Dialog_Kyle_Talk_Blink; break;   // talking, + blink

			  case  "kyle dumb":		   
				   sprIdleStatic   = spr_Dialog_KyleDumb_SingleImage;    
				   sprIdle_        = spr_Dialog_KyleDumb_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Kyle_TalkNoBlink; 	      // talking, no blinking	  
				   sprTalk_        = spr_Dialog_Kyle_Talk_Blink; break;   // talking, + blink
				   
				   
#endregion

#region Shadow

			 /////// Shadow					   
			  case  "shadow default":  
				   sprIdleStatic   = spr_Dialog_Shadow_SingleImage;            // single image, static
				   sprIdle_        = spr_Dialog_Shadow_SingleImage;                  // just blink 
				   sprTalkStatic_  = spr_Dialog_Shadow_Talk_Blink; 		      // talking, no blinking
				   sprTalk_        = spr_Dialog_Shadow_Talk_Blink; 		  break;  // talking, + blink


			  case  "shadow angry":  
				   sprIdleStatic   = spr_Dialog_ShadowAngry_SingleImage;
				   sprIdle_        = spr_Dialog_ShadowAngry_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Shadow_Talk_Blink; 		  
				   sprTalk_        = spr_Dialog_Shadow_Talk_Blink; 		  break;
				   
			  case  "shadow smiling":  
				   sprIdleStatic   = spr_Dialog_ShadowHappy_SingleImage;
				   sprIdle_        = spr_Dialog_ShadowHappy_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Shadow_Talk_Blink; 		  
				   sprTalk_        = spr_Dialog_Shadow_Talk_Blink; 		  break;

			  case  "shadow grumpy":  
				   sprIdleStatic   = spr_Dialog_ShadowUnHappy_SingleImage;
				   sprIdle_        = spr_Dialog_ShadowUnHappy_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Shadow_Talk_Blink; 		  
				   sprTalk_        = spr_Dialog_Shadow_Talk_Blink; 		  break;	

			  case  "shadow shocked":  
				   sprIdleStatic   = spr_Dialog_ShadowShocked_SingleImage;
				   sprIdle_        = spr_Dialog_ShadowShocked_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Shadow_Talk_Blink; 		  
				   sprTalk_        = spr_Dialog_Shadow_Talk_Blink; 		  break;	
				   
			  case  "shadow dismissive":  
				   sprIdleStatic   = spr_Dialog_ShadowDismissive_SingleImage;
				   sprIdle_        = spr_Dialog_ShadowDismissive_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Shadow_Talk_Blink; 		  
				   sprTalk_        = spr_Dialog_Shadow_Talk_Blink; 		  break;	
#endregion

#region Granny	


			 /////// Granny		
			  case  "granny default":		  
				   sprIdleStatic   = spr_Dialog_Granny_SingleImage;                // single image, static
				   sprIdle_        = spr_Dialog_Granny_JustBlink;                   // just blink
				   sprTalkStatic_  = spr_Dialog_Granny_TalkNoBlink; 		       // talking, no blinking	
				   sprTalk_        = spr_Dialog_Granny_Talk_Blink; 		break;	   // talking, + blink 


			  case  "granny angry":		  
				   sprIdleStatic   = spr_Dialog_GrannyAngry_SingleImage;
				   sprIdle_        = spr_Dialog_GrannyAngry_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_GrannyAngry_Talk_Blink; 		  
				   sprTalk_        = spr_Dialog_GrannyAngry_TalkNoBlink; 		break;	

              case  "granny smiling":		  
				   sprIdleStatic   = spr_Dialog_GrannyHappy_SingleImage;
				   sprIdle_        = spr_Dialog_GrannyHappy_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Granny_TalkNoBlink; 		       // talking, no blinking	
				   sprTalk_        = spr_Dialog_Granny_Talk_Blink; 		break;	   // talking, + blink 

			  case  "granny dismissive":		  
				   sprIdleStatic   = spr_Dialog_GrannyDismissive_SingleImage;
				   sprIdle_        = spr_Dialog_GrannyDismissive_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_GrannyDismissive_TalkNoBlink; 		  
				   sprTalk_        = spr_Dialog_GrannyDismissive_Talk_Blink; 		break;

#endregion

#region Weather

			 /////// Weather	
			  case  "weather default":  
				   sprIdleStatic   = spr_Dialog_Weather_SingleImage;                     // single image, static
				   sprIdle_        = spr_Dialog_Weather_JustBlink;                       // just blink
				   sprTalkStatic_  = spr_Dialog_Weather_TalkNoBlink; 		             // talking, no blinking	
				   sprTalk_        = spr_Dialog_Weather_Talk_Blink; 		    break;	 // talking, + blink 


			  case  "weather smiling":  
				   sprIdleStatic   = spr_Dialog_Weather_Happy_SingleImage;
				   sprIdle_        = spr_Dialog_Weather_Happy_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Weather_TalkNoBlink; 		             // talking, no blinking	
				   sprTalk_        = spr_Dialog_Weather_Talk_Blink; 		    break;	 // talking, + blink 

			  case  "weather angry":  
				   sprIdleStatic   = spr_Dialog_Weather_Angry_SingleImage;
				   sprIdle_        = spr_Dialog_Weather_Angry_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Weather_TalkNoBlink; 		             // talking, no blinking	
				   sprTalk_        = spr_Dialog_Weather_Talk_Blink; 		    break;	 // talking, + blink 


			  case  "weather dismissive":  
				   sprIdleStatic   = spr_Dialog_Weather_Dismissive_SingleImage;
				   sprIdle_        = spr_Dialog_Weather_Dismissive_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Weather_TalkNoBlink; 		             // talking, no blinking	
				   sprTalk_        = spr_Dialog_Weather_Talk_Blink; 		    break;	 // talking, + blink 
				   

			  case  "weather cocky":  
				   sprIdleStatic   = spr_Dialog_Weather_Cocky_SingleImage;
				   sprIdle_        = spr_Dialog_Weather_Cocky_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Weather_TalkNoBlink; 		             // talking, no blinking	
				   sprTalk_        = spr_Dialog_Weather_Talk_Blink; 		    break;	 // talking, + blink 	
				   
#endregion

#region  Wife

			 /////// Wife
			  case  "wife default":  
				   sprIdleStatic   = spr_Dialog_Wife_Idle_SingleImage;                // single image, static
				   sprIdle_        = spr_Dialog_Wife_JustBlink;                      // just blink
				   sprTalkStatic_  = spr_Dialog_Wife_TalkNoBlink; 		        // talking, no blinking	
				   sprTalk_        = spr_Dialog_Wife_Talk_Blink; 		    break;	    // talking, + blink 


			  case  "wife angry":  
				   sprIdleStatic   = spr_Dialog_Wife_Angry_SingleImage;
				   sprIdle_        = spr_Dialog_Wife_Angry_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Wife_TalkNoBlink; 		        // talking, no blinking	
				   sprTalk_        = spr_Dialog_Wife_Talk_Blink; 		    break;	    // talking, + blink 


			  case  "wife smiling":  
				   sprIdleStatic   = spr_Dialog_Wife_Happy_SingleImage;
				   sprIdle_        = spr_Dialog_Wife_Happy_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Wife_TalkNoBlink; 		        // talking, no blinking	
				   sprTalk_        = spr_Dialog_Wife_Talk_Blink; 		    break;	    // talking, + blink 

			  case  "wife dismissive":  
				   sprIdleStatic   = spr_Dialog_Wife_Dismissive_SingleImage;
				   sprIdle_        = spr_Dialog_Wife_Dismissive_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Wife_TalkNoBlink; 		        // talking, no blinking	
				   sprTalk_        = spr_Dialog_Wife_Talk_Blink; 		    break;	    // talking, + blink 

			  case  "wife annoyed":  
				   sprIdleStatic   = spr_Dialog_Wife_Annoyed_SingleImage;
				   sprIdle_        = spr_Dialog_Wife_Annoyed_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Wife_TalkNoBlink; 		        // talking, no blinking	
				   sprTalk_        = spr_Dialog_Wife_Talk_Blink; 		    break;	    // talking, + blink 
				   
#endregion

#region Betty

			 /////// Betty
			  case  "betty default":  
				   sprIdleStatic   = spr_Dialog_Betty_Idle_SingleImage;
				   sprIdle_        = spr_Dialog_Betty_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Betty_TalkNoBlink; 		  
				   sprTalk_        = spr_Dialog_Betty_Talk_Blink; 		    break;	

			  case  "betty smiling":  
				   sprIdleStatic   = spr_Dialog_BettySmiling_JustBlink;
				   sprIdle_        = spr_Dialog_BettySmiling_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Betty_TalkNoBlink; 		  
				   sprTalk_        = spr_Dialog_Betty_Talk_Blink; 		    break;
#endregion

#region Clown

			 /////// clown
			  case  "clown default":			  
				   sprIdleStatic   = spr_Dialog_Clown_SingleImage;                      // single image, static
				   sprIdle_        = spr_Dialog_Clown_JustBlink;                 // just blink
				   sprTalkStatic_  = spr_Dialog_Clown_TalkNoBlink; 		         // talking, no blinking	
				   sprTalk_        = spr_Dialog_Clown_Talk_Blink; 		 break;      // talking, + blink 



			  case  "clown angry":		
				   sprIdleStatic   = spr_Dialog_Clown_Angry_SingleImage; 
				   sprIdle_        = spr_Dialog_Clown_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Clown_TalkNoBlink; 		  
				   sprTalk_        = spr_Dialog_Clown_Talk_Blink; 		 break; 

              case  "clown smiling":	
				   sprIdleStatic   = spr_Dialog_Clown_Happy_SingleImage;
				   sprIdle_        = spr_Dialog_Clown_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Clown_TalkNoBlink; 		  
				   sprTalk_        = spr_Dialog_Clown_Talk_Blink; 		 break; 

			  case  "clown dismissive":			  
				   sprIdleStatic   = spr_Dialog_Clown_Angry_SingleImage;
				   sprIdle_        = spr_Dialog_Clown_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Clown_TalkNoBlink; 		  
				   sprTalk_        = spr_Dialog_Clown_Talk_Blink; 		 break; 


#endregion

#region Cop

			 /////// Cop
			  case  "cop default":			  
				   sprIdleStatic   = spr_Dialog_Cop_SingleImage;       // single image, static
				   sprIdle_        = spr_Dialog_Cop_SingleImage;       // just blink
				   sprTalkStatic_  = spr_Dialog_Cop_TalkNoBlink; 	   // talking, no blinking
				   sprTalk_        = spr_Dialog_Cop_TalkNoBlink;  break;      // talking, + blink 



			  case  "cop angry":			  
				   sprIdleStatic   = spr_Dialog_Cop_Angry_SingleImage;
				   sprIdle_        = spr_Dialog_Cop_Angry_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Cop_TalkNoBlink; 	   // talking, no blinking
				   sprTalk_        = spr_Dialog_Cop_TalkNoBlink;  break;      // talking, + blink 

			  case  "cop smiling":			  
				   sprIdleStatic   = spr_Dialog_Cop_Happy_SingleImage;
				   sprIdle_        = spr_Dialog_Cop_Happy_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Cop_TalkNoBlink; 	   // talking, no blinking
				   sprTalk_        = spr_Dialog_Cop_TalkNoBlink;  break;      // talking, + blink 	
			  
			  case  "cop dismissive":			  
				   sprIdleStatic   = spr_Dialog_Cop_Dismissive_SingleImage;
				   sprIdle_        = spr_Dialog_Cop_Dismissive_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Cop_TalkNoBlink; 	   // talking, no blinking
				   sprTalk_        = spr_Dialog_Cop_TalkNoBlink; break;       // talking, + blink 
#endregion

#region Dad



			 /////// Dad
			  case  "dad default":			  
				   sprIdleStatic   = spr_Dialog_AngryDad_SingleImage;        // single image, static
				   sprIdle_        = spr_Dialog_AngryDad_SingleImage;              // just blink
				   sprTalkStatic_  = spr_Dialog_AngryDad_TalkNoBlink; 		// talking, no blinking 
				   sprTalk_        = spr_Dialog_AngryDad_TalkNoBlink; 		break;	// talking, + blink 

			  case  "dad angry":			  
				   sprIdleStatic   = spr_Dialog_AngryDad_SingleImage;
				   sprIdle_        = spr_Dialog_AngryDad_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_AngryDad_TalkNoBlink; 		  
				   sprTalk_        = spr_Dialog_AngryDad_TalkNoBlink; 		break;	

			  case  "dad smiling":			  
				   sprIdleStatic   = spr_Dialog_AngryDad_SingleImage;
				   sprIdle_        = spr_Dialog_AngryDad_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_AngryDad_TalkNoBlink; 		  
				   sprTalk_        = spr_Dialog_AngryDad_TalkNoBlink; 		break;	

			  case  "dad dismissive":			  
				   sprIdleStatic   = spr_Dialog_AngryDad_SingleImage;
				   sprIdle_        = spr_Dialog_AngryDad_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_AngryDad_TalkNoBlink; 		  
				   sprTalk_        = spr_Dialog_AngryDad_TalkNoBlink; 		break;	
#endregion

#region Nerd


			 /////// Nerd
			  case  "nerd default":		  
				   sprIdleStatic   = spr_Dialog_Nerd_SingleImage;                 // single image, static
				   sprIdle_        = spr_Dialog_Nerd_JustBlink;                   // just blink
				   sprTalkStatic_  = spr_Dialog_Nerd_TalkNoBlink; 		          // talking, no blinking 
				   sprTalk_        = spr_Dialog_Nerd_Talk_Blink; 		 break;   // talking, + blink 

			  case  "nerd angry":		  
				   sprIdleStatic   = spr_Dialog_Nerd_Angry_SingleImage;
				   sprIdle_        = spr_Dialog_Nerd_Angry_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Nerd_TalkNoBlink; 		          // talking, no blinking 
				   sprTalk_        = spr_Dialog_Nerd_Talk_Blink; 		 break;   // talking, + blink 

			  case  "nerd smiling":		  
				   sprIdleStatic   = spr_Dialog_Nerd_Happy_SingleImage;
				   sprIdle_        = spr_Dialog_Nerd_Happy_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Nerd_TalkNoBlink; 		          // talking, no blinking 
				   sprTalk_        = spr_Dialog_Nerd_Talk_Blink; 		 break;   // talking, + blink 		  

			  case  "nerd dismissive":		  
				   sprIdleStatic   = spr_Dialog_Nerd_Dismissive_SingleImage;
				   sprIdle_        = spr_Dialog_Nerd_Dismissive_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Nerd_TalkNoBlink; 		          // talking, no blinking 
				   sprTalk_        = spr_Dialog_Nerd_Talk_Blink; 		 break;   // talking, + blink 
#endregion
			   
#region Nun


			 /////// Nun
			  case  "nun default":		  
				   sprIdleStatic   = spr_Dialog_Nun_SingleImage;            // single image, static
				   sprIdle_        = spr_Dialog_Nun_JustBlink;                  // just blink
				   sprTalkStatic_  = spr_Dialog_Nun_TalkNoBlink; 		   // talking, no blinking 
				   sprTalk_        = spr_Dialog_Nun_Talk_Blink; 		 break;    // talking, + blink 

			  case  "nun angry":		  
				   sprIdleStatic   = spr_Dialog_Nun_SingleImage;
				   sprIdle_        = spr_Dialog_Nun_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Nun_TalkNoBlink; 		   // talking, no blinking 
				   sprTalk_        = spr_Dialog_Nun_Talk_Blink; 		 break;    // talking, + blink 

			  case  "nun smiling":		  
				   sprIdleStatic   = spr_Dialog_Nun_SingleImage;
				   sprIdle_        = spr_Dialog_Nun_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Nun_TalkNoBlink; 		   // talking, no blinking 
				   sprTalk_        = spr_Dialog_Nun_Talk_Blink; 		 break;    // talking, + blink 

			  case  "nun dismissive":		  
				   sprIdleStatic   = spr_Dialog_Nun_SingleImage;
				   sprIdle_        = spr_Dialog_Nun_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Nun_TalkNoBlink; 		   // talking, no blinking 
				   sprTalk_        = spr_Dialog_Nun_Talk_Blink; 		 break;    // talking, + blink 

			  case  "nun gun":		  
				   sprIdleStatic   = spr_Dialog_Nun_Gun_SingleImage;
				   sprIdle_        = spr_Dialog_Nun_Gun_JustBlink; 
				   sprTalkStatic_  = spr_Dialog_Nun_Gun_JustBlink; 		  
				   sprTalk_        = spr_Dialog_Nun_Gun_SingleImage; 		 break;

#endregion

#region Twins

			 /////// Twin 1 + 2
			  case  "twin1 default":  
				   sprIdleStatic   = spr_Dialog_Twin1_SingleImage;
				   sprIdle_        = spr_Dialog_Twin1_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Twin1_SingleImage; 		  
				   sprTalk_        = spr_Dialog_Twin1_SingleImage; 		  break;					   
				   
			  case  "twin2 default":  
				   sprIdleStatic   = spr_Dialog_Twin2_SingleImage;
				   sprIdle_        = spr_Dialog_Twin2_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Twin2_SingleImage; 		  
				   sprTalk_        = spr_Dialog_Twin2_SingleImage; 		  break;


			  case  "twin1 angry":  
				   sprIdleStatic   = spr_Dialog_Twin1_SingleImage;
				   sprIdle_        = spr_Dialog_Twin1_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Twin1_SingleImage; 		  
				   sprTalk_        = spr_Dialog_Twin1_SingleImage; 		  break;				   
				   
			  case  "twin2 angry":  
				   sprIdleStatic   = spr_Dialog_Twin2_SingleImage;
				   sprIdle_        = spr_Dialog_Twin2_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Twin2_SingleImage; 		  
				   sprTalk_        = spr_Dialog_Twin2_SingleImage; 		  break;


			  case  "twin1 smiling":  
				   sprIdleStatic   = spr_Dialog_Twin1_SingleImage;
				   sprIdle_        = spr_Dialog_Twin1_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Twin1_SingleImage; 		  
				   sprTalk_        = spr_Dialog_Twin1_SingleImage; 		  break;					   
				   
			  case  "twin2 smiling":  
				   sprIdleStatic   = spr_Dialog_Twin2_SingleImage;
				   sprIdle_        = spr_Dialog_Twin2_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Twin2_SingleImage; 		  
				   sprTalk_        = spr_Dialog_Twin2_SingleImage; 		  break;


			  case  "twin1 dismissive":  
				   sprIdleStatic   = spr_Dialog_Twin1_SingleImage;
				   sprIdle_        = spr_Dialog_Twin1_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Twin1_SingleImage; 		  
				   sprTalk_        = spr_Dialog_Twin1_SingleImage; 		  break;						   
				   
			  case  "twin2 dismissive":  
				   sprIdleStatic   = spr_Dialog_Twin2_SingleImage;
				   sprIdle_        = spr_Dialog_Twin2_SingleImage; 
				   sprTalkStatic_  = spr_Dialog_Twin2_SingleImage; 		  
				   sprTalk_        = spr_Dialog_Twin2_SingleImage; 		  break;		   
				   
#endregion				   
				   
#region Duke


			 /////// Duke				   
			  case  "duke default":  
				   sprIdleStatic   = spr_Dialog_Duke_SingleImage;            // single image, static
				   sprIdle_        = spr_Dialog_Duke_SingleImage;            // just blink
				   sprTalkStatic_  = spr_Dialog_Duke_SingleImage; 		     // talking, no blinking   
				   sprTalk_        = spr_Dialog_Duke_SingleImage; 	 break;	 // talking, + blink				   
				   
			  case  "duke angry":  
				   sprIdleStatic   = spr_Dialog_Duke_SingleImage;            // single image, static
				   sprIdle_        = spr_Dialog_Duke_SingleImage;            // just blink
				   sprTalkStatic_  = spr_Dialog_Duke_SingleImage; 		     // talking, no blinking   
				   sprTalk_        = spr_Dialog_Duke_SingleImage; 	 break;	 // talking, + blink					   			   
				   
			  case  "duke smiling":  
				   sprIdleStatic   = spr_Dialog_Duke_SingleImage;            // single image, static
				   sprIdle_        = spr_Dialog_Duke_SingleImage;            // just blink
				   sprTalkStatic_  = spr_Dialog_Duke_SingleImage; 		     // talking, no blinking   
				   sprTalk_        = spr_Dialog_Duke_SingleImage; 	 break;	 // talking, + blink	

			  case  "duke dismissive":  
				   sprIdleStatic   = spr_Dialog_Duke_SingleImage;            // single image, static
				   sprIdle_        = spr_Dialog_Duke_SingleImage;            // just blink
				   sprTalkStatic_  = spr_Dialog_Duke_SingleImage; 		     // talking, no blinking   
				   sprTalk_        = spr_Dialog_Duke_SingleImage; 	 break;	 // talking, + blink	

			  case  "duke flexing":  
				   sprIdleStatic   = spr_Dialog_Duke_SingleImage;            // single image, static
				   sprIdle_        = spr_Dialog_Duke_SingleImage;            // just blink
				   sprTalkStatic_  = spr_Dialog_Duke_SingleImage; 		     // talking, no blinking   
				   sprTalk_        = spr_Dialog_Duke_SingleImage; 	 break;	 // talking, + blink	


#endregion	  
			   
		      //////////// randoms!
              #region randoms!

			  case  "random1 default":  
				   sprIdleStatic   = spr_Dialog_Random1_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1_Talk; 		    break;	

			  case  "random2 default":  
				   sprIdleStatic   = spr_Dialog_Random1_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1_Talk; 		    break;	
				   
			  case  "random3 default":  
				   sprIdleStatic   = spr_Dialog_Random1_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1_Talk; 		    break;					   

			  case  "random4 default":  
				   sprIdleStatic   = spr_Dialog_Random1_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1_Talk; 		    break;	

			  case  "random5 default":  
				   sprIdleStatic   = spr_Dialog_Random1_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1_Talk; 		    break;	
				   
			  case  "random6 default":  
				   sprIdleStatic   = spr_Dialog_Random1_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1_Talk; 		    break;					   

			  case  "random7 default":  
				   sprIdleStatic   = spr_Dialog_Random1_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1_Talk; 		    break;				   

			  case  "random8 default":  
				   sprIdleStatic   = spr_Dialog_Random1_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1_Talk; 		    break;	
				   
			  case  "random9 default":  
				   sprIdleStatic   = spr_Dialog_Random1_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1_Talk; 		    break;					   
				   
				   
				   
			  case  "random1 angry":  
				   sprIdleStatic   = spr_Dialog_Random1Angry_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1Angry_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1Angry_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1Angry_Talk; 		    break;	

			  case  "random2 angry":  
				   sprIdleStatic   = spr_Dialog_Random1Angry_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1Angry_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1Angry_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1Angry_Talk; 		    break;	
				   
			  case  "random3 angry":  
				   sprIdleStatic   = spr_Dialog_Random1Angry_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1Angry_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1Angry_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1Angry_Talk; 		    break;					   

			  case  "random4 angry":  
				   sprIdleStatic   = spr_Dialog_Random1Angry_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1Angry_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1Angry_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1Angry_Talk; 		    break;	

			  case  "random5 angry":  
				   sprIdleStatic   = spr_Dialog_Random1Angry_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1Angry_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1Angry_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1Angry_Talk; 		    break;		
				   
			  case  "random6 angry":  
				   sprIdleStatic   = spr_Dialog_Random1Angry_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1Angry_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1Angry_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1Angry_Talk; 		    break;					   

			  case  "random7 angry":  
				   sprIdleStatic   = spr_Dialog_Random1Angry_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1Angry_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1Angry_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1Angry_Talk; 		    break;				   

			  case  "random8 angry":  
				   sprIdleStatic   = spr_Dialog_Random1Angry_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1Angry_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1Angry_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1Angry_Talk; 		    break;		
				   
			  case  "random9 angry":  
				   sprIdleStatic   = spr_Dialog_Random1Angry_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1Angry_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1Angry_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1Angry_Talk; 		    break;							   
               #endregion				   

#region fixed not random!

			  case  "randomFixed default":  
				   sprIdleStatic   = spr_Dialog_Random1_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1_Talk; 		    break;	

			  case  "randomFixed angry":  
				   sprIdleStatic   = spr_Dialog_Random1Angry_IdleStatic;
				   sprIdle_        = spr_Dialog_Random1Angry_Idle; 
				   sprTalkStatic_  = spr_Dialog_Random1Angry_TalkStatic; 		  
				   sprTalk_        = spr_Dialog_Random1Angry_Talk; 		    break;	



#endregion
				   
			} // end of switch
	
		
				   
		  if(SlotX == 1){		  	   			  
		     dialogBlock_SprIdleStatic_1_[index_]   = sprIdleStatic;
	         dialogBlock_SprIdle_1_[index_]         = sprIdle_;
		     dialogBlock_SprTalkStatic_1_[index_]   = sprTalkStatic_;	
		     dialogBlock_SprTalk_1_[index_]         = sprTalk_;
			 
			 dialogBlock_SprSwap_1_[index_]         = sprSwap;
			 }		
			 
		  if(SlotX == 2){		  
		     dialogBlock_SprIdleStatic_2_[index_]   = sprIdleStatic;
	         dialogBlock_SprIdle_2_[index_]         = sprIdle_;
		     dialogBlock_SprTalkStatic_2_[index_]   = sprTalkStatic_;	
		     dialogBlock_SprTalk_2_[index_]         = sprTalk_;	
			 
			 dialogBlock_SprSwap_2_[index_]         = sprSwap;
			 }					 
			 
		  if(SlotX == 3){		  
		     dialogBlock_SprIdleStatic_3_[index_]   = sprIdleStatic;
	         dialogBlock_SprIdle_3_[index_]         = sprIdle_;
		     dialogBlock_SprTalkStatic_3_[index_]   = sprTalkStatic_;	
		     dialogBlock_SprTalk_3_[index_]         = sprTalk_;	
			 
			 dialogBlock_SprSwap_3_[index_]         = sprSwap;
			 }					 
	  } // end of function
 
 #region prefix suffix set

 /// set here, the fk is this
  textPrefix          = "[font_Cutscene][scale, 1][c_white]"; // default for all 
  textSuffixDialog    = "[/scale][/c]"; 

 
 
  textPrefixPlayer  = "[font_Cutscene][scale, 1][#F9CE7B]";
  textPrefixPlayerT = "[font_Cutscene][scale, 1][#FBA90A]";  // thoughts!
  
  textSuffixDialogDialog = "[/scale][/c]";  
 
  textPrefix_Tab = "[font_Cutscene][scale, 1]";
  textSuffixDialog_Tab = "[/scale]";


  textCosts_Prefix = "[font_Cutscene][scale, 1.3]";
  textCosts_Suffix = "[/scale]";

/// for weapons detail text box
  textDetail_HeadlinePrefix = "[font_Cutscene][scale, 1.5][c_gray]";
  textDetail_HeadlineSuffix = "[/c][/scale]"; 
 
  textDetail_CostPrefix = "[font_Cutscene][scale, 2][c_orange]";
  textDetail_CostSuffix = "[/c][/scale]"; 

  textDetail_DescPrefix = "[font_Cutscene][scale, 1]";
  textDetail_DescSuffix = "[/scale]"; 

  
  // sorting by name
   textSortNamePrefix = "[font_Cutscene][scale, 2]";
   textSortNameSuffix = "[/scale]"; 

  text_Name_Unknown     = "[font_Cutscene_Name][scale, 1.4][c_white]???[/c][/scale]";
  text_Name_Nobody      = "[font_Cutscene_Name][scale, 1.4][c_white][/c][/scale]";
 
  text_Name_Player      = "[font_Cutscene_Name][scale, 1.4][#F9CE7B]Player[/c][/scale]";
  text_Name_PlayerT     = "[font_Cutscene_Name][scale, 1.4][#F9CE7B]Player[/c][/scale]";  // thoughts!!!
  
  
  text_Name_Jez         = "[font_Cutscene_Name][scale, 1.4][c_purple]Jezebelle[/c][/scale]"; 
  text_Name_Wife        = "[font_Cutscene_Name][scale, 1.4][c_purple]Wife[/c][/scale]"; 
  text_Name_Nerd        = "[font_Cutscene_Name][scale, 1.4[c_white]Nerd[/c][/scale]"; 
  text_Name_NerdSteve   = "[font_Cutscene_Name][scale, 1.4][c_white]Steve[/c][/scale]"; 


  text_Name_Kyle        = "[font_Cutscene_Name][scale, 1.4][c_white]Kyle[/c][/scale]";  
  text_Name_Granny      = "[font_Cutscene_Name][scale, 1.4][c_white]Granny[/c][/scale]";   
 
  text_Name_AngryDad    = "[font_Cutscene_Name][scale, 1.4][c_white]Angry dad[/c][/scale]";   
  text_Name_Weather     = "[font_Cutscene_Name][scale, 1.4][c_white]Weather[/c][/scale]";   
  text_Name_Duke        = "[font_Cutscene_Name][scale, 1.4][c_white]Duke[/c][/scale]";   


  text_Name_Cop         = "[font_Cutscene_Name][scale, 1.4][c_white]Cop[/c][/scale]"; 
  text_Name_Clown       = "[font_Cutscene_Name][scale, 1.4][c_white]Bam Bam[/c][/scale]";   

  text_Name_Shadow      = "[font_Cutscene_Name][scale, 1.4][c_white]Shadow[/c][/scale]";   
  text_Name_Victor      = "[font_Cutscene_Name][scale, 1.4][c_white]Victor[/c][/scale]";   
 
  text_Name_Nun         = "[font_Cutscene_Name][scale, 1.4][c_white]Nun[/c][/scale]";  

  text_Name_Twin1       = "[font_Cutscene_Name][scale, 1.4][c_white]Twin 1[/c][/scale]";  
  text_Name_Twin2       = "[font_Cutscene_Name][scale, 1.4][c_white]Twin 2[/c][/scale]";  
 
  text_Name_Ramdom      = "[font_Cutscene_Name][scale, 1.4][c_white]Random[/c][/scale]";
 
 
  text_Name_Betty      = "[font_Cutscene_Name][scale, 1.4][c_white]Betty Blabbermouth[/c][/scale]";   



	  function setText( index_, talkActiveSlot,  npc_,  txt_, sound_ ){ 
		    var prefixTXT_     = "";
			var nameNpc_Player = "";
			
			
			switch(npc_){		  

			  case  "player": 				
			       nameNpc_Player = text_Name_Player;		  
				   prefixTXT_     = textPrefixPlayer; break;
				   
			  case  "playerT": 				
			       nameNpc_Player = text_Name_PlayerT;		  
				   prefixTXT_     = textPrefixPlayerT; break;				   

			  case  "random": 
			       nameNpc_Player = text_Name_Ramdom;			  
				   prefixTXT_     = textPrefix;	 break; 


			 case  "unknown":				
			       nameNpc_Player = text_Name_Unknown;		  
				   prefixTXT_     = textPrefix; break; 
			 
			 case  "???": 				
			       nameNpc_Player = text_Name_Unknown;		  
				   prefixTXT_     = textPrefix; break;    	

			  case  "nobody": 				
			       nameNpc_Player = text_Name_Nobody;		  
				   prefixTXT_     = textPrefix; break;    					  
   
				
				
			  case  "clown":	
			       nameNpc_Player = text_Name_Clown;				  
				   prefixTXT_     = textPrefix;	 break; 				  
				 
				 
			  case  "cop":	
			       nameNpc_Player = text_Name_Cop;				  
				   prefixTXT_     = textPrefix;		 break;		  
			  
			  
			  case  "dad":		
			       nameNpc_Player = text_Name_AngryDad;				  
				   prefixTXT_     = textPrefix;	 break; 			  
			  
			  
			  case  "granny":		
			       nameNpc_Player = text_Name_Granny;				  
				   prefixTXT_     = textPrefix;	 break; 			  
	
	
			  case  "kyle":		  
			       nameNpc_Player = text_Name_Kyle;				  
				   prefixTXT_     = textPrefix;	 break; 	


			  case  "nerd":		  
			       nameNpc_Player = text_Name_Nerd;				  
				   prefixTXT_     = textPrefix;	 break; 	

			  case  "nerd2":		  
			       nameNpc_Player = text_Name_NerdSteve;				  
				   prefixTXT_     = textPrefix;	 break; 	
				   

			  case  "nun":		  
			       nameNpc_Player = text_Name_Nun;				  
				   prefixTXT_     = textPrefix;	 break; 	
		  				 
				 
			  case  "shadow":  
			       nameNpc_Player = text_Name_Shadow;				  
				   prefixTXT_     = textPrefix;	 break; 			   
				   
				   
			  case  "twin1":  		
			       nameNpc_Player = text_Name_Twin1;				  
				   prefixTXT_     = textPrefix;	 break; 	
				   
				   
			  case  "twin2":   
			       nameNpc_Player = text_Name_Twin2;				  
				   prefixTXT_     = textPrefix;	 break; 			
				   
				   
			  case  "victor": 
			       nameNpc_Player = text_Name_Victor;				  
				   prefixTXT_     = textPrefix;	 break; 		
				   
				   
			  case  "duke": 
			       nameNpc_Player = text_Name_Duke;				  
				   prefixTXT_     = textPrefix;	 break; 	


			  case  "wife": 
			       nameNpc_Player = text_Name_Wife;				  
				   prefixTXT_     = textPrefix;	 break; 

			  case  "jez": 
			       nameNpc_Player = text_Name_Jez;				  
				   prefixTXT_     = textPrefix;	 break; 


			  case  "betty": 
			       nameNpc_Player = text_Name_Betty;				  
				   prefixTXT_     = textPrefix;	 break; 


			  case  "weather": 
			       nameNpc_Player = text_Name_Weather;				  
				   prefixTXT_     = textPrefix;	 break; 



              default:				
			       nameNpc_Player = text_Name_Unknown;		  
				   prefixTXT_     = textPrefix; break;
			  		
			} // end of switch
		  
		  
		 dialogBlock_Txt_PersonActive[index_]  = talkActiveSlot;  
         dialogBlock_Name[index_]              = nameNpc_Player;	  
	     dialogBlock_Txt[index_]               = prefixTXT_ + txt_ + textSuffixDialog;  	  
	     dialogBlock_Sound[index_]             = sound_;
		 //totalBlocks++;	// increment to see how big it gets	  
	  }

 #endregion


} // end of constructor

arrayCutscenes = array_create(0); // 

 #region random texts + minigame generation!
 
  function CreateRandomMinigame() constructor {


   #region text setup!

   // first two lines	
   introTextRandom[0] = "";
   introTextRandom[1] = "";    // instruction text

   // outcomes!
   saleTextRandom[0]  = "";
  // saleTextRandom[1]  = ""; 

   refuseTextRandom[0] = "";
  // refuseTextRandom[1] = ""; 

   failTextRandom[0] = "";
  // failTextRandom[1] = ""; 
   
   function setIntro(txt1_, txt2_){
      introTextRandom[0] = txt1_;
      //introTextRandom[1] = txt2_;   
   }


   function setSale(txt1_){
      saleTextRandom[0] = txt1_;
     // saleTextRandom[1] = txt2_;   
   } 

   function setRefuse(txt1_){
      refuseTextRandom[0] = txt1_;
      //refuseTextRandom[1] = txt2_;   
   } 


   function setFail(txt1_){
      failTextRandom[0] = txt1_;
    //  failTextRandom[1] = txt2_;   
   } 

#endregion

   #region instance to override!
   
   instanceResetSet = noone;

   
   var defaultSEt = -999;
   temp_PerfectWeapon               = defaultSEt;
   temp_Perect_Ammo                 = defaultSEt;    
   temp_Perect_LaserPointer         = defaultSEt;
   temp_Perect_Muzzle               = defaultSEt;
   
   temp_Perect_Optics               = defaultSEt;
   temp_Perect_Stock                = defaultSEt;
   temp_Perect_Grip                 = defaultSEt; 

   

var iteratePosI = 0;
   posStackAmount = 0;
  repeat(12){
	  temp_PositiveWeapon[iteratePosI] = defaultSEt;	  
       iteratePosI++;
 }

      temp_negative_Ammo            = defaultSEt;
      temp_negative_LaserPointer    = defaultSEt;
      temp_negative_Muzzle          = defaultSEt; 
	  
      temp_negative_Optics          = defaultSEt; 
      temp_negative_Grip            = defaultSEt; 
      temp_negative_Stock           = defaultSEt;   

      temp_negative_Costs           = defaultSEt;  
    
	// temp pre build
    function setInst_Perfect(  perfect_, ammo_, las_, muz_, optc_, stock_, grip_ ){
      // set one perfect weapon!	  
	  temp_PerfectWeapon               = perfect_;    

      temp_Perect_Ammo                 = ammo_;    
      temp_Perect_LaserPointer         = las_;
      temp_Perect_Muzzle               = muz_;
   
      temp_Perect_Optics               = optc_;
      temp_Perect_Stock                = stock_;
      temp_Perect_Grip                 = grip_; 
   }
   
    function setInst_Positive(  posStackAmount_,   posStack_1, posStack_2, posStack_3, posStack_4, posStack_5, posStack_6, posStack_7, posStack_8, posStack_9, posStack_10, posStack_11, posStack_12   ){
      posStackAmount = posStackAmount_;
	  	  
	  if(posStackAmount_ >=  1){ temp_PositiveWeapon[0]   = posStack_1;   }	  
	  if(posStackAmount_ >=  2){ temp_PositiveWeapon[1]   = posStack_2;   }		  
	  if(posStackAmount_ >=  3){ temp_PositiveWeapon[2]   = posStack_3;   }	
	  if(posStackAmount_ >=  4){ temp_PositiveWeapon[3]   = posStack_4;   }	  
	  if(posStackAmount_ >=  5){ temp_PositiveWeapon[4]   = posStack_5;   }		  
	  if(posStackAmount_ >=  6){ temp_PositiveWeapon[5]   = posStack_6;   }	  
	  if(posStackAmount_ >=  7){ temp_PositiveWeapon[6]   = posStack_7;   }	  
	  if(posStackAmount_ >=  8){ temp_PositiveWeapon[7]   = posStack_8;   }		  
	  if(posStackAmount_ >=  9){ temp_PositiveWeapon[8]   = posStack_9;   }	  
	  if(posStackAmount_ >= 10){ temp_PositiveWeapon[9]   = posStack_10;  }	  
	  if(posStackAmount_ >= 11){ temp_PositiveWeapon[10]  = posStack_11;  }		  
	  if(posStackAmount_ >= 12){ temp_PositiveWeapon[11]  = posStack_12;  }	  
	  
   }
   
    function setInst_Negative (neg_Ammo, neg_Las, neg_Muzzle, neg_Stock, neg_Opt, neg_Grip,  neg_Cost ){

      temp_negative_Ammo            = neg_Ammo;
      temp_negative_LaserPointer    = neg_Las;
      temp_negative_Muzzle          = neg_Muzzle; 
	  
      temp_negative_Stock           = neg_Stock;   	  
      temp_negative_Optics          = neg_Opt; 
      temp_negative_Grip            = neg_Grip; 

      temp_negative_Costs           = neg_Cost;   
  }



    // to be set later!!
    function setInst_ApplyAll(inst_,  jump_Sale, jump_Refuse_, jump_Fail ){  
		
		instanceResetSet = inst_;
	  
        // apply jump points
	    instanceResetSet.result_Index_Sale      = jump_Sale;
        instanceResetSet.result_Index_Refuse    = jump_Refuse_;
        instanceResetSet.result_Index_Messup    = jump_Fail; 
	  
	  
	  // apply perfect
	  instanceResetSet.possible_Weapon_Perfect          = temp_PerfectWeapon; 
	  
	  instanceResetSet.possible_Ammo_Perfect            = temp_Perect_Ammo
	  instanceResetSet.possible_LaserPointer_Perfect    = temp_Perect_LaserPointer;  // attachments not set on default
	  instanceResetSet.possible_Muzzle_Perfect          = temp_Perect_Muzzle;  
	  
	  instanceResetSet.possible_Optics_Perfect          = temp_Perect_Optics; 
	  instanceResetSet.possible_Grip_Perfect            = temp_Perect_Grip; 
	  instanceResetSet.possible_Stock_Perfect           = temp_Perect_Stock; 	  
	  
	  // apply positive
	  if(posStackAmount >=  1){ instanceResetSet.array_Positive_Weapons[0]   = temp_PositiveWeapon[0];   }	  
	  if(posStackAmount >=  2){ instanceResetSet.array_Positive_Weapons[1]   = temp_PositiveWeapon[1];   }		  
	  if(posStackAmount >=  3){ instanceResetSet.array_Positive_Weapons[2]   = temp_PositiveWeapon[2];   }	
	  if(posStackAmount >=  4){ instanceResetSet.array_Positive_Weapons[3]   = temp_PositiveWeapon[3];   }	  
	  if(posStackAmount >=  5){ instanceResetSet.array_Positive_Weapons[4]   = temp_PositiveWeapon[4];   }		  
	  if(posStackAmount >=  6){ instanceResetSet.array_Positive_Weapons[5]   = temp_PositiveWeapon[5];   }	  
	  if(posStackAmount >=  7){ instanceResetSet.array_Positive_Weapons[6]   = temp_PositiveWeapon[6];   }	  
	  if(posStackAmount >=  8){ instanceResetSet.array_Positive_Weapons[7]   = temp_PositiveWeapon[7];   }		  
	  if(posStackAmount >=  9){ instanceResetSet.array_Positive_Weapons[8]   = temp_PositiveWeapon[8];   }	  
	  if(posStackAmount >= 10){ instanceResetSet.array_Positive_Weapons[9]   = temp_PositiveWeapon[9];   }	  
	  if(posStackAmount >= 11){ instanceResetSet.array_Positive_Weapons[10]  = temp_PositiveWeapon[10];  }		  
	  if(posStackAmount >= 12){ instanceResetSet.array_Positive_Weapons[11]  = temp_PositiveWeapon[11];  }	 	  



	  // apply negative
      instanceResetSet.negative_Ammo            = temp_negative_Ammo;
      instanceResetSet.negative_LaserPointer    = temp_negative_LaserPointer;
      instanceResetSet.negative_Muzzle          = temp_negative_Muzzle; 
	  
      instanceResetSet.negative_Optics          = temp_negative_Optics; 
      instanceResetSet.negative_Grip            = temp_negative_Grip; 
      instanceResetSet.negative_Stock           = temp_negative_Stock;   

      instanceResetSet.negative_Costs           = temp_negative_Costs; 	   
   }
   
   
   #endregion
  }


#region day 1 - 12    random fills!

// unique to be set and read from values for the random sales!
randomSaleOverride_Day1_1 = 0;
randomSaleOverride_Day1_2 = 0;

randomSaleOverride_Day2_1 = 0;
randomSaleOverride_Day2_2 = 0;

randomSaleOverride_Day3_1 = 0;
randomSaleOverride_Day3_2 = 0;

randomSaleOverride_Day5_1 = 0;
randomSaleOverride_Day5_2 = 0;

randomSaleOverride_Day6_1 = 0;

randomSaleOverride_Day7_1 = 0;
randomSaleOverride_Day7_2 = 0;
 
 
 
arrayRandomMinigameDay1to3 = array_create(0);

var randomDay1to3_I  = 0;

arrayRandomMinigameDay1to3[randomDay1to3_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay1to3[randomDay1to3_I].setIntro(  "Hey bud, I'm in a hurry. Need a regular shotty ASAP. Pump - No attachments and no ammo.", "Pump - No attachments and no ammo.");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setSale(   "You're the man. See ya." );  
   arrayRandomMinigameDay1to3[randomDay1to3_I].setRefuse( "Wow, what kind of idiot turns down money?");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setFail(   "The hell is this? Can't even get a simple request right. I don't have time for this crap."); 

   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Perfect(40, 1,0,0,0,0,0);
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Positive(3,  40, 41, 42, 0,0,0,0,0,0,0,0,0);   
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Negative(555, 81,82,83,84,85, 99999);
   randomDay1to3_I++;


arrayRandomMinigameDay1to3[randomDay1to3_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay1to3[randomDay1to3_I].setIntro(  "Got an order for my boss to pick something up. Need a SMG, a real heavy one too with ammo.", "Need a SMG, a real heavy one too with ammo.");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setSale(   "Much appreciated, my boss will be happy." );  
   arrayRandomMinigameDay1to3[randomDay1to3_I].setRefuse( "Man I'm gonna be in trouble thanks to you.");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setFail(   "I'll let my boss know you're no good, don't count on any return business."); 

   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Perfect(30, 1,0,0,0,0,0);
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Positive(3,  30, 31, 32, 0,0,0,0,0,0,0,0,0);   
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Negative(555, 81,82,83,84,85, 99999);
   randomDay1to3_I++;


arrayRandomMinigameDay1to3[randomDay1to3_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay1to3[randomDay1to3_I].setIntro(  "Howdy there partner. I need to get all the crows outta my field. You got one of them triple barrels?", "You got one of them triple barrels?");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setSale(   "Thanks partner." );  
   arrayRandomMinigameDay1to3[randomDay1to3_I].setRefuse( "I guess you don't got what I need.");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setFail(   "Partner, your ears must be soft. Guess I'll go elsewhere."); 

   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Perfect(42, 0,0,0,0,0,0);
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Positive(3,  40, 41, 42, 0,0,0,0,0,0,0,0,0);   
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Negative(555, 81,82,83,84,85, 99999);
   randomDay1to3_I++;


arrayRandomMinigameDay1to3[randomDay1to3_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay1to3[randomDay1to3_I].setIntro(  "My boss sent me here to pick up an order. He said you got a gun that uses lots of rounds.", "He said you got a gun that uses lots of rounds");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setSale(   "Thanks." );  
   arrayRandomMinigameDay1to3[randomDay1to3_I].setRefuse( "Piss off, jerk.");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setFail(   "I guess I can't afford anything here."); 

   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Perfect(31, 0,0,0,0,0,0);
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Positive(30,  32, 0, 0, 0,0,0,0,0,0,0,0,0);   
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Negative(555, 81,82,83,84,85, 2000);
   randomDay1to3_I++;




arrayRandomMinigameDay1to3[randomDay1to3_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay1to3[randomDay1to3_I].setIntro(  "Gimme the most powerful thing you got in stock. No attachments!", "No attachments!");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setSale(   "This is gonna do some damage!" );  
   arrayRandomMinigameDay1to3[randomDay1to3_I].setRefuse( "You're an idiot.");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setFail(   "Too weak, I'm sure I can find something better elsewhere."); 

   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Perfect(41, 0,0,0,0,0,0);
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Positive(3,  40, 41, 42, 0,0,0,0,0,0,0,0,0);   
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Negative(555, 81,82,83,84,85, 9999);
   randomDay1to3_I++;


arrayRandomMinigameDay1to3[randomDay1to3_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay1to3[randomDay1to3_I].setIntro(  "Hi there, can you sell me a real fancy pistol?", "I need something flashy and fully loaded to show off for my girlfriend, she's a gun nut.");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setSale(   "Oh man, thanks so much. I'll spread the word about you!" );  
   arrayRandomMinigameDay1to3[randomDay1to3_I].setRefuse( "That sucks, I guess I'll be single again...");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setFail(   "Damn dude I can't use that. Thanks for nothing."); 

   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Perfect(11, 0,0,0,0,0,0);
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Positive(3,  10, 11, 12, 0,0,0,0,0,0,0,0,0);   
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Negative(555, 81,82,83,84,85, 1000);
   randomDay1to3_I++;


arrayRandomMinigameDay1to3[randomDay1to3_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay1to3[randomDay1to3_I].setIntro(  "Can I get one of those things the British cops use? I need to teach someone a lesson...", "I need to teach someone a lesson...");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setSale(   "Appreciate it." );  
   arrayRandomMinigameDay1to3[randomDay1to3_I].setRefuse( "Maybe someone needs to teach you a lesson.");
   arrayRandomMinigameDay1to3[randomDay1to3_I].setFail(   "Maybe someone needs to teach you a lesson."); 

   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Perfect(1, 0,0,0,0,0,0);
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Positive(3,  0, 1, 10, 0,0,0,0,0,0,0,0,0);   
   arrayRandomMinigameDay1to3[randomDay1to3_I].setInst_Negative(555, 81,82,83,84,85, 1000);
   randomDay1to3_I++;





var randomDay4to5_I  = 0;
arrayRandomMinigameDay4to5  = array_create(0);
arrayRandomMinigameDay4to5[randomDay4to5_I] = new CreateRandomMinigame(); 
   arrayRandomMinigameDay4to5[randomDay4to5_I].setIntro(  "Do you have something that can shoot maximum distance, but for minimum cost?", "I need to teach someone a lesson...");
   arrayRandomMinigameDay4to5[randomDay4to5_I].setSale(   "That's just what I needed." );  
   arrayRandomMinigameDay4to5[randomDay4to5_I].setRefuse( "Thanks for trying");
   arrayRandomMinigameDay4to5[randomDay4to5_I].setFail(   "That won't do, but thanks for trying."); 

   arrayRandomMinigameDay4to5[randomDay4to5_I].setInst_Perfect(21, 0,0,0,0,0,0);
   arrayRandomMinigameDay4to5[randomDay4to5_I].setInst_Positive(20,  22, 30, 0, 0,0,0,0,0,0,0,0,0);   
   arrayRandomMinigameDay4to5[randomDay4to5_I].setInst_Negative(555, 81,82,83,84,85, 5000);
   randomDay4to5_I++;

arrayRandomMinigameDay4to5[randomDay4to5_I] = new CreateRandomMinigame(); 
   arrayRandomMinigameDay4to5[randomDay4to5_I].setIntro(  "Can I get that french thing I saw on television earlier?");
   arrayRandomMinigameDay4to5[randomDay4to5_I].setSale(   "Come to papa!" );  
   arrayRandomMinigameDay4to5[randomDay4to5_I].setRefuse( "What kind of dipshit refuses money?");
   arrayRandomMinigameDay4to5[randomDay4to5_I].setFail(   "I guess I came to the wrong store."); 

   arrayRandomMinigameDay4to5[randomDay4to5_I].setInst_Perfect(51, 0,0,0,0,0,0);
   arrayRandomMinigameDay4to5[randomDay4to5_I].setInst_Positive(50,  52, 22, 0, 0,0,0,0,0,0,0,0,0);   
   arrayRandomMinigameDay4to5[randomDay4to5_I].setInst_Negative(555, 81,82,83,84,85, 5000);
   randomDay4to5_I++;

arrayRandomMinigameDay4to5[randomDay4to5_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay4to5[randomDay4to5_I].setIntro(  "I've got grand burning a hole in my pocket. Whatcha got that powerful pistol, and very easy to see where I'm aiming?");
   arrayRandomMinigameDay4to5[randomDay4to5_I].setSale(   "This is perfect." );  
   arrayRandomMinigameDay4to5[randomDay4to5_I].setRefuse( "Really, nothing? Maybe you should stick to your day job.");
   arrayRandomMinigameDay4to5[randomDay4to5_I].setFail(   "That aint it. Maybe you should stick to your day job."); 

   arrayRandomMinigameDay4to5[randomDay4to5_I].setInst_Perfect(12, 0,0,0,1,0,0);
   arrayRandomMinigameDay4to5[randomDay4to5_I].setInst_Positive(10,  11, 22, 0, 0,0,0,0,0,0,0,0,0);   
   arrayRandomMinigameDay4to5[randomDay4to5_I].setInst_Negative(555, 81,82,83,84,85, 5000);
   randomDay4to5_I++;   
   
arrayRandomMinigameDay4to5[randomDay4to5_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay4to5[randomDay4to5_I].setIntro(  "Hello. I am in need of your services. I will pay for anything that can be... discreet.");
   arrayRandomMinigameDay4to5[randomDay4to5_I].setSale(   "Ah yes, the silencer, one of my favorites. Thank you, I know just what to do with this." );  
   arrayRandomMinigameDay4to5[randomDay4to5_I].setRefuse( "How unfortunate. I suppose I will have to take care of things by hand.");
   arrayRandomMinigameDay4to5[randomDay4to5_I].setFail(   "I suppose discretion is lost on some people."); 

   arrayRandomMinigameDay4to5[randomDay4to5_I].setInst_Perfect(12, 0,0,1,0,0,0);
   arrayRandomMinigameDay4to5[randomDay4to5_I].setInst_Positive(10,  11, 22, 30,31,32, 50,51,52, 20,0,0,0);   
   arrayRandomMinigameDay4to5[randomDay4to5_I].setInst_Negative(555, 81,999,83,84,85, 5000);
   randomDay4to5_I++;  





var randomDay6to8_I  = 0;
arrayRandomMinigameDay6to8  = array_create(0);
arrayRandomMinigameDay6to8[randomDay6to8_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay6to8[randomDay6to8_I].setIntro(  "Hey there, you got anything that can put a vegetable in space?");
   arrayRandomMinigameDay6to8[randomDay6to8_I].setSale(   "SWEET!" );  
   arrayRandomMinigameDay6to8[randomDay6to8_I].setRefuse( "Well shit.");
   arrayRandomMinigameDay6to8[randomDay6to8_I].setFail(   "That's not what I meant."); 

   arrayRandomMinigameDay6to8[randomDay6to8_I].setInst_Perfect(12, 0,0,0,0,0,0);
   arrayRandomMinigameDay6to8[randomDay6to8_I].setInst_Positive(71,  72, 60, 61,63, 22, 42,0,0, 0,0,0,0);   
   arrayRandomMinigameDay6to8[randomDay6to8_I].setInst_Negative(555, 81,81,83,84,85, 5000);
   randomDay6to8_I++; 


arrayRandomMinigameDay6to8[randomDay6to8_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay6to8[randomDay6to8_I].setIntro(  "Howdy. I need something to celebrate the next Independence Day with.");
   arrayRandomMinigameDay6to8[randomDay6to8_I].setSale(   "You know your stuff." );  
   arrayRandomMinigameDay6to8[randomDay6to8_I].setRefuse( "Must have been too much to ask.");
   arrayRandomMinigameDay6to8[randomDay6to8_I].setFail(   "You don't know your stuff at all."); 

   arrayRandomMinigameDay6to8[randomDay6to8_I].setInst_Perfect(50, 0,0,0,0,0,0);
   arrayRandomMinigameDay6to8[randomDay6to8_I].setInst_Positive(60, 62, 63, 12,0, 0, 0,0,0, 0,0,0,0);   
   arrayRandomMinigameDay6to8[randomDay6to8_I].setInst_Negative(555, 81,81,83,84,85, 5000);
   randomDay6to8_I++; 

arrayRandomMinigameDay6to8[randomDay6to8_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay6to8[randomDay6to8_I].setIntro(  "Howdy. I need something to celebrate the next Independence Day with. Something that shouts freedom when it fires.");
   arrayRandomMinigameDay6to8[randomDay6to8_I].setSale(   "You know your stuff." );  
   arrayRandomMinigameDay6to8[randomDay6to8_I].setRefuse( "Must have been too much to ask.");
   arrayRandomMinigameDay6to8[randomDay6to8_I].setFail(   "You don't know your stuff at all."); 

   arrayRandomMinigameDay6to8[randomDay6to8_I].setInst_Perfect(50, 0,0,0,0,0,0);
   arrayRandomMinigameDay6to8[randomDay6to8_I].setInst_Positive(60, 62, 63, 12,0, 0, 0,0,0, 0,0,0,0);   
   arrayRandomMinigameDay6to8[randomDay6to8_I].setInst_Negative(555, 81,81,83,84,85, 5000);
   randomDay6to8_I++; 




var randomDayPlus_I  = 0;
arrayRandomMinigameDay9Plus = array_create(0); // all unlocks possible!

arrayRandomMinigameDay9Plus[randomDayPlus_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setIntro(  "Hey mister, I work on the movie set with Duke and need another electric gun.");
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setSale(   "That must be it, thank you so much." );  
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setRefuse( "Damn, I hope this movie doesn't flop...");
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setFail(   "I guess whatever we need we're gonna have to make ourselves."); 

   arrayRandomMinigameDay9Plus[randomDayPlus_I].setInst_Perfect(72, 0,0,0,0,0,0);
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setInst_Positive(73, 0, 0, 0, 0, 0, 0,0,0, 0,0,0,0);   
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setInst_Negative(555, 81,81,83,84,85, 5000);
   randomDayPlus_I++; 


arrayRandomMinigameDay9Plus[randomDayPlus_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setIntro(  "Hello, what do you have in store for home defense that has a ton of power but is light?");
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setSale(   "That must be it, thank you so much." );  
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setRefuse( "What kind of dumbass are you?");
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setFail(   "Not gonna work for me."); 

   arrayRandomMinigameDay9Plus[randomDayPlus_I].setInst_Perfect(41, 0,0,0,0,0,0);
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setInst_Positive(10, 11, 40, 42, 31, 0, 0,0,0, 0,0,0,0);   
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setInst_Negative(555, 81,81,83,84,85, 5000);
   randomDayPlus_I++; 


arrayRandomMinigameDay9Plus[randomDayPlus_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setIntro(  "Hi there, I think my cousin came in here about a week ago and asked you about something long and hard. You got that?");
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setSale(   "That's it, I'll tell her she was right about you." );  
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setRefuse( "Ok, well, it was worth a try.");
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setFail(   "That can't be it. I'll tell her she was wrong about you."); 

   arrayRandomMinigameDay9Plus[randomDayPlus_I].setInst_Perfect(70, 0,0,0,0,0,0);
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setInst_Positive(0, 0, 0, 0, 0, 0, 0,0,0, 0,0,0,0);   
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setInst_Negative(555, 81,81,83,84,85, 5000);
   randomDayPlus_I++; 


arrayRandomMinigameDay9Plus[randomDayPlus_I] = new CreateRandomMinigame();
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setIntro(  "Hi, do you have anything really heavy but without a high fire rate?");
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setSale(   "I think this will do perfectly." );  
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setRefuse( "I guess you care more about the animal trying to eat me than you care about my safety.");
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setFail(   "That won't do at all."); 

   arrayRandomMinigameDay9Plus[randomDayPlus_I].setInst_Perfect(71, 0,0,0,0,0,0);
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setInst_Positive(42, 61, 71, 73, 0, 0, 0,0,0, 0,0,0,0);   
   arrayRandomMinigameDay9Plus[randomDayPlus_I].setInst_Negative(555, 81,81,83,84,85, 5000);
   randomDayPlus_I++;

#endregion



var randomExitText = "  ";

#endregion  


/////////////////////// days txts
#region Regular days 1 - 12


	/* 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;
	 //////////////////////////////////
	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_MiniGame_Granny_Day1;	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_NewsBgrSwap; // 
*/

#region  day 1  111111111111111


var day_I = 0; // day 1
 var dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I , false);  // first cutscene


  #region victor -> 0 - 51

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "victor smiling"  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Hey hey, my boy, how are you doing on this glorious day?", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , ""); ///-> orginal!
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hi Viktor, didn't expect to see you so early.", snd_TextScroll_Default );	
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_Victor;	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  "victor grumpy"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "My only tenant who can't pay rent starts a [#5893FF]side business[/c] inside my mall and he doesn't expect to see me first thing!?", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Ahhh, I can smell the money already.", snd_TextScroll_Default );	
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I wonder if he thinks about anything except money)", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Speaking of money...", snd_TextScroll_Default );	
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Nope)", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "I had the brilliant idea to add a casino to the mall. I'm going to be filthy stinking rich!", snd_TextScroll_Default );	
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "victor", "Hey, I wonder if I can get some slot machines in here, might bring in some business...", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Now, has my brother come to see you yet?", snd_TextScroll_Default );	
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "We spoke yesterday, he said he would come by this morning too.", snd_TextScroll_Default );		
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Oh good, I'd like to see my little bro.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "He doesn't call, he doesn't write, he just travels the country getting into mischief. ", snd_TextScroll_Default );	
	 dialog_I++;
   

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Maybe you should call him sometime?", snd_TextScroll_Default );		
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Ha, this is why I like you, you're so funny.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "You know, that reminds me of a joke...", snd_TextScroll_Default );	
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I wasn't joking... I never understand this guy.)", snd_TextScroll_Default );		
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(But I can't say anything after he's let me get so far behind in rent and not kicked me out.)", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(At least he knows there's nothing I can do.)", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Since they shipped everyone out of the city under the age of 20 after the rebellion, nobody comes to an arcade anymore.)", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I'm surprised they haven't built a wall yet to keep tourists out, not that any would ever come here.)", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "So the pirate says: ARGH, it's driving me nuts!", snd_TextScroll_Default );	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "HAHAHAHAHAHAHA.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "hehehe (same joke, different day.)", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Lad, I gotta tell ya, I think this little side business is gonna be a boon for both of us.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "So don't worry about the legal and moral gray area.", snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "As long as I can keep my arcade and nobody gets hurt.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Look, my brother doesn't exactly sell the highest quality weapons. I doubt anyone could hurt themselves, much less someone else.", snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Wait, I'm selling [#5893FF]low quality goods[/c][#F9CE7B]?[/c]", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Absolutely my boy!", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Why would anyone want to sell quality? It's bad for business.", snd_TextScroll_Default );	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Besides, if you're the only affordable option for weapons in this entire city, of course your supply is shit.", snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Now I gotta worry people will get mad at me).", snd_TextScroll_Default );		
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Look at it this way.", snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "You sell a little pistol to someone. They go to use it and the whole thing falls apart...", snd_TextScroll_Default );	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Nobody gets hurt AND they gotta come back to you to buy another one.", snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "That's a lucrative business model if you ask me. I can see the mountains of money pouring in already.", snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Sounds great, until someone comes in and punches me in the face over it.)", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You know what Vik.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "As long as I get to keep the arcade running, maybe it'll survive long enough to see the rebellion end and the city return to normal.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Oh lad, you don't just have high hopes, you have wild dreams, but I like that about you.", snd_TextScroll_Default );	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Now remember our deal, I may be generous, but you are way late on rent so you owe me interest.", snd_TextScroll_Default );	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor grumpy"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "If you can't [#5893FF]pay $20,000[#5893FF] in the [#5893FF]next 14 days[/c], I have to kick you out.", snd_TextScroll_Default );	
	 dialog_I++;
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I know the deal Vik.", snd_TextScroll_Default );		
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Don't look so sad, I'll probably open a second strip club in your place.", snd_TextScroll_Default );	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "You wouldn't believe how much money the American Spread Eagle makes.", snd_TextScroll_Default );	
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Actually I would. Almost every person I see walk in this place goes there. I wouldn't be caught dead in that place.)", snd_TextScroll_Default );		
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Vik, you know my wife hasn't let me hear the end of it since that place opened. She thinks I'm there all day, now she drops in to check on me randomly.", snd_TextScroll_Default );		
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Hahaha, that sounds like a 'you' problem.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Tell you what, if you want to stop by some time, I moved my office into the club. Come see me and I'll have one of the girls show you a thing or two.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 
	 
	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I've seen those girls, I'd rather not.)", snd_TextScroll_Default );		
	 dialog_I++; 
	 
	 
  #endregion	 
	 /// shadow enters index 51
	 
	 
#region shadow 52 -

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor grumpy"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "enter shadow");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "MY BROTHER! HAHAHAHA!", snd_TextScroll_Default );	 
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor grumpy"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "unknown", "Hello... ", snd_TextScroll_Default );	
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_Shadow;		 
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor grumpy"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Brother.", snd_TextScroll_Default );	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor grumpy"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "V, mind if I take care of business here and then I'll stop by your office?", snd_TextScroll_Default );	
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor grumpy"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "You haven't changed a bit.", snd_TextScroll_Default );	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "victor", "...", snd_TextScroll_Default );	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor grumpy"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "victor", "...", snd_TextScroll_Default );	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor grumpy"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "I guess I'll let you two get things ready, I've got glitter covered money to count anyways.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor grumpy"  , "exit default");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Did you do everything just like I told you?", snd_TextScroll_Default );	
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes of course, I even ate the list after so nobody could find it.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "What the hell! I didn't say to do that...", snd_TextScroll_Default );	
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(It was a joke, guess arms dealers don't have a sense of humor)", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(On the flipside, is it a good idea to be super friendly with a shadow figure that supplies guns?)", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Maybe I should be more serious...) ", snd_TextScroll_Default );		
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Well, probably for the best you did.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Selling weapons is a real gray area here with all the local government disbanding and the police force making up rules as they go...", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "So you need to be diligent about what you sell and to whom.", snd_TextScroll_Default );	
	 dialog_I++;
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Right, gotta use my head.", snd_TextScroll_Default );		
	 dialog_I++;
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Exactly, and I don't plan on hooking you up with an entire arsenal until you prove yourself. Gotta start small and show you know what you're doing first.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 
	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Understood.", snd_TextScroll_Default );		
	 dialog_I++;	 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "I usually don't do this, but I think it's a good idea for me to make sure you know exactly what you're doing, so let's have a little practice.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh cool, so this is like my tutorial level.", snd_TextScroll_Default );		
	 dialog_I++;	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "What? Are you even taking this seriously?", snd_TextScroll_Default );	
	 dialog_I++;	 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes, sorry, of course.", snd_TextScroll_Default );		
	 dialog_I++;		 
	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Know what, never mind, you be you, it'll be the greatest front for under the table weapon sales I've ever seen.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Way better than the guy I had that pretended to be a clown.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 
	 // 78
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(And he says I'm weird? Wait, did he say clown...)", snd_TextScroll_Default );		
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "First lesson, don't trust anyone. I don't care if it's a sweet old lady, anyone could be a cop or someone looking to rob you as soon as they have the goods.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Selling weapons to the wrong person can get you in real trouble, really fast. You can refuse to sell to anyone for any reason.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "The most important thing about it is...", snd_TextScroll_Default );	
	 dialog_I++;	 
	 	 
	 
	 
	 
	 // kyle interrupts
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "enter right");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Hey boss man, I saw Viktor coming and wanted to let you know he was on his way down here.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,  "player", "Yeah, he was already here, bud. Viktor is a lovely fella...", snd_TextScroll_Default );		
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle dumb"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,  "player", "Hey, Kyle, I have some business to tend to, do you mind making sure everything is turned on for me?", snd_TextScroll_Default );		
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle dumb"  , "exit right"); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Oh yea, sorry about that. I'll chat with you later bossman.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 
		 
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I wasn't really listening. I should be. If I want to boost my income. I have to take this a bit more serious)", snd_TextScroll_Default );		
	 dialog_I++;	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Sorry for that, continue.", snd_TextScroll_Default );		
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "So many weirdos in this town...", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Anyways, where was I? Oh yeah second lesson...", snd_TextScroll_Default );	
	 dialog_I++;


	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I don't think we finished lesson one. Oh well, I wasn't really listening.)", snd_TextScroll_Default );		
	 dialog_I++;	
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Selling is a fine art. Everyone knows what they want, but they rarely know what they need. Some need less than what they want, some need more.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Most people will accept what you are willing to give them if they can afford it and it fits their needs.", snd_TextScroll_Default );	
	 dialog_I++;	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Pay close attention to what someone asks for. The better you provide them with what they want, the more likely they'll be a return customer.", snd_TextScroll_Default );	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Lesson C...", snd_TextScroll_Default );	
	 dialog_I++;		 

 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(wasn't he using numbers before?)", snd_TextScroll_Default );		
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Failure is always an option. Everyone has their upper and lower limits on what they're willing to accept.", snd_TextScroll_Default );	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Make a bad offer and they'll bail on you, nobody in this town has the patience to haggle with someone they think is trying to rip them off. ", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Final lesson, try to sell me something.", snd_TextScroll_Default );	
	 dialog_I++;
	 
	 
     // tutorial begin 100
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Let's say I appear to be a garden variety thug and I say I want a [#5893FF]light, powerful weapon[/c] that lets me keep a little distance, and I have [#5893FF]$2000[/c] to spend.", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Shadow_Day1_Tutorial;
	 dialog_I++;
     
/////////////////////////////////////////////	 
	 // sale 101
	 dialog_I = 110;	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Good job, you didn't screw up! You're a natural.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;	 
	 dialog_I++;		 
	 
	 // refuse 102
	 dialog_I = 130;	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Well, I don't know why you did that, but that's fine, it doesn't hurt to practice saying no.", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;
	 dialog_I++;		 

	 // fail 103
	 dialog_I = 120;	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "You didn't listen at all. Hopefully you get the hang of this because I need to make a profit too.", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;
	 dialog_I++;	
	 
	 
	 
	 // replys, start at 150 , after sale/refuse/fail
	 dialog_I = 150;
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Got it. I'll do my best.", snd_TextScroll_Default );		
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Oh and remember, these are all on consignment so [#5893FF]I'll collect my portion later.[/c]", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ShadowPay_Inventory_Day1;	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Don't spend what you owe me before I come back...", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "You do NOT want to be in debt to ME.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I really should not make this one angry.)", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "shadow default"  , "exit shadow");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "shadow", "Ok then and good luck.", snd_TextScroll_Default );		 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

#endregion



#region Granny
     
	 // transition!	
   //  arrayCutscenes[day_I].setText(dialog_I,  1, "player", "", snd_TextScroll_Default );	
   //	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;	
   //	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2,"nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh, here comes someone already.)", snd_TextScroll_Default );	 
	 dialog_I++;	

    // arrayCutscenes[day_I].setSprite(dialog_I,2,"nothing"  , "");	
    // arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_Granny;		 
	// dialog_I++;	
	 
	 
     // granny enters
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny default"  , "enter default");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "???", "Hello young man, I was reading the paper and noticed the article advertising your shop.", snd_TextScroll_Default );	
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_Granny;		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny smiling"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "granny", "It stated that you got some.. special offers. Oh young man, I do love some [#5893FF]specials[/c]!", snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes ma'am, I am here to serve your special needs. How may I be of service?", snd_TextScroll_Default );		
	 dialog_I++;	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "granny", "Oh aren't you just a dear sweet young man.", snd_TextScroll_Default );	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny dismissive"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "granny", "I am in need of something for protection. My neighborhood has grown really dangerous.", snd_TextScroll_Default );	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny dismissive"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I understand, this whole city is nothing but danger.", snd_TextScroll_Default );		
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny dismissive"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "granny", "That it has. Now, I don't want to hurt anyone, I just want to make a show of force if I have to so that nobody wants to hurt an old granny.", snd_TextScroll_Default );	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "granny", " I think I could go for a [#5893FF]small pistol[/c], something that fits in my purse and is [#5893FF]very light[/c].", snd_TextScroll_Default );	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny dismissive"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "granny", "That way it can't really hurt anyone and I can feel safer, and I only have [#5893FF]$1000[/c] to spend, it's half my life savings...", snd_TextScroll_Default );	 
	 dialog_I++;

     // begin granny sale
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny dismissive"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "[#FBA90A]([/c][#5893FF]A small pistol[/c][#FBA90A] for a granny, she probably needs the [/c][#5893FF]lightest[/c][#FBA90A] one I have in stock[/c][#FBA90A])[/c]", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Granny_Day1;	
	 dialog_I++;	 


	 // jump to 200

	 
	 // sale! 200
	 dialog_I = 200;	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny smiling"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "granny", "Thank you sweet dear, I feel like I could rob a... I mean protect myself from a robber. See you later!", snd_TextScroll_Default );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny smiling"  , "exit default");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "granny", "", snd_TextScroll_Default );	 	 
	 dialog_I++;
     
	 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;
	 //////////////////////////////////








	 // Refuse! 205
	 dialog_I = 205;	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "granny", "I see, well, I best be off then.", snd_TextScroll_Default );	 
	 dialog_I++;
	  
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny angry"  , "exit default");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I suppose so, now if you please, I have other customers to tend to...", snd_TextScroll_Default );		
	 dialog_I++;

 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;
	 //////////////////////////////////
	 
	 



	 // Fail! 210
	 dialog_I = 210;	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "granny", "And I thought my hearing was bad. You know what, I think I'll go see that clown that runs around town selling cheap goods, maybe he'll help a granny out.", snd_TextScroll_Default );	 
	 dialog_I++;	 
	  
     arrayCutscenes[day_I].setSprite(dialog_I,2, "granny angry"  , "exit default");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "Did she say a clown? Surely she was just calling someone a name and it's not a real clown, but in this city, nothing would surprise me.", snd_TextScroll_Default );	 
	 dialog_I++;

  
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;
	 //////////////////////////////////


	 // random sale after granny	
	 /*
	 dialog_I = 210;
     arrayCutscenes[day_I].setSprite(dialog_I,2,"nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Did she say a clown? Surely she was just calling someone a name and it's not a real clown, but in this city, nothing would surprise me.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;	 
	 dialog_I++;    	 
     */

    #endregion


#region random sale 1   220 to 
	
	
	// begin random sale 1
	
	
	/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay1_1_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay1_1_Spr_Default = scr_SetRandomSpr(randomDay1_1_Spr, "default" );
	   var randomDay1_1_Spr_Angry   = scr_SetRandomSpr(randomDay1_1_Spr, "angry" );

    var getRandomMiniGameIndexDay1_1  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay1to3 );
    //arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_1].setInst_ApplyAll( obj_MiniGame_RandomSale_Day1,   230, 240, 250 );
	
	randomSaleOverride_Day1_1 = arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_1]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////
	
	
	 dialog_I = 220;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_1_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_1].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_1].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale_Day1;		
	 dialog_I++;
     
	 
	 
	 dialog_I = 230;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_1].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_1_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "random", randomExitText, snd_TextScroll_Default );		
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_260;		 
	 dialog_I++;
	 //////////////////////////////////
	 
	 



	 dialog_I = 240;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_1].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "random", randomExitText, snd_TextScroll_Default );			 	 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_260;		 
	 dialog_I++;
	 //////////////////////////////////





	 dialog_I = 250;	 
	 // fail!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_1].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "random", randomExitText, snd_TextScroll_Default );			 	 
	 dialog_I++;	



	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_260;		 
	 dialog_I++;
	 //////////////////////////////////



	
#endregion // end of random sale 1	



   #region jez 260


	 dialog_I = 260;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "enter default");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Hey there sugar. Been a while since I got to see your sweet face.", snd_TextScroll_Default );  
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh good, maybe it will be a good day after all.)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Uhm, eh... I. What can I do for you Jez?", snd_TextScroll_Default );
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_Jez;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez dismissive"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Well you know I love to come in here just to see you and all, but it seems you may have something more that I need today.", snd_TextScroll_Default );  
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(If she's a tease AND a customer, let's hope my wife does not see her here)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(She always flips out over nothing.)", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez flirting"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "jez", "You know what I want. Something long, hard, and ready for me to put my lips on it and blow.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez flirting"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Am I dreaming right now?)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Are my hands sweating?)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(The last time that happened I was a teenager.)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(She knows how to get me all worked up.)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Keep it cool, you can do this. Show her you aren't phased by it.)", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes.... I mean no, I mean yes.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "...", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Ok, knock it off buddy, you're married and if she finds out, you're dead.)", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Oh dear, did I get you all worked up? I'm sorry sugar.", snd_TextScroll_Default );  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "No, no, no, it's not that. I think I know exactly what you need...", snd_TextScroll_Default );		 
	 dialog_I++;

     
	 // jez sale
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Long, hard, and easy to blow... wait, she was referring to a weapon, right?)", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Jez_Day1;		 
	 dialog_I++;




     // sale! 301
	 dialog_I = 301;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez flirting"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Oh sugar, you sure know how to please a woman.", snd_TextScroll_Default );  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I hope she can't see me blushing.)", snd_TextScroll_Default );		 
	 dialog_I++;
    
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "I can't wait to see what else you can do for me. See you round sugar.", snd_TextScroll_Default );  
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Pie... Ugh, I mean bye...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"  , "exit default");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Seriously, PIE, I'm such an idiot.)", snd_TextScroll_Default );	 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_350;		 
	 dialog_I++;
	 //////////////////////////////////






     // refuse! 309
	 dialog_I = 309;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez angry"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "I can't believe you would turn me down. Now I don't know if I can ever show my face here again.", snd_TextScroll_Default );  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez angry"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm sorry, but I can't.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "...", snd_TextScroll_Default );  
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  , "exit default");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(wow, she looked pissed.)", snd_TextScroll_Default );		 	 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_350;		 
	 dialog_I++;
	 //////////////////////////////////




     // fail! 316
	 dialog_I = 316;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "And just why would I want to put my mouth on that?", snd_TextScroll_Default );  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Dammit, she got me so worked up I totally screwed this sale.)", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez dismissive"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "You know, maybe I can forgive you this once, but I'll have to think about it.", snd_TextScroll_Default );  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez dismissive"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Please do, I'm so sorry about that. Are you sure you don't want me to see what else I can do for you?", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez disgusted"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Now you're starting to sound desperate. Not a good look. ", snd_TextScroll_Default );  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez disgusted"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "We'll see if I want to forgive you and I'll give you another shot in a few days. Maybe by then you'll be cooled off.", snd_TextScroll_Default );  
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"jez default"  , "exit default");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(DAAAAMMMMMIIIIIITTTTTT.......)", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Ok, calm down, gotta be ready for the next sale. Oh man, what if my wife finds out she was in here?)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "( It doesn't matter that nothing happened. Ugh, I can't even refuse a woman without getting in trouble.)", snd_TextScroll_Default );	 
	 dialog_I++;



	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_350;		 
	 dialog_I++;
	 //////////////////////////////////




#endregion




    #region random sale 2   350 to 

	/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay1_2_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay1_2_Spr_Default = scr_SetRandomSpr(randomDay1_2_Spr, "default" );
	   var randomDay1_2_Spr_Angry   = scr_SetRandomSpr(randomDay1_2_Spr, "angry" );

    var getRandomMiniGameIndexDay1_2  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay1to3 );
    //arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_2].setInst_ApplyAll( obj_MiniGame_RandomSale_Day1,   230, 240, 250 );
	
	randomSaleOverride_Day1_2 = arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_2]; // array for override once instance exist!	
	/////////////////////// end auto set random sale  ///////////////////////////////////////



      dialog_I = 350; 
     // random sale 2
     arrayCutscenes[day_I].setSprite(dialog_I,2,"nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "(Oh good, another customer)", snd_TextScroll_Default );	
	 //arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day1;		 
	 dialog_I++;
	
	


	// begin random sale 1
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_2_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_2].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_2].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day1; 		
	 dialog_I++;
     
	 
	 dialog_I = 360;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_2].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,randomDay1_2_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_390;		 
	 dialog_I++;
	 //////////////////////////////////





	 dialog_I = 370;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_2].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		 	 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_390;		 
	 dialog_I++;
	 //////////////////////////////////




	 dialog_I = 380;	 
	 // mess up/!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay1_2].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay1_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 	 
	 dialog_I++;	


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_390;		 
	 dialog_I++;
	 //////////////////////////////////



	
	
#endregion // end of random sale 2	


    #region wife    390   

	 dialog_I = 390;
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Ugh, this place is a real dump today.", snd_TextScroll_Default );	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2,"nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Please no, not her, not today...)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife annoyed"  , "enter default");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"wife", "Hello, dear...", snd_TextScroll_Default );	 
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_Wife;	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife annoyed"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"wife", "What's this I hear about your little side business?", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife annoyed"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"player", "Hunny, please it's nothing.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife angry"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"wife", "NOTHING!!! What do you mean, nothing? You're trying to make extra money and keep it from me, I know you are.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife angry"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"playerT", "(Of course I am, what is this really about?)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife angry"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"player", "That's not it and I didn't want to tell you this because I knew you'd be mad, but I'm about to lose the arcade.", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife angry"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"wife", "Oh what a surprise! Nobody ever comes to this dump to spend money except your own dummy employee.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife annoyed"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"player", "So why are you mad I'm trying to make money then?", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife annoyed"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"wife", "Because, what's yours is mine and I don't want you thinking you're going to make enough to leave here without me.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"player", "Who said anything about leaving?", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife angry"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"wife", "I've seen that JEZEBELLE that comes in here and flirts with you. Don't think I don't know what's going on.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife angry"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"playerT", "(Ahh, so this is really what is going on. She's jealous over nothing again.)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife angry"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"playerT", "(Wait, how does she know her name?)", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife angry"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"wife", "Wipe that stupid grin off your face, it just proves I'm right.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"player", "So what is it you want me to do then?", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"playerT", "(I know where this is going. She's going to tell me all the things I do wrong again.)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"playerT", "(Just gotta pretend to listen until she runs out of steam. Just hope a customer doesn't come in anytime soon.)", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife annoyed"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"wife", "blah blah blah I want. Blah blah your fault blah blah. I want you to blah blah blah more money.", snd_TextScroll_Default );	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife annoyed"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"wife", "blah blah you better blah blah. Blah my psychic told me you blah blah nothing good.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife annoyed"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"wife", "blah blah blah I want blah. Blah blah situation also blah blah blah give me.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife annoyed"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"wife", "Buy me flowers or blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah..", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife annoyed"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"playerT", "(What was that last part?)", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"wife", "You better get your priorities straight or you'll regret it. DAMMIT, now I'm going to be late for my hair appointment. Thanks for taking up so much of my time.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  , "exit default");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "", snd_TextScroll_Default );	 
	 dialog_I++;


#endregion


#region kyle 417

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I think that's got to be enough for one day.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"player", "Kyle, where are you?", snd_TextScroll_Default );	
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_Kyle;	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "enter right");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"kyle", "Right here boss man!", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"kyle smiling"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,"player", " Kyle, run the store. I'm gonna take a look at the books for today. I'll be in my [#5893FF]office[/c][#F9CE7B] if you need me.[/c]", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,"kyle", "Right on boss man. I got this.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day1;
	 
	 
	// if(demo  == true){
	//	arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_DemoEnd; 		 
	//	 } else {   arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day1;	}	 

#endregion



#endregion // end of day 1

#region  day 2   222222222222 
   
 day_I    = 1; // day 2
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I , false); // first cutscene   
   
   
	 #region angry dad 0 to 62

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Here's hoping for a better day. Maybe some beautiful lady will come in and want to take me away to...", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(or not)", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "...", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "...", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What the hell is going on here)", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Uh... Can I help you?", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Daughter...", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Daughter... dating...", snd_TextScroll_Default );		
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_AngryDad;		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Is that a good thing or a bad thing?", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "BAAAAD...", snd_TextScroll_Default );	
	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Definitely not looking like a good day)", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "Gimme the dog-gun.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Do I dare ask what you plan to do with it?", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "DO I ASK YOU HOW TO DO YOUR JOB?", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok calm down buddy.", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(If his daughter even lives here she's gotta be at least 20. I've never seen a parent so overprotective of an adult child before.)", snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "DOG GUN. NOW!", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Dammit this guy is a persistent cave-man. Ok, let me think about this one...)", snd_TextScroll_Default );			 
	 dialog_I++;

     // sale start 21
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Dog-gun? Ah, he means a hunting rifle.)", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_AngryDad_Day2;		 
	 dialog_I++;
 
 
     // end
	 dialog_I = 50;
	 
	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "GIMME GIMME GIMME", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You're wel.... (Aaaaaaand he's gone.)", snd_TextScroll_Default );		 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_70;		 
	 dialog_I++;
	 //////////////////////////////////








	 dialog_I = 55;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "I'M GOING TO CALL MY CONGRESSMAN ABOUT THIS!!", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh sure, now he can talk...) ", snd_TextScroll_Default );		 	 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_70;		 
	 dialog_I++;
	 //////////////////////////////////





	 dialog_I = 60;	 
	 // mess up!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "WHAT!? I said dog gun, not this crap!", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "dad default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Ohhhh... Dog gun, now I get it.)", snd_TextScroll_Default );			  	 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_70;		 
	 dialog_I++;
	 //////////////////////////////////



	 #endregion // end of angry dad


    #region random sale 1   70 to 117


	 dialog_I = 70;	   
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Why is my life this way?)", snd_TextScroll_Default );			 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(All I wanted was to settle down, have a family, and live peacefully.)", snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Mom always said I made terrible choices. Tried to tell me what I wanted and didn't want.)", snd_TextScroll_Default );			 
	 dialog_I++;	
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(If she didn't try to control me though, I wouldn't have made stupid choices.)", snd_TextScroll_Default );			 
	 dialog_I++;	 
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh here comes another customer, good, I need a distraction. The stress is killing me)", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_100;	 
	 dialog_I++;		
	
	
	
	/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay2_1_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay2_1_Spr_Default = scr_SetRandomSpr(randomDay2_1_Spr, "default" );
	   var randomDay2_1_Spr_Angry   = scr_SetRandomSpr(randomDay2_1_Spr, "angry" );
    
    var getRandomMiniGameIndexDay2_1  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay1to3 );
	
	randomSaleOverride_Day2_1 = arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay2_1]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////	
	// begin random sale 1
	
	
	dialog_I = 100;
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_1_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay2_1].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay2_1].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day2;		
	 dialog_I++;
     
	 
	 dialog_I = 110;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay2_1].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_1_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;		 
	 dialog_I++;
	 //////////////////////////////////







	 dialog_I = 120;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay2_1].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_1_Spr_Angry , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 	 
	 dialog_I++;



	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;		 
	 dialog_I++;
	 //////////////////////////////////




	 dialog_I = 130;	 
	 // fail!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay2_1].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_1_Spr_Angry , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			  	 
	 dialog_I++;	


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;		 
	 dialog_I++;
	 //////////////////////////////////


	
	
#endregion // end of random sale 1	
	
	
   #region  clown enter  150 to
	 dialog_I = 150;	


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What... the... hell...)", snd_TextScroll_Default );			  	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown smiling"  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Heyya buddy.", snd_TextScroll_Default );		  	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ummm... Hi. What can I do for you?", snd_TextScroll_Default );			  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown smiling"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "No time for small talk, Bam Bam have an offer that you cannot refuse.", snd_TextScroll_Default );		
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_Clown;			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "And that is? I am sorry but I am not really interested in going to clown college.", snd_TextScroll_Default );			  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "You sure? You look like a clown to me.", snd_TextScroll_Default );		  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "And you're a bit of a smart ass for a guy trying to make me an offer.", snd_TextScroll_Default );			  	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Fine, fine. Ya see, I know this guy who is a damn menace, and I've been stealing his weapons to try to keep him from causing more trouble.", snd_TextScroll_Default );		  	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "How noble of you...", snd_TextScroll_Default );			  	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Why are so many weird people coming in here? Starting to really question how smart of an idea this was.)", snd_TextScroll_Default );			  	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Hey, I'm serious.", snd_TextScroll_Default );		  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "I usually dump his stuff in the river, but now that you're open, I got a deal that is good for both of us.", snd_TextScroll_Default );		  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(A clown comes in and wants to be taken seriously. The balls on this guy...)", snd_TextScroll_Default );			  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Fine, let's hear it.", snd_TextScroll_Default );			  	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Anything I pinch off this guy I want to sell to you for cheap.", snd_TextScroll_Default );		  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "That way, the city is safer, I make some money for my trouble, and you can flip it to make some money for yourself.", snd_TextScroll_Default );		  	 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "This isn't a pawn shop.", snd_TextScroll_Default );			  	 
	 dialog_I++;	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Well it's not really much of an arcade either, now is it?", snd_TextScroll_Default );		  	 
	 dialog_I++;	 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Bastard has a point, but insulting my business isn't cool.)", snd_TextScroll_Default );			  	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hey buddy, watch your mouth, you're not really making a good sales pitch here.", snd_TextScroll_Default );			  	 
	 dialog_I++;		 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Okay, okay, my bad...", snd_TextScroll_Default );		  	 
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "All I could get this time was his folding baton, so if you want, I'll give you this one for free.", snd_TextScroll_Default );		  	 
	 dialog_I++;		 
	 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "What do you say?", snd_TextScroll_Default );	
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Clown_Day2; /// 
	 dialog_I++;		 


    dialog_I = 200;	 	 
	
	// choice accepted!
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Great, here ya go. Bam Bam the Clown is very happy with your choice!", snd_TextScroll_Default );	
	 dialog_I++;
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Also, one last thing, I pinch this stuff off a cop, so please be discreet and if he ever comes in here you CANNOT sell anything to him.", snd_TextScroll_Default );	
	 dialog_I++;
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "He's a nice guy but he's just a massive idiot and can't be trusted to use a weapon correctly.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Great, what did I just get myself into...)", snd_TextScroll_Default );			  	 
	 dialog_I++;		 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");  
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Don't worry about it. It's not like laws here are really enforced ya know. ", snd_TextScroll_Default );	 			 
	 dialog_I++;		 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "exit default");  
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "I'll see ya next time buddy.", snd_TextScroll_Default );	 			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");  
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;	


	// choice declined!
    dialog_I = 210;	 	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Guess you took the arcade comment a little too seriously. Well, maybe I'll try again next time I pinch something buddy.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "See ya, ugh, clown?", snd_TextScroll_Default );			  	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Oh, it's Bam Bam the Clown. Bye buddy.", snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;	 
	 
	 
	#endregion	// end of clown
	
	
	
	// short inbetween index 220
    dialog_I = 220;	 	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(And here I thought the guy from earlier was a clown.)", snd_TextScroll_Default );			  	 
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Time for the next customer already I see.", snd_TextScroll_Default );			 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_250;		 
	 dialog_I++;
	 ///////////////////////////////////	






#region random sale 2  250 to 270

	
		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay2_2_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay2_2_Spr_Default = scr_SetRandomSpr(randomDay2_2_Spr, "default" );
	   var randomDay2_2_Spr_Angry   = scr_SetRandomSpr(randomDay2_2_Spr, "angry" );
    
    var getRandomMiniGameIndexDay2_2  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay1to3 );
	
	randomSaleOverride_Day2_2 = arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay2_2]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////
	
	// begin random sale 2	
	
	 dialog_I = 250;

      arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_2_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay2_2].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay2_2].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day2;		 
	 dialog_I++;
     
	 
	 
	 dialog_I = 260;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay2_2].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_2_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "random", randomExitText, snd_TextScroll_Default );		 
	 dialog_I++;


	 // fake transition	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;


     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_290;		 
	 dialog_I++;	




	 dialog_I = 270;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay2_2].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "random", randomExitText, snd_TextScroll_Default );		 	 
	 dialog_I++;


	 // fake transition	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;


     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_290;		 
	 dialog_I++;	




	 dialog_I = 280;	 
	 // fail!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay2_2].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay2_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "random", randomExitText, snd_TextScroll_Default );			 	 	 
	 dialog_I++;	


	 // fake transition	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;


     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_290;		 
	 dialog_I++;	
	
	
#endregion // end of random sale 2	



#region nerd 290

	 dialog_I = 290;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Another happy customer...)", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hey there, are you here to play?", snd_TextScroll_Default );			 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Hello there, good citizen.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I can't believe it, an ACTUAL customer.)", snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "I was informed of your um, establishment by a colleague of mine.", snd_TextScroll_Default );
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_Nerd;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "He said you may be able to help me protect myself. ", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Wait, you're not here to play in the arcade.", snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Do not get me wrong my fellow bi-pedal.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I am a connoisseur of fine video games, but you seem to not have any of those available.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(This little shit.)", snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "What I am seeking is a little bit more on the... pointy side.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What does a guy like you want with something like that?", snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "It is not a matter of desire, rather it is a matter of necessity my good sir.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh? Just what, uh... necessitates such a need?", snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I arrived early to the park yesterday to prepare for the Friends Adventure Party club when...", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Wait, wait, wait... You're in the FAP group??", snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Yes sir and I am aware of the dubious alter meaning that is quite unfortunately not appropriate nor does it have anything...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "to do with any other 'hobbies' of my colleagues and I.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "HAHAHAHAHAHA....", snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Sir, are you finished.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes, hehehe, go on, hehehe...", snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "As I was saying, while I was at the park an elderly female wearing a Kabuki mask approached and pretended to take interest in my costume.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "However, it was all a trick. She soon brandished a weapon and demanded all of my money.", snd_TextScroll_Default );		 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I only had a few dollars, so she demanded my costume and all of my collectible trading cards.", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I'm trying so hard not to laugh, but I don't know if I can keep it in.)", snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Imagine him being mugged and only having some kind of nerd trading cards, the face of the robber must have been priceless.)", snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I see you find this amusing.", snd_TextScroll_Default );		 
	 dialog_I++;		
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(FUCKING HILIARIOUS!)", snd_TextScroll_Default );			 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You can always use your natural manly charm, that should repel any lady in the near vicinity!", snd_TextScroll_Default );			 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I'll have you know, my mom says I'm very manly. Now, if we can get back to business.", snd_TextScroll_Default );		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm sorry bud, it's just... Wait, you want something pointy to defend against an old lady with a gun?", snd_TextScroll_Default );			 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "That's right. I don't like the idea of firing a gun or even holding one. Can't trust them not to misfire. One can never be too safe.", snd_TextScroll_Default );		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok, but don't you think the granny will, I don't know, shoot you if you try something?", snd_TextScroll_Default );			 
	 dialog_I++;		

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I dare say, I do not get the impression she had true intentions. If I merely had something to scare her, I believe she would run in fear.", snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "My budget is limited, so anything scary under [#5893FF]$500[#5893FF] will do.", snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I don't think so. I'm afraid this guy isn't going to make it very far in life.)", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Well, I guess I can consider helping you.", snd_TextScroll_Default );			
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What did he say again? Below 100 or 200?)", snd_TextScroll_Default );		
		 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Nerd_Day2;	
	 dialog_I++;



	 dialog_I = 350;
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Thank you kind sir. I shall defend myself with honor.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd smiling"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "For your sake, I sure hope so.", snd_TextScroll_Default );		
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;		 
	 dialog_I++;
	 ///////////////////////////////////





	 dialog_I = 360;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Well, perhaps it is for the best. I do hope to not need your services again.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd dismissive"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Good luck friend. (He's gonna need it.)", snd_TextScroll_Default );			 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;		 
	 dialog_I++;
	 ///////////////////////////////////



	 dialog_I = 370;	 
	 // fail!
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Oh, well that is a bit out of my price range.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I suppose I could just point my wand at her and shout spells, she is quite old and will perhaps become frightened and leave.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Ya, he's gonna die.)", snd_TextScroll_Default );			 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Goodbye good sir.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Bye kid, and please don't do anything stupid.", snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Ha, never...", snd_TextScroll_Default );		 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;		 
	 dialog_I++;
	 ///////////////////////////////////


#endregion end of nerd

	
	#region Kyle  380
	 dialog_I = 380;	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Ok, no more of this for today.)", snd_TextScroll_Default );			 	 	 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle, can you shut the gate?", snd_TextScroll_Default );			 	 	 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "enter right");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Absolutely bossman. Kind of a weird day huh?", snd_TextScroll_Default );		 	 	 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "It sure was. Hey, can you make sure not to mention that Jez came in to anyone?", snd_TextScroll_Default );			 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Why would I want to mention a totally hot customer lady that seems to be totally in love with you.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Does she really have the hots for me?)", snd_TextScroll_Default );			 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I guess I still have what it takes. I mean, I was a total stud back in the day.)", snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You mean I have a chance? Like for real? Not that I would do such a thing.", snd_TextScroll_Default );			 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Or would I? That woman is dream come true)", snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Bossman, I bet you could get any lady you wanted.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "And you can count on me. My lips are sealed!", snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Thanks Kyle. My head hurts enough as it is, I don't need to get hit with another frying pan...", snd_TextScroll_Default );			 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(again)", snd_TextScroll_Default );			 	 	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Oh bossman, your life sure has become more funny recently.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I don't find it that funny. I think my life has been more stressful since I decided to try this side venture.)", snd_TextScroll_Default );			 	 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "exit right");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle, can you close shop for today. I think I'm done for the day.", snd_TextScroll_Default );			 	 	 
	 dialog_I++;	 
 

	#endregion	
	
	#region cop 450


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "HEY, WAIT. DON'T SHUT THAT GATE.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Hey bossman, some guy wants in, he's got a badge and a uniform.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;	



     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh crap, maybe a frying pan to the head would be better right now.)", snd_TextScroll_Default );			 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Should I let him in?", snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "YOU DAMN SURE BETTER LET ME IN.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(That's it, I'm toast)", snd_TextScroll_Default );			 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes, yes. Let him in...", snd_TextScroll_Default );			 	 	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "", snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes officer, I can break any size bill for change if you would like to play some games while we close shop.", snd_TextScroll_Default );		
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_Cop;		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Cut the shit. I know what goes on here and I would normally care, but right now I have to let it slide.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Eh, officer, I can explain... I needed the...", snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I lost my baton. Can't go back to the station to check out without all my equipment again or I'll have to scrub all the toilets there for a week.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "You wouldn't believe the shit that comes out of those guys... nevermind. I sure hope you have some in stock.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What?!)", snd_TextScroll_Default );			 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, um, I, uh...", snd_TextScroll_Default );			 	 	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Well, what's the hold up?", snd_TextScroll_Default );		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Either you got one in stock and you're going to sell it to me, or you don't have one in stock, in which case I may have to see if you got all your papers in order for everything you sell here.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "So which is it?", snd_TextScroll_Default );		 	 	 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1,"cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(He wants a replacement baton.)", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Cop_Day2;	 	 
	 dialog_I++;	 
	 
	 
	 //// sale
	 dialog_I = 500;
		            
					
	 // chice text!!!	  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Man, this looks just like the one I lost...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "...", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Damn good thing, nobody at the station will notice it's not mine.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Happy to help, sir.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Sorry about the papers thing. Since you saved my ass, I'll trust you've paid for all your permits.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Absolutely sir, 100%.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Keep up the good work. Maybe, I'll stop in and play some games sometime. Take care. ", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_560;		 
	 dialog_I++;



	 dialog_I = 510;	 
	 // refuse!

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Sorry officer, looks like I don't have any batons in stock.", snd_TextScroll_Default );		
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Well that's just a shame you don't have any. Maybe it's for the best.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I've wanted to get out of this hell hole for a while. If I get fired, I'm outta here.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I really am sorry. I know you must do a lot to keep people safe here.", snd_TextScroll_Default );		 	 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop angry"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "You bet your ass I do. I'd say I'm one of the best cops on the force, but that may all be over now.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop angry"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "If I was you, I'd get out of the city too. Go some place nice and never look back.", snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Now there's an idea.", snd_TextScroll_Default );		 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Take care of yourself, this city isn't going to be safe without me around.", snd_TextScroll_Default );		 
	 dialog_I++;		 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Not what I heard...)", snd_TextScroll_Default );		 	 
	 dialog_I++;	 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Oh and, before I go, make sure you get your permits posted.", snd_TextScroll_Default );		 
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I don't see them anywhere and the next officer to come around won't be so forgiving.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes officer, sir...", snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_560;		 
	 dialog_I++;



	 dialog_I = 530;	 
	 // fail!
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "What the absolute hell is this!? You better have a permit to sell this.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, uh, yes of course.", snd_TextScroll_Default );			 	 	 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "cop", "You don't sound so sure of it.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes officer, I mean sir, the permit office said it was in the mail last week.", snd_TextScroll_Default );			 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "cop", "For your sake you better hope they arrive before I come back...", snd_TextScroll_Default );		 	 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "cop", "If I don't get fired for losing my baton that is.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That sounds like an extreme punishment for losing a baton.", snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "cop", "It probably would be, but it's not the only thing I've lost. That's not any of your business though.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "cop", "But you know what is your business?", snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What's that officer?", snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "cop", "Getting your damn permits.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I can't believe this, here I thought it was going to be a good day.)", snd_TextScroll_Default );			 	 	 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "cop", "Well I'm off to get my ass chewing. Get your permits or else.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes officer.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_560;	 	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_560;		 
	 dialog_I++;
	 
	#endregion	

#region extro kyle 560

	// extro
	dialog_I = 560;
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Every time I think I'm getting ahead...)", snd_TextScroll_Default );		
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Now I gotta pony up for a permit, pay my rent, and hope I have enough left over to eat.)", snd_TextScroll_Default );		
	 dialog_I++;	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ugh...", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "enter right");
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "Bossman, you look more stressed than ever. Don't worry, everything'll be alright.", snd_TextScroll_Default );		 	 	 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Thanks Kyle.", snd_TextScroll_Default );		
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I sure hope he's right.)", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "See ya tomorrow bossman.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day2;		 
	 dialog_I++;



#endregion




#endregion // end of day 2

#region  day 3   33333333333333 
   
 day_I    = 2; // day 3
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I  , false);  // first cutscene  
  
 
 #region kyle + weather girl

 
    
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What a morning. That rain is something else. The forecast was sunny and I definitely did not prepare for a downpour.)", snd_TextScroll_Default );		 
	 dialog_I++;
    
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I guess that's my life in a nutshell though.)", snd_TextScroll_Default );		 
	 dialog_I++; 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  "kyle default"  , "enter right");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "kyle", "Whoa bossman, you're soaked.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2,  "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "No kidding, someone should really teach those weather men how to do their job.", snd_TextScroll_Default );		 
	 dialog_I++; 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather smiling"  , "enter default"); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "kyle default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "How about a weather girl?", snd_TextScroll_Default );		 
	 dialog_I++; 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "kyle default"  , ""); 	  
     arrayCutscenes[day_I].setText(dialog_I,  2, "kyle", "Hey, I know you! You're that hot weather lady that just joined channel 8.", snd_TextScroll_Default );		
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_Weather;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "kyle default"  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "KYLE!", snd_TextScroll_Default );		 
	 dialog_I++;
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "kyle default"  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm sorry about him, miss.", snd_TextScroll_Default );		 
	 dialog_I++;
 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "kyle default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "It's fine, I'm used to it. Guys like this one are everywhere.", snd_TextScroll_Default );		 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "kyle default"  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle, why don't you finish opening up for me?", snd_TextScroll_Default );		 
	 dialog_I++;


     // kyle exits
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "kyle default"  , "exit right"); 	  
     arrayCutscenes[day_I].setText(dialog_I,  2, "kyle", " Yep, sorry bossman.", snd_TextScroll_Default );		 
	 dialog_I++;


    
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "He's actually kind of cute I suppose.", snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Don't tell him that, he might explode.", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather dismissive"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "I believe it. Usually the only guys that try to talk to me are meatheads. The rest just drool because they know me from TV. ", snd_TextScroll_Default );		 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Gotta act cool, I can't believe she's here in my arcade.)", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Wait a second. Why is she here? No way she wants to play games. That means...)", snd_TextScroll_Default );		 
	 dialog_I++;
 
 
      arrayCutscenes[day_I].setSprite(dialog_I,1, "weather smiling"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Ahem. Did I lose you too?", snd_TextScroll_Default );		 
	 dialog_I++; 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh sorry, I was uh, just thinking about what I should say about this crazy weather and all.", snd_TextScroll_Default );		 
	 dialog_I++; 
 
 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "It is pretty wild out there. We don't exactly get the best tools of the trade here.", snd_TextScroll_Default );		 
	 dialog_I++; 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "A lot of our station equipment has been destroyed since everything fell apart with the government.", snd_TextScroll_Default );		 
	 dialog_I++;  
 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(She seems really familiar right now. Do I know her from somewhere?)", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I guess that makes sense. Sorry about what I said earlier.", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "It's nothing, I couldn't care less at the moment anyways.", snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, why is that?", snd_TextScroll_Default );		 
	 dialog_I++; 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "I have a chance for a promotion to full-time reporter and I was given a story to cover.", snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(A cover story on what? Arcades or weapon dealers?)", snd_TextScroll_Default );		 
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(This could be really good, or really bad for me.)", snd_TextScroll_Default );		 
	 dialog_I++; 

  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "As you know, the city has very few rules on weapon sales and possession. The rules we do have are basically all made up on the fly by the police force.", snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Yep, not about arcades. Damn, why does nobody care about arcades anymore?)", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather dismissive"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Oh, you look nervous. I'm not trying to hurt your business or you, but I was tasked to report on the semi-legal sale of weapons around here.", snd_TextScroll_Default );		 
	 dialog_I++; 	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "As any good reporter does, I looked high and low to find where sales are coming from and your very poorly disguised ad in the paper stood out to me.", snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Poorly disguised? I knew that was a bad idea.)", snd_TextScroll_Default );		 
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(That's it, I'm really in trouble now.)", snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 
	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather dismissive"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Please understand, at channel 8 we are unbiased in all our reports.", snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather dismissive"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I'm not sure I believe that, but I never watch the news.)", snd_TextScroll_Default );		 
	 dialog_I++; 		
	
	
	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "If you could simply show me how you do business and give me a few insights, I would love to feature you in a story.", snd_TextScroll_Default );		 
	 dialog_I++; 		

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather dismissive"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "I won't take any pictures or even name your store, it would be 100% secret that you are my source. I promise!", snd_TextScroll_Default );		 
	 dialog_I++; 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "I would never want to ruin a potential source of information.", snd_TextScroll_Default );		 
	 dialog_I++;  
 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "How do I know I can trust that you won't report me?", snd_TextScroll_Default );		 
	 dialog_I++; 	 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Report you to who? Like I said, there are no real rules.", snd_TextScroll_Default );		 
	 dialog_I++;   

     ///40
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Half the permits in this town are just a way the police department extorts people so they can keep paying themselves.", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_Skip_Decision_PermitDay2;		 
	 dialog_I++;  
 
    
	// permit choise jump! if sold to cop batton -> auto got permit!
	 dialog_I = 100;
	 
	 // got the permit
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Are you kidding me!? I could have just not paid for that permit and I would have been just fine.)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_110;		 
	 dialog_I++; 


	 dialog_I = 101;
	 
	 // got the permit
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I'm so glad she told me that, I was really thinking I needed to buy that permit.)", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_110;		 
	 dialog_I++; 
 


     // continue
	 dialog_I = 110;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Oh and also, my dad was apparently in here yesterday. If I was going to rat you out to anyone, I would have done it already.", snd_TextScroll_Default );		 	 
	 dialog_I++;  	 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Hm, yesterday was a bit wild. I'm sure that clown has some fine offspring.)", snd_TextScroll_Default );		 
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Or maybe it could have been the short tempered guy?)", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Don't tell me your dad was the short, balding lunatic that wanted a dog-gun?", snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "That's him. He's lost his mind since my mom left him for another man. Any time he sees some meathead hanging around me he goes into a rage.", snd_TextScroll_Default );		 	 
	 dialog_I++;  		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "I know he's just afraid I will finally move out...", snd_TextScroll_Default );		 	 
	 dialog_I++;  		 
	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Wait, you still live at home?", snd_TextScroll_Default );		 
	 dialog_I++; 		
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather angry"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Is that any of your business Mr. Arms dealer?", snd_TextScroll_Default );		 	 
	 dialog_I++;  	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "No, no I suppose it isn't. I didn't mean any offense.", snd_TextScroll_Default );		 
	 dialog_I++; 	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather dismissive"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "None taken.", snd_TextScroll_Default );		 	 
	 dialog_I++;  		
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather dismissive"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Anyways, let's get down to business.", snd_TextScroll_Default );		 	 
	 dialog_I++;  	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "If you could just show me what you do and also sell me a nice handgun.", snd_TextScroll_Default );		 	 
	 dialog_I++;  	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "I would be able to make a report that could make a good impression on my boss and might bring in new business for you.", snd_TextScroll_Default );		 	 
	 dialog_I++; 		
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Do I really have a choice at this point?)", snd_TextScroll_Default );		 
	 dialog_I++; 	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I need the money and if the police aren't going to do anything maybe I should look at this as my chance to get ahead for once.)", snd_TextScroll_Default );		 
	 dialog_I++; 	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "I'm thinking a really recognizable pistol should work fine. One that you see in a lot of old western movies. Do you have anything like that you can sell me?", snd_TextScroll_Default );		 	 
	 dialog_I++;	
	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Actually, I think I know just what you mean.", snd_TextScroll_Default );		 
	 dialog_I++; 	
	
	
	 // sales text
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Western pistol, got it.)", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Weather_Day3;		 
	 dialog_I++; 	
	

      dialog_I = 150;
	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "This will have to do I suppose. Hopefully we both get something out of this.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "weather smiling" , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I just don't want this story to cause me any trouble, you know.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather smiling" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Don't you worry. I'll let you know when the story is about to break.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  "weather default" , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Thanks, I'll be sure to watch.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Take care.. Oh, and make sure you bring an umbrella with you tomorrow too.", snd_TextScroll_Default );		 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default" , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "", snd_TextScroll_Default );		 	
 
	 dialog_I++;	 


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseDone_WeatherSoldGunYes_Day3;			 
	 dialog_I++;
	 //////////////////////////////////





	 dialog_I = 160;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather angry" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "I guess I'll just have to talk to my dad then. Maybe he won't mind paying you another visit, that may encourage you to loosen up a bit.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Geeze, why the sudden hostility. Now I have to deal with him again.)", snd_TextScroll_Default );		 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "I'm sorry, I shouldn't threaten, but I will get my report, one way or another.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Still threatening...)", snd_TextScroll_Default );		 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default" , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "I'll be back, and I'll be more convincing.", snd_TextScroll_Default );			 
	 dialog_I++;




	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseDone_WeatherSoldGunNo_Day3;		 
	 dialog_I++;
	 //////////////////////////////////
	 
	 




	 dialog_I = 170;	 
	 // mess up!
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "I'm sorry but that just won't do for the story. I'd love to stay and work something out, but I can't be late for the next weather report.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "I'll be back soon and maybe you can have something ready for me then.", snd_TextScroll_Default );		 
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Dangit, I tried too hard to make extra cash on that one.)", snd_TextScroll_Default );			 	 
	 dialog_I++;



	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseDone_WeatherSoldGunNo_Day3;			 
	 dialog_I++;
	 //////////////////////////////////
	
	 
    #endregion 
   
	
	#region nerd 180
	
	 dialog_I = 180;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Hello again good sir.", snd_TextScroll_Default );		 
	 dialog_I++;
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "It's you again is it?", snd_TextScroll_Default );			 	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Oh the genuine and heartfelt welcoming of a fellow human being.", snd_TextScroll_Default );		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Saw right through that did ya?", snd_TextScroll_Default );			 	 
	 dialog_I++;		
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Good sir, I may not be up to your level of social skills, but I am quite astute I assure you.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes, you are a sharp one indeed.", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Speaking of sharp, please tell me you haven't stabbed anyone after you were so hard up for a knife.", snd_TextScroll_Default );			 	 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Well, yes, but only myself. I cut myself using a kitchen knife while trying to surgically open the latest pack of baseball cards my grandmother bought me.", snd_TextScroll_Default );		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I bet he lives with his grandmother.)", snd_TextScroll_Default );			 	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The good thing is, I didn't get any blood on the cards after I passed out when I saw the wound.", snd_TextScroll_Default );		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Seriously? You ever think you don't really have what it takes to live here? I'd hate to see you get hurt out there.", snd_TextScroll_Default );			 	 
	 dialog_I++;		
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Nay, good sir. I may not be as rough around the edges as many of the citizens of this city, but I cannot hope to see it change if all the good and intelligent people leave.", snd_TextScroll_Default );		 
	 dialog_I++;		
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "So do you think the rest of us are idiots and you are smart enough to save us?", snd_TextScroll_Default );			 	 
	 dialog_I++;	
	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Well, I have some ideas...", snd_TextScroll_Default );		 
	 dialog_I++;		
		
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I can't decide if I hate him or if I want to root for him.)", snd_TextScroll_Default );			 	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "That is beside the point. I came in today to share a bit of lore with you.", snd_TextScroll_Default );		 
	 dialog_I++;			
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Lore?", snd_TextScroll_Default );			 	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Yes, you know what lore means, don't you?", snd_TextScroll_Default );		 
	 dialog_I++;		
	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Look pal, I don't need you coming in here and talking down to me.", snd_TextScroll_Default );			 	 
	 dialog_I++;		
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "PLEASE DON'T HURT ME!", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Geeze, calm down already. Nobody's going to hurt you.", snd_TextScroll_Default );			 	 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I'm sorry about that, after the attack I suffered the other day I suppose I have been on edge a bit.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok, so what is it you want to tell me?", snd_TextScroll_Default );			 	 
	 dialog_I++;

	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I should leave that up to you I suppose. I have a few interesting topics I thought you might like to hear about.", snd_TextScroll_Default );		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Why does he want to tell me anything?)", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh no, he thinks I've become his new friend because I didn't just instantly kick him out. What have I done!?)", snd_TextScroll_Default );			 	 
	 dialog_I++;		
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "What would you like to hear about?", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Nerd_Topics_Day3;	 
	 dialog_I++;	
	
	
	//// 4 choises
	dialog_I = 300;
	
	//  Choise 1
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The history of guns is a long and fascinating one, dating back centuries.", snd_TextScroll_Default );		
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "It all started in China, around the 9th century, with the invention of gunpowder.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The first recorded use of gunpowder in warfare was in China in the 9th century,", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "where they used bamboo tubes filled with gunpowder and a projectile to create what was called a 'fire lance'.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "In the book, 'The Art of War,' written by Sun Tzu, ", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "mentions the use of a device called a 'fire lancer,'", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "which was essentially a tube filled with gunpowder and a projectile.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "It was the first recorded use of gunpowder in warfare.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "From there, gunpowder weapons spread to the Middle East and Europe.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "In the 14th century, the first handguns were developed in Italy.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "This was when they discovered that a handheld firearm could be created by adding a barrel and a trigger mechanism to the 'fire lance.'", snd_TextScroll_Default );		
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "It is written in 'De Re Militari,' written by Italian engineer Roberto Valturio,", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "describes a handheld firearm that used gunpowder to shoot projectiles.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "But it wasn't until the 16th century that guns really became widespread.", snd_TextScroll_Default );		
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "That's when the arquebus was developed,", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "which was a long gun that used a matchlock to ignite the gunpowder.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The arquebus was a game-changer in warfare because soldiers could now shoot from a distance,", snd_TextScroll_Default );		
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "which was much safer than getting up close with a sword or spear.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Our local museum has a replica of an arquebus.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "It's heavy and unwieldy, but it was a significant advancement in the evolution of guns.", snd_TextScroll_Default );		
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The matchlock mechanism was soon replaced by flintlocks,", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "which were more reliable, and then came muskets, which were lighter and more accurate.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "From there, guns continued to evolve, with rifles and other types of firearms being developed.", snd_TextScroll_Default );		
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The Industrial Revolution led to the mass production of firearms,", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "and they became a standard part of military equipment.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "However, the invention of guns also had significant impacts on society.", snd_TextScroll_Default );		
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "They led to changes in warfare tactics and ultimately played a role in shaping the world as we know it today.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The development of guns and the resulting changes in warfare", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "also influenced other aspects of society, such as the rise of nationalism and the development of modern science and technology.", snd_TextScroll_Default );		
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "In conclusion, the history of guns is a complex and multifaceted one.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "It began with a simple invention in China, and over the centuries,", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "it evolved into the sophisticated firearms we have today.", snd_TextScroll_Default );		
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "But it's important to remember that with every technological advancement comes both benefits and drawbacks, and guns are no exception.", snd_TextScroll_Default );		
	 dialog_I++;	 

     // end of 1
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "And that, my friends, is the history of guns in a nutshell.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;		
	 dialog_I++;






	dialog_I = 400;
	
	//  Choise 2
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The history of video games is a fascinating one.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "It all began in the early 1950s when computer scientists started experimenting with ways to use computers for entertainment.", snd_TextScroll_Default );		
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "In the book, 'Computer Lib/Dream Machines,' written by Ted Nelson in 1974,", snd_TextScroll_Default );		
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "describes the earliest examples of computer games.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "They were simple text-based games that ran on mainframe computers and were played using punch cards.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "But it wasn't until the late 1960s and early 1970s that video games really took off.", snd_TextScroll_Default );		

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "In 1967, a group of engineers at MIT created a game called 'Spacewar!'", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "It was the first video game to be played on a computer, and it paved the way for the industry we know today.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The Magnavox Odyssey was the first true home video game console.", snd_TextScroll_Default );		
	 dialog_I++;	 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "It was released in 1972 and came with several games,", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "including a tennis game that could be played on a TV set.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "From there, video games continued to evolve.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "In the late 1970s, the Atari 2600 was released, which allowed gamers to play a variety of games on their home TVs.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "This was the beginning of home consoles, as you well know to be a dubious cause of the downfall of the modern arcades.", snd_TextScroll_Default );		
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Of course we all know about 'Censored for Copyright so We Don't Get Sued' one of the most popular and influential video games of all time.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "It was released in 1985 and helped establish a certain famous console developer as a dominant player in the industry.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "But video games didn't just revolutionize entertainment.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "They are still having an impact on technology, as the need for faster and more powerful computers leads to advances in computing hardware and software.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "In conclusion, the history of video games is a long and varied one, with many different players and innovations along the way.", snd_TextScroll_Default );		
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "From the early days of punch cards to the modern era, video games have always been at the forefront of technological advancement.", snd_TextScroll_Default );		
	 dialog_I++;

    /// end of 2
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "And that, my friend, is the history of video games in a nutshell.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;		
	 dialog_I++;





	dialog_I = 500;
	
	//  Choise 3
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "It all began in the 1920s, when the city was in its heyday as the epicenter of the automotive industry.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The city was thriving with manufacturing plants, but as the decades progressed, social and economic disparities began to take hold, giving way to an inexorable decline.", snd_TextScroll_Default );		
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "By the 1960s, the city was plagued by urban decay and was fraught with unbridled corruption.", snd_TextScroll_Default );		
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Political malfeasance and avarice had penetrated deep into the bureaucratic fabric, stifling any hopes of substantive reform.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "This left the city's populace mired in dire straits, with a marked paucity of educational and employment opportunities.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "But this was only the beginning.", snd_TextScroll_Default );		

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "In the 1970s, the candle industry, our great city's lifeblood, was severely impacted by a confluence of factors,", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "including subpar management, foreign competition, and the skyrocketing cost of raw materials.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The city's economy suffered a devastating blow, and its social ills were amplified.", snd_TextScroll_Default );		
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Then, in the summer of 1983, the city was wracked by a series of riots, sparked by mounting frustrations stemming from poverty, crime, and police brutality.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The protests quickly devolved into anarchic chaos, and the city was plunged into a state of profound disarray.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The city's infrastructure crumbled, and basic necessities such as clean water and medical care were all but inaccessible.", snd_TextScroll_Default );		
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The economy had reached a point of no return, and the city's social fabric was frayed beyond repair.", snd_TextScroll_Default );		
	 dialog_I++;

     // end of 3!
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The once-great city had fallen into a bleak and intractable morass, serving as a cautionary tale of the pitfalls of institutional corruption and economic neglect.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;		
	 dialog_I++;

	 
	 

	dialog_I = 600;
	
	//  Choise 4

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I stand before you today with an exciting breakthrough in the field of medical research.", snd_TextScroll_Default );		
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Through countless hours of experimentation,", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I have discovered that certain exotic mushrooms possess potent anti-inflammatory and anti-microbial properties", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "that can be used to treat a rare and debilitating medical condition that affects the feet.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The condition I speak of is known as Pedal Malanoidosis, a complex and enigmatic disorder that causes severe discoloration", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "and inflammation of the feet, a disease that my grandmother has unfortunately suffered from for years.", snd_TextScroll_Default );		
	 dialog_I++;	
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "It is a disorder that has confounded medical professionals for years,", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "with little progress made in understanding its causes or developing effective treatments.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "But through careful study and experimentation, I have uncovered a potential cure for this troubling disorder.", snd_TextScroll_Default );		
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The key lies in the spores of two particular types of mushrooms - Cordyceps Sinensis and Grifola Frondosa.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "These mushrooms, with their unique properties and potent anti-inflammatory and anti-microbial agents, have shown remarkable promise in treating Pedal Malanoidosis.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The process by which these mushrooms are used is simple but effective.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "First, the affected area is thoroughly cleaned and dried.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Then, a paste is created by grinding the mushrooms into a fine powder and adding water.", snd_TextScroll_Default );		
	 dialog_I++;	
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The paste is then applied to the affected area and left to dry for several hours. This process is repeated twice a day for seven days.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The results have been nothing short of remarkable.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "In all of my trials, the application of the mushroom paste has led to significant reductions in inflammation and pain associated with Pedal Malanoidosis.", snd_TextScroll_Default );		
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The patient who received this treatment - my grandmother of course - has experienced a marked improvement", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "in their ability to move and walk, and many have reported a complete recovery from the disorder.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "But while these results are certainly encouraging, I must not become complacent.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Further studies are needed to fully understand the mechanisms", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "by which these mushrooms work and to ensure their safety and efficacy.", snd_TextScroll_Default );		
	 dialog_I++;	
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I must also continue to explore the medicinal properties of other exotic mushrooms,", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "which may hold the key to curing other debilitating disorders that currently elude medical science.", snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "In conclusion, the discovery of the potential cure for Pedal Malanoidosis is an exciting development", snd_TextScroll_Default );		
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "that holds enormous promise for the medical community and my grandmother in particular.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "The study of exotic mushrooms and their medicinal properties is an ongoing process, one that requires continued dedication", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "and research to unlock its full potential.", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "But with trial and commitment, I am confident that I can continue to make groundbreaking discoveries", snd_TextScroll_Default );		
	 dialog_I++;

      // end if 4
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "that improve the health and well-being of people around the world, but mostly my grandmother.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;	 	 
	 dialog_I++;		 	




    /// end of monologue
	dialog_I = 700;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Oh will you look at the time, I don't want to be late for Grandmother's bath.", snd_TextScroll_Default );		
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(That mental image will never leave me.)", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I'm going home big guy.", snd_TextScroll_Default );		
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Uhh, ok...", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(He's an odd character.)", snd_TextScroll_Default );			 	 
	 dialog_I++;



	#endregion
 
  
    #region kyle + wife 705
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Hey boss, what is with that guy?", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You got me, my ears start bleeding when he starts talking.", snd_TextScroll_Default );			 	 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Ha, you're funny! Hey, I meant to ask how things are going by the way. You doing ok?", snd_TextScroll_Default );			 	 
	 dialog_I++;
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I never think things are going to be ok anymore Kyle. At least I'm never disappointed that way.", snd_TextScroll_Default );			 	 
	 dialog_I++;  
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Wow, that's depressing.", snd_TextScroll_Default );			 	 
	 dialog_I++; 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , "enter default"); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "wife", "Agreed!", snd_TextScroll_Default );			 	 
	 dialog_I++;  

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "exit right"); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "AH! Don't scare me like that.", snd_TextScroll_Default );			 	 
	 dialog_I++;  
 
 
 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "wife", "Why are you so jumpy?", snd_TextScroll_Default );			 	 
	 dialog_I++;   
 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "N... No reason. What brings you in today my beautiful wife?", snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(She's going to see right through me.)", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_Skip_day2_Wife;	
	 dialog_I++; 


    // if baught wife present
	dialog_I = 750;
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "wife", "I just wanted to say thank you so much for the flowers. You know, maybe my mother was wrong about you.", snd_TextScroll_Default );			 	 
	 dialog_I++;    


     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I hate that woman with every fiber of my being.)", snd_TextScroll_Default );			 	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Always pinching my cheek and calling me her 'schwuler hund'. I don't even know what that means. Maybe I should learn some German...)", snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Wait, did she say thank you???)", snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "wife", "Oh look at the time. I'm going to be late for my appointment. Me and my psychic are getting our hair volumized together.", snd_TextScroll_Default );			 	 
	 dialog_I++;    


     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "wife", "They call it a pompadour. Doesn't that sound fancy!", snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Do I dare ask how much that will cost?", snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "wife", "Oh hunny, you're too funny. I'm sure your new business is booming so we can afford for me to get pampered.", snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , "exit default"); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "wife", "Bye snookums.", snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, ""  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Snookums!?)", snd_TextScroll_Default );		
	 dialog_I++; 

	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_780;		 
	 dialog_I++;
	 //////////////////////////////////




    // if NOT baught wife present
	dialog_I = 770;
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "wife", "blah blah blah appointment time, blah blah blah $500 blah blah blah... Gotta run.", snd_TextScroll_Default );			 	 
	 dialog_I++;    


     arrayCutscenes[day_I].setSprite(dialog_I,2, "wife default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(That was weird, she never runs off that fast. Wait, $500 for what!?!?!?)", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "...", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_780;	 	 
	 dialog_I++; 


    // next
	dialog_I = 780;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I seriously don't know what just happened. And now I have a line of customers.)", snd_TextScroll_Default );				 
	 dialog_I++; 	


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_790;		 
	 dialog_I++;
	 //////////////////////////////////

   #endregion
   
   
    #region random sale 1   790 - 820


		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay3_1_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay3_1_Spr_Default = scr_SetRandomSpr(randomDay3_1_Spr, "default" );
	   var randomDay3_1_Spr_Angry   = scr_SetRandomSpr(randomDay3_1_Spr, "angry" );
    
    var getRandomMiniGameIndexDay3_1  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay1to3 );

	randomSaleOverride_Day3_1 = arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay3_1]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////

	 dialog_I = 790;	   
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay3_1].introTextRandom[0], snd_TextScroll_Default );			 
	 dialog_I++;
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random",arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay3_1].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day3;		// overide and setup  
	 dialog_I++;		
	
	
	
	// begin random sale 1
	 
	 dialog_I = 800;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay3_1].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_1_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 dialog_I++;
	 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;		 
	 dialog_I++;
	 //////////////////////////////////




	 dialog_I = 810;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay3_1].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;		 
	 dialog_I++;
	 //////////////////////////////////



	 dialog_I = 820;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay3_1].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 	 
	 dialog_I++;	
	 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;		 
	 dialog_I++;
	 //////////////////////////////////	
	
	
#endregion // end of random sale 1	   
 
 
    #region random sale 2   830 - 820

		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay3_2_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay3_2_Spr_Default = scr_SetRandomSpr(randomDay3_2_Spr, "default" );
	   var randomDay3_2_Spr_Angry   = scr_SetRandomSpr(randomDay3_2_Spr, "angry" );
    
    var getRandomMiniGameIndexDay3_2  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay1to3 );
	
	randomSaleOverride_Day3_2 = arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay3_2]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////


    // next
	dialog_I = 830;
 
     arrayCutscenes[day_I].setSprite(dialog_I,2,"nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Next!", snd_TextScroll_Default );		 
	 dialog_I++; 

     
	 
	   
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_2_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay3_2].introTextRandom[0], snd_TextScroll_Default );			 
	 dialog_I++;
	 
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_2_Spr_Default , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay3_2].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day3;		// overide and setup  
	 dialog_I++;		
	
	
	
	// begin random sale 1
	 
	 dialog_I = 840;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay3_2].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_2_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 dialog_I++;

	 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_870;		 
	 dialog_I++;
	 //////////////////////////////////	



	 dialog_I = 850;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay3_2].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		 	 
	 dialog_I++;

	 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_870;		 
	 dialog_I++;
	 //////////////////////////////////	



	 dialog_I = 860;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay1to3[getRandomMiniGameIndexDay3_2].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay3_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 	 
	 dialog_I++;	

	 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_870;		 
	 dialog_I++;
	 //////////////////////////////////		
	
	
	
#endregion // end of random sale 2	   


#region nun  870

    // next
	dialog_I = 870;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Next!", snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Good day my child.", snd_TextScroll_Default );		
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]   =	 obj_Reveal_Nun;	 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Welcome in, uh, sister?", snd_TextScroll_Default );			 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "You have been blessed today I see.", snd_TextScroll_Default );		
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I have?", snd_TextScroll_Default );			 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "Yes. Many wonderful customers I see you have.", snd_TextScroll_Default );		
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "Does the good word not say: the plans of the diligent lead surely to abundance?", snd_TextScroll_Default );		
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm afraid I don't know, sister. I'm sorry.", snd_TextScroll_Default );			 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(If this turns into a test I am going to fail.)", snd_TextScroll_Default );			 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "Do not worry my child, for: the reward for humility and fear is riches and honor and life.", snd_TextScroll_Default );		
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I feel like she's trying to say I'm going to be rich. Maybe I am blessed!)", snd_TextScroll_Default );			 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "My child. I see much riches and abundance is bestowed upon your house. This is certainly a blessing for you.", snd_TextScroll_Default );		
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Thank you sister. You sure are making me feel great. Maybe things are getting better for me after all!", snd_TextScroll_Default );			 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "My child, incline your ear, and hear the words of the wise...", snd_TextScroll_Default );		
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Words of wisdom on getting rich, come to papa...)", snd_TextScroll_Default );			 
	 dialog_I++; 

     // point gun upwards and shoot
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "           ", snd_TextScroll_Default );		
	 dialog_I++; 
     
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "It is more blessed to give than to receive. Now, get with the giving.", snd_TextScroll_Default );		
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun gun"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(AHHHHHHH.)", snd_TextScroll_Default );			 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun gun"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "The lord demands your penitence... and $500 should be just fine.", snd_TextScroll_Default );
		 if(demo == true){
		 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_NunShoots_RedFade;	 
		 }

	 dialog_I++;




     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun gun"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "", snd_TextScroll_Default );

		 if(demo == true){
		 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_DemoEnd;	 
		 }
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun gun"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I can't believe this, I'm being robbed by a nun.)", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_ChoiseNun_Day3;	 
	 dialog_I++; 




    // if played up!
	dialog_I = 900;
    
	// pay up
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "Thank you my child. May mercy, peace, and love be multiplied to you.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_NunPayRansom_500_Day3;	 
	 dialog_I++;	

	// pay up
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_920;	 
	 dialog_I++;



	// not pay up
	dialog_I = 910;
    

     // point gun toward player and shoot
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun gun"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "           ", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_NunShoots_RedFade2;	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "....", snd_TextScroll_Default );			 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Am I dead? Am I in heaven? Please let it be...)", snd_TextScroll_Default );			 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Dammit, still getting robbed.)", snd_TextScroll_Default );			 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "Did I say $500?", snd_TextScroll_Default );		
	 dialog_I++;

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "I meant everything you got in the register. Try to refuse me again and payment for your sins will be much more severe.", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_NunPayRansom_All_Day3;	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "Thank you my child of light. May mercy, peace, and love be multiplied to you.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nun default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_920;	 
	 dialog_I++;

    #endregion

#region  kyle 920

	dialog_I = 920;



     arrayCutscenes[day_I].setSprite(dialog_I, 1, "kyle default"  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,   1, "kyle", "Bossman what happened? I was in the bathroom and heard a shot but I came running as soon as I could. Did a gun misfire?", snd_TextScroll_Default );			 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "No Kyle, we just got robbed.", snd_TextScroll_Default );			 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "No way man. By who?", snd_TextScroll_Default );			 
	 dialog_I++; 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "A nun Kyle. A nun.", snd_TextScroll_Default );			 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Are you kidding bossman?", snd_TextScroll_Default );			 
	 dialog_I++; 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "NO KYLE I'M NOT KIDDING! WE JUST GOT ROBBED BY A &$#@!*& NUN!", snd_TextScroll_Default );			 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Damn bossman I'm sorry. I can chase her down if you want.", snd_TextScroll_Default );			 
	 dialog_I++; 


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "No Kyle, I don't want you getting hurt.", snd_TextScroll_Default );			 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I don't think it would be wise to make a police report either. I think I'm just screwed.", snd_TextScroll_Default );			 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "What do you say we call it a day then bossman?", snd_TextScroll_Default );			 
	 dialog_I++; 


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I think that's wise Kyle. Please, shut everything down. I'm going to my office to cry, then home to shower and change pants.", snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day3;		 
	 dialog_I++; 


#endregion



  #endregion // end of day 3


#region  day 4   44444444444444444 
   
 day_I    = 3; // day 4
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I  , false);  // 
  
  
     #region granny

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Here comes another day in my own personal hell. I didn't sleep a wink last night and I can already see that nice old lady making her way down here.)", snd_TextScroll_Default );		 
	 dialog_I++;
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I'm not ready to deal with people right now.)", snd_TextScroll_Default );		 
	 dialog_I++;  
 
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Is it because I'm exhausted, or is she really that slow?)", snd_TextScroll_Default );		 
	 dialog_I++;   
 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(And what am I doing even being open today. I should just close the shop, but I can't even move from behind the counter. I'M SOO TIRED!", snd_TextScroll_Default );		 
	 dialog_I++; 
 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I bet my pillow is still soaked. I cried a lot last night. What kind of man am I?)", snd_TextScroll_Default );		 
	 dialog_I++; 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(This was all just a huge mistake. I wish I could just leave here and...)", snd_TextScroll_Default );		 
	 dialog_I++;  
      
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I think that granny picked up some speed, she's here already. Ok, get it together and put on a good face.)", snd_TextScroll_Default );		 
	 dialog_I++; 
 
 
     // granny enter     
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Well you're here early, I haven't even finished setting up shop for today.", snd_TextScroll_Default );		 
	 dialog_I++; 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I had to get an early start on the day. You don't look so good young man, are you sure you're ok?", snd_TextScroll_Default );		 
	 dialog_I++;   
 
       
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(So much for putting on a good face, she read me like a book.)", snd_TextScroll_Default );		 
	 dialog_I++; 
       
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "It's nothing, just business stuff really.", snd_TextScroll_Default );		 
	 dialog_I++;  
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Well then, let's see what granny has in her purse to make you feel better.", snd_TextScroll_Default );		 
	 dialog_I++;   
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Oh hear, would you like one of my famous macaroons?", snd_TextScroll_Default );		 
	 dialog_I++;   
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I made extra for the ladies in the Big Hat Bitty club. I was on my way to meet them, but I can spare one for you.", snd_TextScroll_Default );		 
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_ChoiseGranny_MacaronDay4; 
	 dialog_I++;   
 
     // if accepted macaron
	 dialog_I = 20;
       
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Well, what do you think?", snd_TextScroll_Default );		
     // arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Effect_Screen_Drugged;   77777 fix it
	 dialog_I++;  
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "This is the best thing I've ever eaten in my entire life. You made this?", snd_TextScroll_Default );		 
	 dialog_I++; 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Sure did. Granny's secret recipe never disappoints.", snd_TextScroll_Default );		 
	 dialog_I++;  	 
	 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What was I even upset about?)", snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I feel like I can lift a mountain!)", snd_TextScroll_Default );		 
	 dialog_I++; 

      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Now that you feel better, can I share a little story with you?", snd_TextScroll_Default );		
	 dialog_I++;  
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes, please do.", snd_TextScroll_Default );		 
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_50; 	 
	 dialog_I++; 


     // if denied macaron
	 dialog_I = 30;
 
     // she tries again 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I've never had someone turn down my macaroon before. You really should try it.", snd_TextScroll_Default );
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_ChoiseGranny_Macaron2Day4; 	 
	 dialog_I++;  
     
	 
     // if denied 2nd time macaron, she goes away
	 dialog_I = 40;	 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Oh young man, I really wish you wouldn't have said that. I suppose I don't need much anyways.", snd_TextScroll_Default );	 
	 dialog_I++;       
	 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I was just stopping in to say hello and to say thanks for helping me out the other day. You are... were such a gentleman.", snd_TextScroll_Default );	 
	 dialog_I++;  	
	 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I didn't mean any offense, really...", snd_TextScroll_Default );		 
	 dialog_I++; 	 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "It's ok, I really must be off.", snd_TextScroll_Default );	 	 
	 dialog_I++;  	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Maybe I should have just eaten the stupid cookie.)", snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 
	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I'm still so upset from last night I can't stand the thought of eating and now I upset a poor old lady.)", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_120;		 
	 dialog_I++;	 
	 
	 
	 // if accepted first or second time, she tells a mafia story + sale possible
	dialog_I = 50;	  
	      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Last night I was watching an old movie and the main character was this sweet young lady.", snd_TextScroll_Default );	 
	 dialog_I++;  	
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "She winds up falling in love with a gentleman who turns out to be in a criminal organization called the family.", snd_TextScroll_Default );	 
	 dialog_I++; 	
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "So she winds up being a part of his unscrupulous business.", snd_TextScroll_Default );	 
	 dialog_I++; 	
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "However, over time and with lots of love, she manages to turn his heart soft and they eventually run away together to live happily ever after.", snd_TextScroll_Default );	 
	 dialog_I++; 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Sounds wonderful.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Until the family finds them years later and kidnaps her to punish her husband for leaving.", snd_TextScroll_Default );	 
	 dialog_I++; 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Where is this going?)", snd_TextScroll_Default );		 
	 dialog_I++;	 


      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "So she grabs the only relic he brought from his days in the family, an old gangster style machine gun, and she sets out to free her husband.", snd_TextScroll_Default );	 
	 dialog_I++; 


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Does this story have a happy ending?", snd_TextScroll_Default );		 
	 dialog_I++;	

      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Oh my boy, I can't spoil the ending for you. You should really watch the movie yourself. I can't remember the name, but it had that handsome actor, Mumphrey Yogart.", snd_TextScroll_Default );	 
	 dialog_I++; 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Never heard of him.)", snd_TextScroll_Default );		 
	 dialog_I++;		 
	 
	 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Oh young man, it made me feel young again.", snd_TextScroll_Default );	 
	 dialog_I++; 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's really nice, but why are you telling me this story?", snd_TextScroll_Default );		 
	 dialog_I++;			
	
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I want to feel young again.", snd_TextScroll_Default );	 
	 dialog_I++; 		
	
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I would like to buy something from you. A gun, just like the one in the movie.", snd_TextScroll_Default );	 
	 dialog_I++; 	
	
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I don't really know the name, but it definitely looks like an old gangster weapon from the 1920s.", snd_TextScroll_Default );	 
	 dialog_I++; 	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I think I have what you need, but are you sure you can handle such a thing?", snd_TextScroll_Default );		 
	 dialog_I++;	


      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Oh my dear, I don't plan to use it, I just want to hang it over my fireplace. It will certainly open up stories when my friends come over for tea and macaroons.", snd_TextScroll_Default );	 
	 dialog_I++; 	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(She really laid that story on thick.)", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(But what am I thinking, she's a wholesome nice old granny, right?)", snd_TextScroll_Default );		 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I see. In that case, I think I can help.", snd_TextScroll_Default );		 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Ganster movie small machine gun, got it).", snd_TextScroll_Default );	
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Granny_Day4; 	 /// 7777 fix it, add option that you cannot refuse!	 
	 dialog_I++;

     
	 // sale!
	 // jump to 100
	 dialog_I = 100;
	 
	 // sale! 100
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Thank you young man, this will do nicely..", snd_TextScroll_Default );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You're welcome.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Bye bye young man. I look forward to bringing you more macaroons again soon.", snd_TextScroll_Default );	 		 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I would love that, you can stop by anytime.", snd_TextScroll_Default );
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", ".", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_120;	 
	 dialog_I++;

	 

	 // Fail! 110
	  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Sorry about that, I was thinking about that delicious macaroon and my mind must have slipped.", snd_TextScroll_Default );	 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", ".", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_120;	 
	 dialog_I++;


     #endregion  
 
 
 
 #region shadow  120
 	 dialog_I = 120;

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Hello.", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "enter shadow");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Shit you scared me! Where did you come from?", snd_TextScroll_Default );		 
	 dialog_I++;


     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Jumpy today huh? Did you get the box I left with the attachments?", snd_TextScroll_Default );		 
	 dialog_I++;
 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yeah, although I don't know why you didn't just bring them with you this morning.", snd_TextScroll_Default );		 
	 dialog_I++;


     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "I didn't know if I would make it in. I had someone... er, something to take care of this morning.", snd_TextScroll_Default );		 
	 dialog_I++;
 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Please, I don't want to know.", snd_TextScroll_Default );		 
	 dialog_I++; 
 
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "What's got you all worked up? ", snd_TextScroll_Default );		 
	 dialog_I++; 
 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Well, for starters, I got robbed last night.", snd_TextScroll_Default );		 
	 dialog_I++;  
 
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Damn, well it was bound to happen at some point. Which gang was it?", snd_TextScroll_Default );		 
	 dialog_I++;  


     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I don't want to even admit this to him.)", snd_TextScroll_Default );		 
	 dialog_I++;   
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "It wasn't a gang member...", snd_TextScroll_Default );		 
	 dialog_I++;   
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "It was...", snd_TextScroll_Default );		 
	 dialog_I++;   
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "A nun.", snd_TextScroll_Default );		 
	 dialog_I++;   
	 
	 
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "...", snd_TextScroll_Default );		 
	 dialog_I++; 
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "You gotta be kidding me?", snd_TextScroll_Default );		 
	 dialog_I++; 	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I know, I know, it's embarrassing.", snd_TextScroll_Default );		 
	 dialog_I++; 

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Embarrassing?", snd_TextScroll_Default );		 
	 dialog_I++; 

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "My man, it sounds like you got robbed by the Nun Mafia. Not only that, you lived!", snd_TextScroll_Default );		 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What? There's a mafia of nuns?", snd_TextScroll_Default );		 
	 dialog_I++; 

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "You don't know? If I ran into one of them and lived, I'd think I was the luckiest man alive. She must have taken a liking to you.", snd_TextScroll_Default );		 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "So you aren't mad about the money I lost?", snd_TextScroll_Default );		 
	 dialog_I++; 

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Well hell yeah I'm mad about that, but there's nothing we can do now.", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Thanks, I guess that helps me feel better about things.", snd_TextScroll_Default );		 
	 dialog_I++; 

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Well, you're a semi-legitimate business operating in the most lawless city in the country. Stuff happens.", snd_TextScroll_Default );		 
	 dialog_I++; 
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Now you just gotta make all that money back. Copy.", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Copy. Anything special I need to know about these attachments.", snd_TextScroll_Default );		 
	 dialog_I++; 


     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Not really. Just like before, some people know what they want and others you gotta show them what they want.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Easy enough, I guess.", snd_TextScroll_Default );		 
	 dialog_I++; 

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Keep up the work and I'll bring more inventory for you in a few days. It should help with business even more.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Jackpot.", snd_TextScroll_Default );		 
	 dialog_I++;


     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Again with the weirdness.", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Sorry.", snd_TextScroll_Default );		 
	 dialog_I++;


     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "I got another appointment to make. If you see that nun again, give her whatever she wants and you should be fine.", snd_TextScroll_Default );		 
	 dialog_I++;
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "If she didn't whack you the first time, she's gotta have a soft spot for you.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I feel so blessed.)", snd_TextScroll_Default );		 
	 dialog_I++;	 


     /// shadow exits 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "exit shadow"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "...", snd_TextScroll_Default );		 
	 dialog_I++;



	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What the hell? How did he do that?)", snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 
    #endregion
 
 
 
 #region twins 200
 
      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , "enter default"); 
      //arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Well howdy there partner.", snd_TextScroll_Default );		 
	  dialog_I++;

      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Howdy?", snd_TextScroll_Default );		 
	  dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "enter default"); 	  
      arrayCutscenes[day_I].setText(dialog_I,  2, "unknown", "'scuze my sister, she's a bit on the country side of thangs.", snd_TextScroll_Default );		 
	  dialog_I++;
	  

      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, how silly of me not to notice...", snd_TextScroll_Default );		 
	  dialog_I++;	  


      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Weeze was in the mall an' heard 'bout your lil ar-cay-duh, an weeze was wondren if we could play around.", snd_TextScroll_Default );		 
	  dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "But then we heard you had more than just games to play, and we had a better idea.", snd_TextScroll_Default );		 
	  dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Please, enlighten me.", snd_TextScroll_Default );		 
	  dialog_I++;	



      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Ain't no reason to go use'n them big words partner.", snd_TextScroll_Default );		 
	  dialog_I++;



      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hmm. What do youze two needs?", snd_TextScroll_Default );		 
	  dialog_I++;	



      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Now dats more like it.", snd_TextScroll_Default );		 
	  dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "We jus wanted to know if you could help us with a lil critter infestation.", snd_TextScroll_Default );		 
	  dialog_I++;
	  

      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Ya, we got roaches big enough ta ride on.", snd_TextScroll_Default );		 
	  dialog_I++;  
	  
	  
      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That is a problem alright.", snd_TextScroll_Default );		 
	  dialog_I++;	
	  


      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Yep, an we need to burn them out big time.", snd_TextScroll_Default );		 
	  dialog_I++;  



      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "We needs us a flame thrower. Not none of those homemade ones neither. We tried makin one once, burned down our trailer.", snd_TextScroll_Default );		 
	  dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I don't carry any of those, way too dangerous.", snd_TextScroll_Default );		 
	  dialog_I++;	



      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "WHA? How can you call yourself an arms man-o-fact-errr?", snd_TextScroll_Default );		 
	  dialog_I++; 


      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I don't understand?", snd_TextScroll_Default );		 
	  dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "She means, how can you make weapons and not have a flame thrower?", snd_TextScroll_Default );		 
	  dialog_I++;

	

      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ohhh. I don't make anything here, I just sell what I'm given.", snd_TextScroll_Default );		 
	  dialog_I++;	
	
	
      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Thas the dumbest thang I'ze ever heard.", snd_TextScroll_Default );		 
	  dialog_I++;
	  

      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Maybe there's something else I can do for you?", snd_TextScroll_Default );		 
	  dialog_I++;		  
	  

      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Just give us the most boom-iest thing you got partner.", snd_TextScroll_Default );		 
	  dialog_I++;	  
	  
	  

      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, "player", "If all you have are roaches, I think you might cause a lot more harm than good.", snd_TextScroll_Default );		 
	  dialog_I++;			  



	
      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Ain' none of your business what we gonna do.", snd_TextScroll_Default );		 
	  dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh man, as much as I need the business, I really don't think I should sell anything to these two. They may cause some real harm.)", snd_TextScroll_Default );		 
	  dialog_I++;	


      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Tell ya what, jus give anything you wanna sell us that goes boom.", snd_TextScroll_Default );		  
	  dialog_I++;



      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I don't get a good feeling from these girls. Not sure they are really all there in the head to be handling any sort of weapon.)", snd_TextScroll_Default );	
      arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Twins_Day4; 	  
	  dialog_I++;



	 // jump to 250
	 dialog_I = 250;
	  // sale
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 			 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Thanks partner.", snd_TextScroll_Default );	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 			 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Yeehaw... BOOM BOOM! ", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Twins_GunSoldYes_Day4; // extra variable if sold to them!		  
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , "exit default"); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "exit default"); 			 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "...", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_290;	
	 dialog_I++;


	 // Refuse! 260
	 dialog_I = 260;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm sorry, but I don't think I can help you today...", snd_TextScroll_Default );		

	 dialog_I++;	 
	 
      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Know what, I think you got your head up your ass, but I like a man who tells me no. Kind of turns me on.", snd_TextScroll_Default );	 
	 dialog_I++;
	  
      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Hey, he turns me on more.", snd_TextScroll_Default );		
	 dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Now don't go doin this again. I said he turned me on first.", snd_TextScroll_Default );	 
	 dialog_I++;
	  
      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Ya, well I said he turns me on more!", snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ladies, please...", snd_TextScroll_Default );	
	 dialog_I++;

      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  10, "twin1", "SHUT UP!!", snd_TextScroll_Default );		// special case, both talk
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_ScreenShake;		 
	 dialog_I++;


	  
      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "You wanna take dis outside?", snd_TextScroll_Default );		
	 dialog_I++;
	 

      arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 		 
     arrayCutscenes[day_I].setText(dialog_I,  2,  "twin2", "I'm gonna stomp the rest of your teeth out...", snd_TextScroll_Default );	 
	 dialog_I++;	 
	  
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Let's go then...", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Twins_GunSoldYes_Day4;	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , "exit default"); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "exit default"); 			 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_290;	
	 dialog_I++;



	 // Fail! 280
	 dialog_I = 280;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Will this work?", snd_TextScroll_Default );		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "I said anything that goes boom ya idiot!", snd_TextScroll_Default );	 
	 dialog_I++;	 
	  
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "C'mon sis, let's go find us a real man-fat-yer.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Twins_GunSoldYes_Day4;	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "twin1 default"  , "exit default"); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  "twin2 default"  , "exit default"); 			 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_290;	
	 dialog_I++;


      #endregion


#region  kyle 290

     dialog_I = 290;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Hey bossman. I heard all of that. They're crazy huh?", snd_TextScroll_Default );		 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "enter right");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "The craziest.", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Hey bossman. I was wondering if you would sell me something?", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I guess I can, but why do you want to buy a weapon?", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Well, mostly to help out after what happened yesterday, but also my friends said I can join their group if I get armed.", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle, what group?", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "I'm a proud member of the ARN.", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Really Kyle?", snd_TextScroll_Default );		 
	 dialog_I++; 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Yep, the Allied Rebellion Alliance.", snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle, as much as I want the rebellion to end and for things to return to normal, that sounds really dangerous.", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Wait, Allied Rebellion Alliance, which side are you on?", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "We actually aren't on either side. We're on both sides. We're trying to bring peace through forceful coercion.", snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That doesn't make any sense?", snd_TextScroll_Default );		 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Oh bossman, I'd have to explain a lot of inner mechanisms that I'm not at liberty to speak of. Maybe I can tell you one day.", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Good grief.)", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok, what are you needing?", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "I've saved up some money, so how about an A16 with everything you can put on it?", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's a lot Kyle!", snd_TextScroll_Default );		 
	 dialog_I++; 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "If it helps keep the arcade open, what's a few bucks?", snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Well, why not, he's always been harmless when it comes down to it, and this thing will probably fall apart before anything happens.)", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Kyle_SellWeaponDay4;	 
	 dialog_I++; 	 
  
  
  
	// binary choice
	// if sold a16
	dialog_I = 350;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Thanks bossman.", snd_TextScroll_Default );		 
	 dialog_I++; 	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Thanks Kyle, but please, don't ever use that thing.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_370;		 
	 dialog_I++; 	
	
	// if NOT sold a16	
	 dialog_I = 360;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "...", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_370;		 
	 dialog_I++; 
	 
     #endregion

     #region victor enter



	 dialog_I = 370;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default" , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "enter default");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "victor", "Hello gents.", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default" , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "kyle", "grrrrrrr....", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default" , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle, down boy, down!", snd_TextScroll_Default );		 
	 dialog_I++; 	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default" , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "kyle", "Whoof, I smell something fishy here. I will be off cleaning the office.", snd_TextScroll_Default );		 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default" , "exit default");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What can I do for you Viktor?", snd_TextScroll_Default );		 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "victor", "Close.", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Viktor I promised I would get you the rent soon.", snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "victor", "It's not that.", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Why do you look so sad?", snd_TextScroll_Default );		 
	 dialog_I++; 

 
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "victor", "A couple of girls got in a big argument in the parking lot. One ripped the other's wig off, and it was full of roaches. I saw the whole thing.", snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "victor", "Then they got in their van and the bugs literally poured out. Then all those little roaches followed one of my strippers inside and I have to bomb the entire mall now.", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's really unfortunate.", snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "victor", "I'M GOING TO LOSE SO MUCH MONEY OVER THIS!!!", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I should have guessed...)", snd_TextScroll_Default );		 
	 dialog_I++;  
	 
	 
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "victor", "So, no more business today. Take care of what you need to and close up shop. I'll let you come back in the morning.", snd_TextScroll_Default );		 
	 dialog_I++; 	 


     arrayCutscenes[day_I].setSprite(dialog_I,2, "victor default" , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Damn, ok. We'll be out in a jiffy.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day4;		 
	 dialog_I++;  

     #endregion


#endregion // end of day 4

  
#region  day 5  5555555555555555
  
     
 day_I    = 4; // day 5
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I  , false);  // 
 
 #region monolog + clown
 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(It's almost closing time and nobody has come in. Those twins really did a number on the entire mall's popularity)", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(And where the hell is Kyle? He has never missed a day in his life. Hell, he's never even been late. I think he's here before me every day.)", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
    // arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
    // arrayCutscenes[day_I].setText(dialog_I,  1, "player", "(What was I thinking about again? Oh yea, those twins.)", snd_TextScroll_Default );		 
	// arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseDone_Twins_Day5;		 
	// dialog_I++; 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "clown", "Heya buck'o", snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "enter clown");
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(Thank goodness, a customer, wait...)", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Well if it isn't my favorite clown.", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Do you know any other clowns?", snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Well, no...", snd_TextScroll_Default );		 
	 dialog_I++; 

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "That's ok, I'll still take the compliment.", snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Can I assume you're here to sell me something today?", snd_TextScroll_Default );		 
	 dialog_I++; 

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Why else would I be here?", snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ugh, this whole scheme you have going, it really stresses me out, and I've got enough stress as it is.", snd_TextScroll_Default );		 
	 dialog_I++; 


	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Bam Bam understands. Just look at it this way, you're doing a good deed for the community.", snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Am I though?", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You're 100% convinced this cop is a bad guy?", snd_TextScroll_Default );		 
	 dialog_I++; 


	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "I never said he was a bad guy. He's just a complete idiot that needs to find a job doing something else.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Like being a clown?", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Hey hey, don't insult my profession. ", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What, clowns can't take a joke?", snd_TextScroll_Default );		 
	 dialog_I++; 


	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Ha-ha-ha, very funny.", snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "...", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "...", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "So what did you steal from him this time?", snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Get this, he left his gun belt on a park bench after he sat down to eat an ice cream cone!", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Maybe I'm starting to believe you that he's not the brightest.", snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Exactly my friend. I couldn't help but take it. The only thing not covered in ice-cream was his 9 O'Clock pistol.", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "And you want me to buy it, right?", snd_TextScroll_Default );		 
	 dialog_I++;


	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Bingo bango...", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I hate that I'm even asking, but how much do you want for it?", snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Once again, nothing.", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Interesting. It's not like I'm short on supply, but why give it away for free?", snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Like I've said, I'm doing a community service here. Having a partner in cr... community service means more good for the folks around the city.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Riiight... You know that cop came in here after you?", snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "WHAT!? You didn't sell to him did you?", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hey, do you think I'd tell him your business?", snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Okay, okay, but if you did, just know you're putting us both, and the community, at risk.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I hear ya, but I do have a business to run.", snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Not sure I like the sound of that. Well, best not waste any more time if he's coming in here, I don't want him to catch me. Do you want this thing or not?", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Clown_Day5;		 
	 dialog_I++;

    
    dialog_I = 70;
    // if accepted gift
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "That's great, I knew you were a smart guy.", snd_TextScroll_Default );			 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Time will tell...", snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "That's great, I knew you were a smart guy.", snd_TextScroll_Default );			 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(So says a thieving clown.)", snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Thanks. I hope not to see you again though.", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Oh you will buck'o! See ya later.", snd_TextScroll_Default );	
	 dialog_I++;		 


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "Player", "Okay...", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_90; 
	 dialog_I++;

	 
    dialog_I = 80;
    // if denied gift
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "Damn. Guess I'm making another trip to the river.", snd_TextScroll_Default );			 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Guess so...", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown", "No time to waste then, I'll see ya 'round.", snd_TextScroll_Default );			 
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", " (I hope not.)", snd_TextScroll_Default );		 
	 dialog_I++;	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Ugghhhhh...)", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_90; 	 	 
	 dialog_I++;		 
	 
	 
	 
   #endregion  
 
     #region random sale 1   90 to 


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;
	 //////////////////////////////////


		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay5_1_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay5_1_Spr_Default = scr_SetRandomSpr(randomDay5_1_Spr, "default" );
	   var randomDay5_1_Spr_Angry   = scr_SetRandomSpr(randomDay5_1_Spr, "angry" );
    
    var getRandomMiniGameIndexDay5_1  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay4to5 );
	
	randomSaleOverride_Day5_1 = arrayRandomMinigameDay4to5[getRandomMiniGameIndexDay5_1]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////

	// begin random sale 1
	 dialog_I = 90;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_1_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay4to5[getRandomMiniGameIndexDay5_1].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay4to5[getRandomMiniGameIndexDay5_1].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day5;		
	 dialog_I++;
     
	 
	 dialog_I = 100;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay4to5[getRandomMiniGameIndexDay5_1].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_1_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_130;	 
	 dialog_I++;


	 dialog_I = 110;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay4to5[getRandomMiniGameIndexDay5_1].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_130;	 	 
	 dialog_I++;


	 dialog_I = 120;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay4to5[getRandomMiniGameIndexDay5_1].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_130;	 	 
	 dialog_I++;	
	
	
	
    #endregion // end of random sale 1	
 

    #region Jez + nerd  130, site 47

       dialog_I = 130;
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;
	 //////////////////////////////////


	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"    , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Hi there cutie.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Helldy... I mean, How'llo... I mean... Nevermind", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "jez smiling"    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Oh my, I didn't mean to get you all tongue tied there handsome.", snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(She's got me all flustered again. I wish someone would help me out here. Dammit, just when I need Kyle the most, he's not around.)", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
	 
	 /// nerd enter

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "enter default");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Good day to you, good sir and madam.", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez disgusted"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(And it just got worse...)", snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez disgusted"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,   "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Uhhh... Who is this?", snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez disgusted"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Jez, meet, uhh... Wait, I don't know your name.", snd_TextScroll_Default );		 
	 dialog_I++; 		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez disgusted"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd2", "It's Steve.", snd_TextScroll_Default );		 
	 dialog_I++;		 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez disgusted"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,   ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Why is 'Steve' here? Is there a nerd convention or something?", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez disgusted"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Good question actually.)", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd2", "I will have you know madam, I am here to see my friends.", snd_TextScroll_Default );		 
	 dialog_I++;		 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(We are NOT friends!)", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,   ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "I cannot believe this. Do you really hang out with this guy?", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "He likes to come in here and tell me, ummm, stories...", snd_TextScroll_Default );		 
	 dialog_I++;




     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,   ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Sounds like you would rather spend time with him than you would with me.", snd_TextScroll_Default );		 
	 dialog_I++;




     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd2", "Madam, I would be just as happy to talk with you as well.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,   ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "As if... There's no way I can stick around if this... thing, is here.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Damn, even though I don't really like him, that was harsh.)", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd2", "...", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Is he about to cry?)", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,   ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Well, who is it? Do you want to talk to him, or to me?", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(She's seriously making me choose?)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_JezOrNerd_Day5;	 
	 dialog_I++;

    // 180 if picking jez
	dialog_I = 180;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd2", "I see. I will leave you to it sir.", snd_TextScroll_Default );		 
	 dialog_I++;	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ugh, he's going to cry a river now.", snd_TextScroll_Default );		 
	 dialog_I++;	
	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Who cares! What's important is right in front of you.", snd_TextScroll_Default );		 
	 dialog_I++;	
	

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Maybe I should have kicked them both out. She's in a mood today and not an attractive one.)", snd_TextScroll_Default );		 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "So sweetie, I need a favor.", snd_TextScroll_Default );		 
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh... uh... what can I do to uhh... help?", snd_TextScroll_Default );		 
	 dialog_I++;



	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "There's a concert tonight. It's the first one in ages to come through here and I just spent all my money getting my hair re-done.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(No way she's going to ask me for money?)", snd_TextScroll_Default );		 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "If there's any way you could spare $300, I could definitely find a way to pay you back.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "($300!!! Is she sitting on the stage!?)", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Jez... I... uh...", snd_TextScroll_Default );		 
	 dialog_I++;
	 	 
	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Oh come now, you don't want to let a girl down do you?", snd_TextScroll_Default );		 
	 dialog_I++;
	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I may have to pull money out of the safe for this one.)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_GiveJezMoney_Day5;		 
	 dialog_I++;

     
	 // if yes, give money
	 dialog_I = 240;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "OOOHHHHH.... Thank you so much sweetie! I'll definitely pay you back sweetie.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(God I hope so.)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Jez_GiveMoney_Day5;	 
	 dialog_I++;	 
	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "I don't have time to stay and chat.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "Gotta go get ready!!!", snd_TextScroll_Default );		 
	 dialog_I++;


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I'm so screwed.)", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 
	 dialog_I++;	 


	 // if no, deny money
	 dialog_I = 250;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm sorry Jez, I just don't have the money...", snd_TextScroll_Default );		 
	 dialog_I++;	 

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I feel like she's staring through my soul.)", snd_TextScroll_Default );		 
	 dialog_I++;	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "...", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(She didn't even say a word. What the hell. I thought for sure she was going to scream and yell at me...)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 	 
	 dialog_I++;	 



     ///////////// 
	// if chosen the nerd
	 
	 
     // jump point 
	 dialog_I = 260;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "jez", "I cannot believe this. You are seriously out of your mind. I swear, if I come back and he's here again, I'm going to scream!", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "jez default"  ,  "exit default");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Why me?)", snd_TextScroll_Default );		 
	 dialog_I++;	



     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I can't believe you chose to talk to me sir. ", snd_TextScroll_Default );	 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Me either.", snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Well, I just wanted to share a story with you.", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_NerdStory_Day5;	 		 
	 dialog_I++;	

     #region nerd stories
  
	 // story 1
	 dialog_I = 270;
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The history of guns is a long and fascinating one, dating back centuries. It all started in China, around the 9th century, with the invention of gunpowder.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The first recorded use of gunpowder in warfare was in China in the 9th century, where they used bamboo tubes filled with gunpowder and a projectile to create what was called a fire lance. ", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In the book, The Art of War, written by Sun Tzu, mentions the use of a device called a fire lancer, which was essentially a tube filled with gunpowder and a projectile.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It was the first recorded use of gunpowder in warfare. From there, gunpowder weapons spread to the Middle East and Europe.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In the 14th century, the first handguns were developed in Italy.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "This was when they discovered that a handheld firearm could be created by adding a barrel and a trigger mechanism to the fire lance.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It is written in De Re Militari, written by Italian engineer Roberto Valturio, describes a handheld firearm that used gunpowder to shoot projectiles.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But it wasn't until the 16th century that guns really became widespread.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "That's when the arquebus was developed, which was a long gun that used a matchlock to ignite the gunpowder. ", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The arquebus was a game-changer in warfare because soldiers could now shoot from a distance, which was much safer than getting up close with a sword or spear.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Our local museum has a replica of an arquebus. It's heavy and unwieldy, but it was a significant advancement in the evolution of guns.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The matchlock mechanism was soon replaced by flintlocks, which were more reliable, and then came muskets, which were lighter and more accurate.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "From there, guns continued to evolve, with rifles and other types of firearms being developed.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The Industrial Revolution led to the mass production of firearms, and they became a standard part of military equipment.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "However, the invention of guns also had significant impacts on society.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "hey led to changes in warfare tactics and ultimately played a role in shaping the world as we know it today. ", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The development of guns and the resulting changes in warfare also influenced other aspects of society, such as the rise of nationalism and the development of modern science and technology.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In conclusion, the history of guns is a complex and multifaceted one.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It began with a simple invention in China, and over the centuries, it evolved into the sophisticated firearms we have today.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But it's important to remember that with every technological advancement comes both benefits and drawbacks, and guns are no exception.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "And that, my friends, is the history of guns in a nutshell.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Thanks for listening to me sir. I'd love to tell you more about it, but I've got to get dinner ready. It's spaghetti night.", snd_TextScroll_Nerd );	 	
	 dialog_I++;		 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Thank god it's over.)", snd_TextScroll_Default );	 	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "See you next time sir.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 	 
	 dialog_I++;



     /// story 2 History of Video Games
	 dialog_I = 350;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The history of video games is a fascinating one.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It all began in the early 1950s when computer scientists started experimenting with ways to use computers for entertainment.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In the book, Computer Lib/Dream Machines, written by Ted Nelson in 1974, describes the earliest examples of computer games.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "They were simple text-based games that ran on mainframe computers and were played using punch cards.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But it wasn't until the late 1960s and early 1970s that video games really took off.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In 1967, a group of engineers at MIT created a game called Spacewar!", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It was the first video game to be played on a computer, and it paved the way for the industry we know today.", snd_TextScroll_Nerd );	 	
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The Magnavox Odyssey was the first true home video game console.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It was released in 1972 and came with several games, including a tennis game that could be played on a TV set.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "From there, video games continued to evolve.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In the late 1970s, the Atari 2600 was released, which allowed gamers to play a variety of games on their home TVs.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "This was the beginning of home consoles, as you well know to be a dubious cause of the downfall of the modern arcades.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Of course we all know about Censored for Copyright so We Don't Get Sued one of the most popular and influential video games of all time.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It was released in 1985 and helped establish a certain famous console developer as a dominant player in the industry.", snd_TextScroll_Nerd );	 	
	 dialog_I++;	 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But video games didn't just revolutionize entertainment. ", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "hey are still having an impact on technology, as the need for faster and more powerful computers leads to advances in computing hardware and software.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In conclusion, the history of video games is a long and varied one, with many different players and innovations along the way.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "From the early days of punch cards to the modern era, video games have always been at the forefront of technological advancement.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "And that, my friend, is the history of video games in a nutshell.", snd_TextScroll_Nerd );	 	 		 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Thanks for listening to me sir. I'd love to tell you more about it, but I've got to get dinner ready. It's spaghetti night.", snd_TextScroll_Nerd );	 	
	 dialog_I++;		 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Thank god it's over.)", snd_TextScroll_Default );	 	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "See you next time sir.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 	 
	 dialog_I++;	 


     /// story 3 - History of Our City
	 dialog_I = 400;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It all began in the 1920s, when the city was in its heyday as the epicenter of the automotive industry.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The city was thriving with manufacturing plants, but as the decades progressed, social and economic disparities began to take hold, giving way to an inexorable decline.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "By the 1960s, the city was plagued by urban decay and was fraught with unbridled corruption.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Political malfeasance and avarice had penetrated deep into the bureaucratic fabric, stifling any hopes of substantive reform.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "This left the city's populace mired in dire straits, with a marked paucity of educational and employment opportunities.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But this was only the beginning.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In the 1970s, the candle industry, our great city's lifeblood, was severely impacted by a confluence of factors, including subpar management, foreign competition, and the skyrocketing cost of raw materials.", snd_TextScroll_Nerd );	 	
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The city's economy suffered a devastating blow, and its social ills were amplified.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Then, in the summer of 1983, the city was wracked by a series of riots, sparked by mounting frustrations stemming from poverty, crime, and police brutality.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The protests quickly devolved into anarchic chaos, and the city was plunged into a state of profound disarray.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The city's infrastructure crumbled, and basic necessities such as clean water and medical care were all but inaccessible.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The economy had reached a point of no return, and the city's social fabric was frayed beyond repair.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "he once-great city had fallen into a bleak and intractable morass, serving as a cautionary tale of the pitfalls of institutional corruption and economic neglect.", snd_TextScroll_Nerd );	 		 		 
	 dialog_I++;	 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Thanks for listening to me sir. I'd love to tell you more about it, but I've got to get dinner ready. It's spaghetti night.", snd_TextScroll_Nerd );	 	
	 dialog_I++;		 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Thank god it's over.)", snd_TextScroll_Default );	 	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "See you next time sir.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 	 
	 dialog_I++;




     /// story 4 - A Medical Diagnosis
	 dialog_I = 450;
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "I stand before you today with an exciting breakthrough in the field of medical research.", snd_TextScroll_Nerd );	 	
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Through countless hours of experimentation, I have discovered that certain exotic mushrooms possess potent anti-inflammatory and anti-microbial properties.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Those can be used to treat a rare and debilitating medical condition that affects the feet.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The condition I speak of is known as Pedal Malanoidosis, a complex and enigmatic disorder that causes severe discoloration and inflammation of the feet.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "A disease that my grandmother has unfortunately suffered from for years.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It is a disorder that has confounded medical professionals for years, with little progress made in understanding its causes or developing effective treatments.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But through careful study and experimentation, I have uncovered a potential cure for this troubling disorder.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The key lies in the spores of two particular types of mushrooms - Cordyceps Sinensis and Grifola Frondosa.", snd_TextScroll_Nerd );	 	
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "These mushrooms, with their unique properties and potent anti-inflammatory and anti-microbial agents, have shown remarkable promise in treating Pedal Malanoidosis.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The process by which these mushrooms are used is simple but effective.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "First, the affected area is thoroughly cleaned and dried.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Then, a paste is created by grinding the mushrooms into a fine powder and adding water.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The paste is then applied to the affected area and left to dry for several hours.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "This process is repeated twice a day for seven days.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The results have been nothing short of remarkable.", snd_TextScroll_Nerd );	 	
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In all of my trials, the application of the mushroom paste has led to significant reductions in inflammation and pain associated with Pedal Malanoidosis.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The patient who received this treatment - my grandmother of course - has experienced a marked improvement in their ability to move and walk.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "And many have reported a complete recovery from the disorder.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But while these results are certainly encouraging, I must not become complacent.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Further studies are needed to fully understand the mechanisms by which these mushrooms work and to ensure their safety and efficacy.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "I must also continue to explore the medicinal properties of other exotic mushrooms, which may hold the key to curing other debilitating disorders that currently elude medical science.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In conclusion, the discovery of the potential cure for Pedal Malanoidosis is an exciting development that holds enormous promise for the medical community and my grandmother in particular.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The study of exotic mushrooms and their medicinal properties is an ongoing process, one that requires continued dedication and research to unlock its full potential.", snd_TextScroll_Nerd );	 	
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But with trial and commitment, I am confident that I can continue to make groundbreaking discoveries that improve the health and well-being of people around the world, but mostly my grandmother.", snd_TextScroll_Nerd );	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Thanks for listening to me sir. I'd love to tell you more about it, but I've got to get dinner ready. It's spaghetti night.", snd_TextScroll_Nerd );	 	
	 dialog_I++;		 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Thank god it's over.)", snd_TextScroll_Default );	 	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "See you next time sir.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 	 
	 dialog_I++;	 
	 
	 
     #endregion  	// end of nerd stories 	 

    #endregion
	   
	   
	#region wife
	
	 dialog_I = 550;
	 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;
	 //////////////////////////////////


     arrayCutscenes[day_I].setSprite(dialog_I,2,"nothing"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh and look at the time, I think I'll get to leave soon.)", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_GivenPresentD4_Wife_Day5;	 		 
	 dialog_I++;		
	
	
	 
	// #1 if not given a present last day, the split if chosen nerd/jez
		
	 dialog_I = 551;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "You son of a witch...", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hey you know I hate when you say that.", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "I saw her walking out of here!", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(DAMMIT. That woman is going to cost me.)", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "I came to the mall today to get that new Brazillian Wax thing done, and here you are talking to other women!", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseDone_JezOrNerd_Wife_Day5;		 	 
	 dialog_I++;
     
	 // if chosen nerd
	 dialog_I = 560;		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Look, I actually kicked her out of here so that nerdy guy could stay.", snd_TextScroll_Default );	 	
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Wait, you did that?", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes, I'm not lying. You should have seen him too.", snd_TextScroll_Default );	 	
	 dialog_I++;	
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", " I did and I'm glad to hear that. I... I take back what I said.", snd_TextScroll_Default );	 	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Well thank you dear.", snd_TextScroll_Default );	 	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Well, I've got to get home anyways. I have to get up early for blah blah blah blah blah.", snd_TextScroll_WifeBlah );	 	
	 dialog_I++;	
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I... That sounds wonderful.", snd_TextScroll_Default );	 	
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I have no clue what she's talking about.)", snd_TextScroll_Default );	 	
	 dialog_I++;		 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Bye dear, see you at home!", snd_TextScroll_WifeBlah );	 	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Bye bye.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_650;	 
	 dialog_I++;	
	 
	 // if chosen jez
	 dialog_I = 580;		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm sorry dear, she wouldn't leave. She even made me kick out a nerdy guy.", snd_TextScroll_Default );	 	
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Ohhhh.... She 'made you'...", snd_TextScroll_Default );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Dammit, I shouldn't have said it that way.)", snd_TextScroll_Default );	 	
	 dialog_I++;		 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "So now she's got some kind of power over you?", snd_TextScroll_WifeBlah );	 	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "blah blah blah blah blah blah blah", snd_TextScroll_WifeBlah );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "...", snd_TextScroll_Default );	 	
	 dialog_I++;	
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Don't just stand there with that stupid look on your face. If I ever see her here again blah blah blah blah blah blah?", snd_TextScroll_WifeBlah );	 	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yes... dear. I guess I'll see you at home then?", snd_TextScroll_Default );	 	
	 dialog_I++;		 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Don't count on a warm dinner waiting for you...", snd_TextScroll_WifeBlah );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Since when am I getting warm dinners any more?)", snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Sheesh, I can't catch a break. And now here comes that cop again, surprise surprise he's here.)", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_650;	 
	 dialog_I++;


	 /// premade choise from day 4
	// #2 if  given a present last day, the split if chosen nerd/jez	 
	 dialog_I = 600;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Oh my dear husband. Thank you so much for the gift last night.", snd_TextScroll_Default );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You're welcome. It made me think of you.", snd_TextScroll_Default );	 	
	 dialog_I++;		 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Hehe, aren't you just so sweet.", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Well, I was down at the salon getting this new wax job done. It's Brazillian!", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "(Wax job? Is she making candles?)", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Just wait until you see it.", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Anyways, as I was saying, I saw Jezebelle walking by and I just know she was in here.", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "But I've got to say, I trust you and I know you wouldn't dare let her sweet talk you. Right dear?", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Right dear?", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Of course dear. I definitely kicked her out anyway. Told her to hit the road...", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Oh my, of course you would, hehehe.", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Well dear, I'm going to get home and get you a nice dinner ready, then later I'll teach you about Brazil.", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hahaha, sounds great. Oh my, hun it looks like I have customer headed this way.", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "wife", "Oh well don't let me keep you from business. Love you!", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "wife default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Love you too!", snd_TextScroll_Default );	 	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_650;	 
	 dialog_I++;


	#endregion   
	
	
	#region cop
	dialog_I = 650;

	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;
	 //////////////////////////////////

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  ,  "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "**WHEEZE**  **WHEEZE** **WHEEZE** ", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Are you ok?", snd_TextScroll_Default );	 	
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Huff, I... Huff, ran... Huff, from across town...", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ran? Why didn't you drive your car?", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Keys...", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Lost my keys... Huff...", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh no, I hope that clown didn't steal those too, but it wouldn't surprise me if this guy lost them either.)", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "There, I think I got my breath.. Whoo...", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Good deal, so what can I do for you sir?", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Lost my pistol. Can't believe I left it somewhere.", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "No kidding, how on earth does that happen?", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "You got me. I had a short break downtown, got in my car and drove a few blocks before I realized I didn't have my gun belt. ", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Then when I went back to see if it was where I left it, it was gone! ", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Ok then, the clown's story checks out.)", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I remembered I saw some in your stock last time and I knew I could count on you to help me out.", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Always here to serve.", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "(Damn, he knows I have them, I don't think I can turn this guy down this time.)", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I gotta have one, bare bones, so as not to attract any attention, what do you say?", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Sorry Bam Bam, feels like there's no way I can refuse him this time.)", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Cop_Day5;		 
	 dialog_I++;


    // choise -> sell pistol to him back
	dialog_I = 680;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Actually sir, the only ones we have left have a recall. They basically fall apart when you try to do anything with them and they misfire a LOT.", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "That's not good. It would never pass inspection when I turn it in and the last time I turned in a defective weapon they said tear up another one and you're outta here.", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I don't even know how that pistol got filled with balloons.", snd_TextScroll_Default );	 	
	 dialog_I++;


	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's a really strange problem.", snd_TextScroll_Default );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Better to be safe and not risk it I suppose. I'll figure this one out. Might cost me some pay too.", snd_TextScroll_Default );	 	
	 dialog_I++;	 
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Maybe it'll turn up out of nowhere the same way it mysteriously disappeared.", snd_TextScroll_Default );	 	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "That's a good outlook.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;		 
	 dialog_I++;		 


    // choise -> sell pistol to him back
	dialog_I = 690;
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "You're the best.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;		 
	 dialog_I++;


    // continue 700
	dialog_I = 700;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Oh and, about those permits. It's not really a law anymore ya know.", snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "So I have come to learn...", snd_TextScroll_Default );	 	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Sorry about all that.", snd_TextScroll_Default );	 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "It's no bother, really...", snd_TextScroll_Default );	 	
	 dialog_I++;	 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  4, "unknown", "**RING RING**", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_ScreenShake_TelephoneRing;	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Oh well, looks like you've got a call. I've got a long walk ahead of me so I'll let you be.", snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "cop default" ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Thanks officer, always good doing business with you.", snd_TextScroll_Default );	 	
	 dialog_I++;
	 
	#endregion 


    #region kyle nun ransome  720

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Who the heck is calling? I don't think this phone has rang in years.)", snd_TextScroll_Default );	 	
	 dialog_I++;	 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hello.", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "Bossman! I need help!", snd_TextScroll_Default );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle? What the hell happened? Where are you?", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "I got myself into some trouble bossman.", snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh great, are you at the police station? That cop from the other day just left and maybe...", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "NO NO NO! No cops, PLEASE!", snd_TextScroll_Default );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh Kyle... What kind of trouble are you in?", snd_TextScroll_Default );	 	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "I got kidnapped.", snd_TextScroll_Default );	 	
	 dialog_I++;


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "KIDNAPPED!? BY WHO!?", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "The nuns. After what happened the other day I thought I could try to scare them off, but they don't mess around bossman.", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "Bossman, can you save me? PLEASE!?", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Kyle, you idiot.)", snd_TextScroll_Default );	 	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "unknown", "(Click sound)", snd_TextScroll_Default );	 	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "unknown", "...", snd_TextScroll_Default );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "unknown", "...", snd_TextScroll_Default );	 	
	 dialog_I++;
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "nun", "Your employee tried to harass one of our holy members, that is sacrilegious.", snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "nun", "But we are not without mercy, the sheep shall come back to the herd.", snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "nun", "You have to pay up to attain absolution.", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What!? How much are you asking for him?", snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "nun", "$500. The price for sheep gone the wrong way is usually much more steep.", snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "nun", "Declining our very generous offer will have unfortunate consequences.", snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "nun", "(Click sound)", snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "unknown", "...", snd_TextScroll_Default );	 	
	 dialog_I++;
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "They said to come to the old warehouse on Main Street.", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Dammit Kyle. I guess $500 isn't too much, but it's not like business has been booming...", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "Bossman, can you save me? PLEASE!?", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_NunRansom_Day5;		 
	 dialog_I++;


    // if yes
     dialog_I = 750;
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Of course Kyle, why would I say no!", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Kyle_TransferRansome_Day5;	 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'll be there soon.", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day5;	 
	 dialog_I++;



   // if no
     dialog_I = 760;
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle, I just can't, you know money is tight around here.", snd_TextScroll_Default );	 	
	 dialog_I++;
	 
	 	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "What are you saying bossman?", snd_TextScroll_Default );	 	
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle, I'm sure they'll let you go if you apologize.", snd_TextScroll_Default );	 	
	 dialog_I++;

	 	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "But bossman...", snd_TextScroll_Default );	 	
	 dialog_I++; 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Goodbye Kyle, I know you'll be ok.", snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "nobody",  "(Click sound)", snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "He'll be ok, surely they won't hurt him. I bet I'll see him first thing tomorrow.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_780;	 
	 dialog_I++;


     #endregion

    #region random sale 2   780 - 820

		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay5_2_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay5_2_Spr_Default = scr_SetRandomSpr(randomDay5_2_Spr, "default" );
	   var randomDay5_2_Spr_Angry   = scr_SetRandomSpr(randomDay5_2_Spr, "angry" );
    
    var getRandomMiniGameIndexDay5_2  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay4to5 );
	
	randomSaleOverride_Day5_2 = arrayRandomMinigameDay4to5[getRandomMiniGameIndexDay5_2]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////


	 dialog_I = 780;	   
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;
	 //////////////////////////////////	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay4to5[getRandomMiniGameIndexDay5_2].introTextRandom[0], snd_TextScroll_Default );			 
	 dialog_I++;
	 		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay4to5[getRandomMiniGameIndexDay5_2].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day5;		// overide and setup  
	 dialog_I++;		
	
	
	// begin random sale 1
	 
	 dialog_I = 800;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay4to5[getRandomMiniGameIndexDay5_2].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_2_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;	 
	 dialog_I++;


	 dialog_I = 810;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay4to5[getRandomMiniGameIndexDay5_2].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;	 	 
	 dialog_I++;


	 dialog_I = 820;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random",  arrayRandomMinigameDay4to5[getRandomMiniGameIndexDay5_2].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay5_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;	 	 
	 dialog_I++;	
	
	
	
#endregion // end of random sale 2	   

// extro
	 dialog_I = 830;		
     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing" ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Welp, it's  been a day, better pack up and get home.)", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day5;	 
	 dialog_I++;
	   
#endregion end of day 5


#region day 6   6666666666666666666

 day_I    = 5; // day 6
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I  , false); // 

     #region angry dad


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh man, that was a long night.)", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseDone_Kyle_Day6;		 
	 dialog_I++; 



     dialog_I = 10; // did not pay ransom
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Crap, Kyle never made it in to open up. I sure hope he's ok today.)", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_30;		 	 
	 dialog_I++; 


     dialog_I = 20; // did  pay ransom
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Kyle isn't in either, he must still be resting, but he had a rough night so I can let it slide.)", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_30;		 
	 dialog_I++; 


     // continue here 30
     dialog_I = 30;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(And there's a customer already waiting outside. Oh no, it's Mr. Dog Gun guy... Better get things going and get him out of here.)", snd_TextScroll_Default );
	 dialog_I++; 		 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Welcome sir. Can I assist you?", snd_TextScroll_Default );
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "...", snd_TextScroll_Default );
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Not this again.)", snd_TextScroll_Default );
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "Sorry about the other day. I was drunk and in a rage.", snd_TextScroll_Default );
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "So you're normal huh?", snd_TextScroll_Default );
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "Yes, at least I think so.", snd_TextScroll_Default );
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok well then that makes things a little better. What do you need today?", snd_TextScroll_Default );
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "Just some half working bolt action rifle . ", snd_TextScroll_Default );
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Just this rifle? That's all?", snd_TextScroll_Default );
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "Yes. That's all. After I realized what kind of junk you sell, I went and found my fathers old rifle. Only problem is, I don't have any spare parts for it.", snd_TextScroll_Default );
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Shadow said these things are mostly junk. Maybe I should actually try to fire some of these sometime and see for myself.)", snd_TextScroll_Default );
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Holy crap, I just realized, I'm selling something I've never even used. I've barely even glanced at the manuals for these things. What an oversight.)", snd_TextScroll_Default );
	 dialog_I++; 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok, I suppose such a rifle isn't a tall order, but I'm a bit concerned about what you plan to do with it given our previous encounter.", snd_TextScroll_Default );
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "I'm not going to hurt anyone. Not that it's any of your damn business.", snd_TextScroll_Default );
	 dialog_I++; 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hey hey, I don't want anyone getting hurt or going to jail, including you. Forgive me for caring about my repeat customers.", snd_TextScroll_Default );
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "I see... Well, I'm taking my daughter's boyfriend hunting tonight.", snd_TextScroll_Default );
	 dialog_I++; 


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Maybe he can be a reasonable person after all.)", snd_TextScroll_Default );
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Please tell me the boyfriend isn't what you're hunting for?", snd_TextScroll_Default );
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "HAHAHAHA, that's actually not a bad idea, but no. My old rifle kicks like a mule, I want him to use it and hopefully get hurt.", snd_TextScroll_Default );
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "He's a brute, that's for sure.", snd_TextScroll_Default );
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "I'd like to see him flat on his ass so I can stand over him and tell him to leave my daughter the hell alone or worse will happen.", snd_TextScroll_Default );
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ahh, the old intimidation tactic. Have you maybe tried, I don't know... Letting your daughter make her own decisions since she's an adult?", snd_TextScroll_Default );
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "...", snd_TextScroll_Default );
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "...", snd_TextScroll_Default );
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "If that was a joke, it was awful.", snd_TextScroll_Default );
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(He's not going to listen to me. Oh well, what do I know, I don't have kids.)", snd_TextScroll_Default );
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "So are you going to sell me the rifle or not?", snd_TextScroll_Default );
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(He's not going to listen to me. Oh well, what do I know, I don't have kids.)", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Dad_Day6;		 
	 dialog_I++;




	 // jump to 100
	 dialog_I = 100;
	 
	 // sale! 200
     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "Thanks. Also, if my daughter ever comes in here, you never saw me.", snd_TextScroll_Default );	 		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Patient - Client privacy is my motto.", snd_TextScroll_Default );
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "Ya, you're still not funny.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_130;		 
	 dialog_I++;



	 // Fail! and refuse combo
	 dialog_I = 120;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "You're a damn dumbass", snd_TextScroll_Default );	 
	 dialog_I++;	 
	  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Look, if you hear me out...", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "What I'm about to do is flatten you out.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "(Ugh, I should have known better.)", snd_TextScroll_Default );	  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "dad", "You know what, forget it. You obviously don't need my money, and you definitely won't be seeing me ever again.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "dad default"  , "exit default");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Is that a bad thing? He doesn't strike me as a big spender.)", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_130;	 
	 dialog_I++;
     
	 
	 // jump to 130
	 dialog_I = 130;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(He's got to be my least favorite customer, and I've got some weirdos.)", snd_TextScroll_Default );	 
	 dialog_I++;	 

	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );		 
	 dialog_I++;
	 //////////////////////////////////




     arrayCutscenes[day_I].setSprite(dialog_I,1,"granny default"  , "enter default");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh here we go, one of my favorites. I wonder if she brought me more macaroons.)", snd_TextScroll_Default );	 
	 dialog_I++;

     #endregion // end of angry dad
 
 
    #region granny 130 and duke
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Hello young man.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hello. How are you today?", snd_TextScroll_Default );	 
	 dialog_I++;
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Oh I am just fine. Here, I brought you my famous macaroons again. I even improved them, which I know is hard to believe.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, you certainly know the fastest way to a man's heart.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseGranny_Day6;		 
	 dialog_I++;
     
	 // if not eat macaroon
	 dialog_I = 140;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Oh my, you're going to break an old woman's heart. I've never had someone refuse my macaroons before.", snd_TextScroll_Default );	 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm so sorry, I just ate and I have a bit of an upset stomach.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "You don't have to lie to an old woman you know.", snd_TextScroll_Default );	 
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(She saw right through me. Damn.)", snd_TextScroll_Default );	 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "If you're going to break an old woman's heart, I suppose I'll have to leave then.", snd_TextScroll_Default );	 
	 dialog_I++;  
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Whoa, I'm breaking her heart over a stupid macaroon? What the heck was I thinking?)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseGrannyTry2_Day6;	 
	 dialog_I++;
 
	 // if not eat macaroon even on double insist
	 dialog_I = 150; 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Have a good day dear. Perhaps I'll try a new batch sometime and come back to try again.", snd_TextScroll_Default );	 
	 dialog_I++;  

     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "exit default");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Please do. I'm so sorry.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] =	 obj_Dialog_SkipIndex_to_190; /// jump to 190			 
	 dialog_I++;
 
 
 
	 // if yes to eat macaroon 
	 dialog_I = 160; 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "OH MY GOD! THESE ARE AMAZING!!!", snd_TextScroll_Default );	 	 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Oh I'm so glad you like them.", snd_TextScroll_Default );	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "They have a lot of extra love packed in.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Effect_Start_Drugged;	 
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I can taste the love. It kind of makes me feel, tingly inside...", snd_TextScroll_Default );	 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Now, be a dear and help a granny out.", snd_TextScroll_Default );	 
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Anything for you!", snd_TextScroll_Default );	 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Great. I was watching an old movie last night, dear you know how I love my old movies...", snd_TextScroll_Default );	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh yes, of course.", snd_TextScroll_Default );	 
	 dialog_I++;	 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "This family lived out in the western plains in the 1800s. Suddenly, they were attacked by bandits.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "The husband got hurt and the wife was able to defend her entire family with one of those old pump shotguns.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I think I've seen this one. Wait, why is my mouth tingling so much.)", snd_TextScroll_Default );	 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I would like to purchase one of those pumps from you. It would make a granny so happy.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, well, I don't know how I could refuse you, but do you think it may be a bit too powerful?", snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "The recoil on those weapons is nothing an old lady like yourself should be exposed to!", snd_TextScroll_Default );	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Oh deary, thank you for your concern, but I don't plan to use it at all. It's just a piece of memorabilia for me.", snd_TextScroll_Default );	 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok that makes sense, well, let me help you out then.", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_GrannyBuyAuto_TammyGun_Day6;  //// 3333333
	 dialog_I++;
     
	 // check not used??? 999999999


     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Oh you are such a sweet young man.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Awe, thank you, I don't feel young anymore.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Hoho, when you get my age, you'll look back and realize how young you were all along.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(My whole face is tingling now.)", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Well I have to be off. Don't want to miss my afternoon shows.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "exit default");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Of course. Have a good...", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I'm tingling all over.)", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What's....)", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(going...)", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] =	 obj_Transition_FadeToBlackout; /// jump to 190		 
	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(on...)", snd_TextScroll_Default );	 
	// arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] =	 obj_Effect_Blackout; /// jump to 190
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] =	 obj_Dialog_SkipIndex_to_190; /// jump to 190	
	 dialog_I++;
     
	 /// fix 9999999 blackout effect does nothing




     
    #endregion


#region Duke 

     dialog_I = 190;    
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "........", snd_TextScroll_Duke );	   
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Effect_End_Drugged;	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Ello. Are u alive? Come on. Get Up. Came on, do it nau. Don't make mi slap you awake.", snd_TextScroll_Duke );	  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Wha... what happened...)", snd_TextScroll_Default );	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "He lives again.", snd_TextScroll_Duke );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Who is that?)", snd_TextScroll_Default );	  	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Vat happened to you?", snd_TextScroll_Duke );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I... I don't know...", snd_TextScroll_Default );	 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I must really be tired after last night.)", snd_TextScroll_Default );	 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Very vell, as long as u are ok.", snd_TextScroll_Duke );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What's with this guy? He sounds foreign.)", snd_TextScroll_Default );	 	 	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "I've come to buy a veppon.", snd_TextScroll_Duke );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "A veppon?", snd_TextScroll_Default );	 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Yes, a veppon. Are u deaf?", snd_TextScroll_Duke );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(My head hurts so bad, but he's got to mean a weapon.)", snd_TextScroll_Default );	 	 	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Vell, can you help mi?", snd_TextScroll_Duke );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I, I think so. What kind of weapon?", snd_TextScroll_Default );	 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke flex"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "HAHA, I need a biiig one! No puny veppons for veaklings, jah.", snd_TextScroll_Duke );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What is this dumbass doing? Owww, my head...)", snd_TextScroll_Default );	 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke flex"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "unknown", "Vell, anyzing vill vork.", snd_TextScroll_Duke );	 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Anything?", snd_TextScroll_Default );	 	 	 
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Ves. I'm shooting a movie. Ze budget is very small, unlike me. I am ze produca too, so I have to buy my own veppons.", snd_TextScroll_Duke );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh. Umm. So what kind of scene are you shooting?", snd_TextScroll_Default );	 	 	 
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke flex"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "I can't tell you dis. Topp secret.", snd_TextScroll_Duke );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, so I have to guess what you need I suppose.", snd_TextScroll_Default );	 	 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Well. Uhh. Here goes.", snd_TextScroll_Default );	 	 	 
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hm, no small arms and no melee I suppose.", snd_TextScroll_Default );	 	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] =	 obj_MiniGame_Duke_Day6;	 
	 dialog_I++;	 


      // jump to 250
	 dialog_I = 250;
	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke happy"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Ah yes, zis vill do.", snd_TextScroll_Default );	 		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Good. What's your name by the way?", snd_TextScroll_Default );
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Duke. Duke Weisswurstenschrauber.", snd_TextScroll_Default );	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Wow. That's a mouthful.", snd_TextScroll_Default );
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Zank u for ze veppon.", snd_TextScroll_Default );	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You're very welcome. I can't wait to see this movie.", snd_TextScroll_Default );
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "It vill be a blockbusta, I got ze feelin.", snd_TextScroll_Default );	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default" , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Haha, good. Well, good luck I guess and feel free to come back if you need more... veppons.", snd_TextScroll_Default );
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", " I'll be... returning soon, ja!", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Duke_SoldWeaponYes_Day6;		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default" , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok big guy.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] =	 obj_Dialog_SkipIndex_to_300;
	 dialog_I++;


	 // refuse 
	 dialog_I = 270;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Ze hell are you zinking!?", snd_TextScroll_Default );	 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "You vant to deny an up and coming movie ztar!?", snd_TextScroll_Default );	 
	 dialog_I++;		  
	  
	  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hey big guy, calm down. I just don't know what you want so I don't know how to help you.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke flexing"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "I tell you dis, if I come back, you better have a veppon for mi.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(He's really going to flex and threaten me?)", snd_TextScroll_Default );	  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "I train my vriend. You have no izea how ztrong zeze muzzles are. Not like urs, they look like noodles, jah", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Look, I'm sorry about that. Come back next time and tell me what you need so I can help you out.", snd_TextScroll_Default );	  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "I'll be... returning soon, ja!", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Duke_SoldWeaponNo_Day6;		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "exit default");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok big guy.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] =	 obj_Dialog_SkipIndex_to_300;	
	 dialog_I++;



     // fail
	 dialog_I = 290;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Ze is a puny veppon. I need a betta one, ja.", snd_TextScroll_Default );	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "I'll be... returning soon, ja!", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Duke_SoldWeaponNo_Day6;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "exit default");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok big guy.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] =	 obj_Dialog_SkipIndex_to_300;
	 dialog_I++;	 

    
	 // continue
	 dialog_I = 300;		 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(There sure are some characters here.)", snd_TextScroll_Default );	 
	 dialog_I++;
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(Oh man, almost time to go home, thankfully nobody has come in today.)", snd_TextScroll_Default );	 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(But neither has Kyle for that matter.)", snd_TextScroll_Default );	 	 
	 dialog_I++;
	 
		 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseDone_Kyle2_Day6;	 
	 dialog_I++;
	 ////////////////////////////////// 
	 
	 
	 
	 
#endregion


    #region kyle
	
	
	 // jump to 130
     //if payed randsom
	 dialog_I = 310;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "enter default");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "?", snd_TextScroll_Default );	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "Kyle, I was just thinking about you!", snd_TextScroll_Default );	 
	 dialog_I++;	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Thank you so much bossman. I thought I was a dead man for sure.", snd_TextScroll_Default );	 
	 dialog_I++;	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "No need to thank me. Just, maybe don't go messing with the nuns again?", snd_TextScroll_Default );	 
	 dialog_I++;			

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Someone's gotta stand up to them bossman. They can't keep coming in here and robbing you.", snd_TextScroll_Default );	 
	 dialog_I++;	

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Maybe, but I don't want you getting hurt. Hopefully they won't come back here though after I paid them off.", snd_TextScroll_Default );	 
	 dialog_I++;			

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Well, I'm sorry if I caused you any trouble. I'll try to keep a level head from now on.", snd_TextScroll_Default );	 
	 dialog_I++;	


	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Thanks Kyle.", snd_TextScroll_Default );	 
	 dialog_I++;			

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Sure thing bossman.", snd_TextScroll_Default );	 
	 dialog_I++;	

	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Oh and bossman, I know I don't have any right to ask this of you, but I was wondering if...", snd_TextScroll_Default );	 
	 dialog_I++;			
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "If there's a time you have the funds, could you add a new game to the arcade? Just something to have as another option?", snd_TextScroll_Default );	 
	 dialog_I++;		
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I suppose that's not a tall order, maybe we need some change around here. Try to draw in more customers.", snd_TextScroll_Default );	 
	 dialog_I++;	




     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Awesome! I'll drop a list in your office of some cool games I wanted to try.", snd_TextScroll_Default );	 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Sounds good! I'll see what I can do. Why don't you take the rest of the day off, don't worry about this place for a day.", snd_TextScroll_Default );	 
	 dialog_I++;	


	 
	 
    #endregion



    #region random sale 1   333     //if NOT payed randsom


		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay6_1_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay6_1_Spr_Default = scr_SetRandomSpr(randomDay6_1_Spr, "default" );
	   var randomDay6_1_Spr_Angry   = scr_SetRandomSpr(randomDay6_1_Spr, "angry" );
    
    var getRandomMiniGameIndexDay6_1  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay6to8 );
	
	randomSaleOverride_Day6_1 = arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay6_1]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////

	 dialog_I = 330;	   
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay6_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay6_1].introTextRandom[0], snd_TextScroll_Default );			 
	 dialog_I++;
		 
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay6_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay6_1].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day6;		 
	 dialog_I++;		
	
	
	// begin random sale 1
	 
	 dialog_I = 340;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay6_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay6_1].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay6_1_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_370;	 
	 dialog_I++;


	 dialog_I = 350;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay6_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay6_1].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay6_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_370;	 	 
	 dialog_I++;


	 dialog_I = 360;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay6_1_Spr_Angry , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay6_1].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay6_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_370;	 	 
	 dialog_I++;	
	
	
	
     #endregion // end of random sale 1	   




     #region shadown
	 
	 dialog_I = 370;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nothing", "Hi.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , "enter shadow"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Hi.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "AH!", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Seriously, how are you so sneaky?", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow smiling"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Practice.", snd_TextScroll_Default );		 
	 dialog_I++;
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "A man of many words...", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "...", snd_TextScroll_Default );		 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Well, what can I do for you.", snd_TextScroll_Default );			 	 
	 dialog_I++;	
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "I'm giving you more supply. It should help bring in more money.", snd_TextScroll_Default );		 
	 dialog_I++;		
	
	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hey, nice. I think I've got some repeat customers that will be happy to hear that.", snd_TextScroll_Default );			 	 
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Good. I'll go get everything.", snd_TextScroll_Default );		 
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , "exit shadow"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Alright, time to start making the big bucks)", snd_TextScroll_Default );			 	 
	 dialog_I++;		 


     /// re enter
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , "enter shadow"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Back.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Shadow_Add_HeavyWeapons_Day6;	 
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Damn that was fast.", snd_TextScroll_Default );			 	 
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Now, be careful with these. They are way more powerful than what I've given you before.", snd_TextScroll_Default );		 
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Trusting me more, huh?", snd_TextScroll_Default );			 	 
	 dialog_I++;		 
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "No. I want to see some serious profit.", snd_TextScroll_Default );		 
	 dialog_I++;		


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Now he sounds like his brother.)", snd_TextScroll_Default );			 	 
	 dialog_I++;		 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "If you can sell these, you can sell anything.", snd_TextScroll_Default );		 
	 dialog_I++;		
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Uh... Ok, are these the same low quality as the rest?", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Of course. Don't count on anyone actually using these successfully.", snd_TextScroll_Default );		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Why don't you sell the good stuff?", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Too many questions.", snd_TextScroll_Default );		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "S... Sorry. But I do have to ask...", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,"shadow default"  , "exit shadow"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Damn. That guy is something else.)", snd_TextScroll_Default );			 	 
	 dialog_I++;
 
     // shadow exit
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh well, I should get familiar with the new stock soon before...)", snd_TextScroll_Default );			 	 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );		 
	 dialog_I++;
	 //////////////////////////////////

 
    #endregion

    #region fixed random sale, bank robber?
      arrayCutscenes[day_I].setSprite(dialog_I,1,"randomFixed default"  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Someone comes in...)", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "randomFixed default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "randomFixed", "Hey bud, my guy told me you got something big.", snd_TextScroll_Default );			 	 
	 dialog_I++;	 
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "randomFixed default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "randomFixed", "Something that can put a hole in the side of a bank... I mean tank.", snd_TextScroll_Default );			 	 
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"randomFixed default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, ummm, I just got some new stock. Let's see if I have what you need.", snd_TextScroll_Default );			 
	 dialog_I++;	
	  
	  
     arrayCutscenes[day_I].setSprite(dialog_I,1,"randomFixed default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I think Shadow dropped off a potato launcher. I seriously doubt this guy could do much harm with it if I sell it to him.)", snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomFixed_Day6;
	 dialog_I++;		
	 
	 
	 /// sale 450	
	 dialog_I = 450;
     arrayCutscenes[day_I].setSprite(dialog_I,1,"randomFixed default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "This work?", snd_TextScroll_Default );			 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "randomFixed default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "randomFixed", "Hell yeah it works. Time to make a withdrawal.", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1,"randomFixed default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I don't want to know.)", snd_TextScroll_Default );			 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "randomFixed default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "randomFixed", "I'm throwing in a little extra, seeing as how I'm gonna be rich and all soon.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_480;		 
	 dialog_I++;	
	
	
     // refuse  460
	 dialog_I = 460;		
     arrayCutscenes[day_I].setSprite(dialog_I,1,"randomFixed angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm sorry, I don't think we have anything that powerful.", snd_TextScroll_Default );			 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "randomFixed angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "randomFixed", "Damn. My guy was wrong then. Guess I shouldn't be surprised. Thanks anyways pal.", snd_TextScroll_Default );		 
	 dialog_I++;	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1,"randomFixed angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Good luck.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_480;			 
	 dialog_I++;	
	
	
	
     //  fail  470
	 dialog_I = 470;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"randomFixed default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I don't think I have anything that big, but would this do?", snd_TextScroll_Default );			 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "randomFixed default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "randomFixed", "Not a chance. My guy was wrong then. Guess I shouldn't be surprised. Thanks anyways pal.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_480;		 
	 dialog_I++;	



// continue 480



	#endregion
	
	// extro
	 dialog_I = 480;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,"randomFixed default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Ok, time to close shop. Can't believe I took that long of a nap earlier.)", snd_TextScroll_Default );	
	  arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day6;
	 dialog_I++;


#endregion  // end of day 6

// test minisystem!
#region day 7   777777777777777

 day_I    = 6; // day 7
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I  , false);  // 
  


    #region kyle
     

	 // if not payed randsome day 5
	 dialog_I = 10;
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Still no Kyle? Now I'm actually starting to worry about him.)", snd_TextScroll_Default );
	 dialog_I++; 	 


     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Best not to think about it, if they wanted to hurt him, they would have demanded way more money.)", snd_TextScroll_Default );
	 dialog_I++; 


     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Surely they know he's no harm to anyone.)", snd_TextScroll_Default );
	 dialog_I++; 

     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh nuts, the twins are back again.)", snd_TextScroll_Default );
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseDone_Kyle_Day7;	 // jumnp	 
	 dialog_I++; 


	 // if PAYED randsome day 5
	 dialog_I = 20;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "enter right");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Morning Kyle.", snd_TextScroll_Default );	 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Morning Bossman. Lovely day right?", snd_TextScroll_Default );	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I guess I can't complain too much. How are you doing?", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Doing great, except I saw that pair of twins coming in again. They really caused trouble last time.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Damn. They sure did. Maybe you should look busy so they don't bother you.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle worried"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Good idea. Last time one of them smacked me on the ass and called me slick.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh? They you're type?", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle worried"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Hell no bossman. Are you joking?.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hahaha, just joking Kyle. Head to the office and I'll let you know when they leave.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"   , "exit right");		
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin1 smiling"  , "enter default");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Thanks. I don't want to be part of some weird love triangle with them.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 smiling"   , "enter default");			 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nothing", "", snd_TextScroll_Default );	 
	 dialog_I++;



    #endregion


    #region twins
	 dialog_I = 50;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 smiling"  , "");	 // she is not damaged!	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Gerd dangit, dat boy you got dun run off'd.", snd_TextScroll_Default );	 
	 dialog_I++;
	 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "enter default");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hello again ladies.", snd_TextScroll_Default );	 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin2 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin1 default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Cut the shit.", snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Yeah, cut de shit.", snd_TextScroll_Default );	 
	 dialog_I++;
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Whoa whoa, what are you talking about?", snd_TextScroll_Default );	 
	 dialog_I++;	 



     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "We heard you got a new load...", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin2", "An weeze wan a boom stick, A... S... A...C...", snd_TextScroll_Default );	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "(Oh lord, who the hell put the word out and how did they find out so fast?)", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin2", "Don go screw'n us over like las time.", snd_TextScroll_Default );	
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseDone_SoldTwins_Day7;
	 dialog_I++;

     // sold to them on day 4! -> twin 2 loses teeth
	 dialog_I = 80; 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What are you talking about? I sold you what you wanted.", snd_TextScroll_Default );	 
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 teeth"  , "");		// show destroyed teeth 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Sure did, and your gun was crap.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin2", "It back fir'd an we lost more teeth.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(That sounds about right.)", snd_TextScroll_Default );	 
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I hate to hear that. Are you sure you didn't use it wrong?", snd_TextScroll_Default );	 
	 dialog_I++;    


     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "DO WE LOOK LIKE WE DON' KNOW HOW TO USE A WEAPON!?", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Yes, yes you do)", snd_TextScroll_Default );	 
	 dialog_I++;    


     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, I didn't mean offense.", snd_TextScroll_Default );	 
	 dialog_I++;    



     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 smiling"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Dis ain 'bout no fence. Dis 'bout settin things righ'.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(She's truly too stupid to have a gun in her hands.)", snd_TextScroll_Default );	 
	 dialog_I++;  

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What is it you want this time?", snd_TextScroll_Default );	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "How 'bout something that works AND goes BOOM BOOM BOOM! Tree times, jus like that.", snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 smiling"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Das righ'. BOOM... BOOM... BOOM...", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh. I see.", snd_TextScroll_Default );	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Well, either I make some good money and they blow themselves up, or I make nothing and they probably spread the word that I sell junk.)", snd_TextScroll_Default );
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_200; // skip to sale	 
	 
	 dialog_I++; 



     // if NOT sold to them on day 4! 
	 dialog_I = 150; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ladies, I'm really sorry about that. Look, I'm going to be honest with you two.", snd_TextScroll_Default );	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm not so sure you should really own something so dangerous. You seem like nice girls and all...", snd_TextScroll_Default );	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 smiling"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Da hell you sayin?", snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Sounds like he don' think we can handle a weapon.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Darn tootin' it do.", snd_TextScroll_Default );	 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Whoa, whoa. Ladies, I'm not insulting you, it's just that I don't want you getting hurt and..", snd_TextScroll_Default );	 
	 dialog_I++; 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Don' think we jank?", snd_TextScroll_Default );	 
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What is jank?", snd_TextScroll_Default );	 
	 dialog_I++; 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "You hearin' dis sis? What kin'a idjit don' know jank?.", snd_TextScroll_Default );	 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I don't understand half of what they say.)", snd_TextScroll_Default );	 
	 dialog_I++; 	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Weeze got connec-shuns ya know. If'n you don' sell to us, someone else sure will.", snd_TextScroll_Default );	 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Connections with who? The Beverly Hillbillies?)", snd_TextScroll_Default );	 
	 dialog_I++; 	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "So what'll it be?", snd_TextScroll_Default );	 
	 dialog_I++;	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I don't even know what you want.", snd_TextScroll_Default );	 
	 dialog_I++; 	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "How 'bout something that works AND goes BOOM BOOM BOOM! Tree times, jus like that.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 smiling"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Das righ'. BOOM... BOOM... BOOM...", snd_TextScroll_Default );	 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Well, either I make some good money and they blow themselves up, or I make nothing and they probably spread the word that I sell junk.)", snd_TextScroll_Default );	 
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Twins_Day7; // skip to sale		 
	 dialog_I++; 		 
	
	 /// check minigame not set!  999999
	
	
	/// sale
	dialog_I = 200; 
	 
	// sale 200
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 smiling"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 smiling"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Yeehaw! Les go shoot dem cans in da parkin lot sis!", snd_TextScroll_Default );	 
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 smiling"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 smiling"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Sounds like fun. Lets make it happen.", snd_TextScroll_Default );	 
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "exit default");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh lord, what have I done? They're going to shoot up the parking lot.)", snd_TextScroll_Default );	 
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Twins_GunSoldYes_Day7; // skip to sale		 
	 dialog_I++; 	
	
	
	
	// refuse
	dialog_I = 210; 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ladies, I'm sorry, I just can't take a chance that you hurt yourselves.", snd_TextScroll_Default );	 	 
	 dialog_I++; 	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 smiling"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 smiling"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Oh ho ho, youz care 'bout us dat much?", snd_TextScroll_Default );	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 smiling"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 smiling"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Thas it, lez go sis. We got a show at the club to get to.", snd_TextScroll_Default );	 
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "exit default");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "exit default");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh man, I hope these two don't work at Viktor's club.)", snd_TextScroll_Default );	 	
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Twins_GunSoldNo_Day7; // skip to sale		 
	 dialog_I++; 	
	
	
	 // fail
	dialog_I = 220; 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "This is the best I can do for you ladies. Promise.", snd_TextScroll_Default );	 	
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_230; // skip to sale		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 angry"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Dat der ain' worth a hill a beans.", snd_TextScroll_Default );	 
	 dialog_I++;		 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Huh?", snd_TextScroll_Default );	 	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 angry"  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Thas it, lez go sis. We got a show at the club to get to.", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "exit default");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "exit default");			 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh man, I hope these two don't work at Viktor's club.)", snd_TextScroll_Default );	 	 
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Twins_GunSoldNo_Day7; // skip to sale		 
	 dialog_I++; 



     // exit twins
	 dialog_I = 230; 	
	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Didn't even say bye. I hope they never come back here again.)", snd_TextScroll_Default );	 	 
	 dialog_I++;

    #endregion

     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Now where was I...)", snd_TextScroll_Default );	 	 
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseDone_Kyle2_Day7; // skip to sale		 
	 dialog_I++;



    #region kyle if rescued
 
	
	// payed randsome and kyle is there ->
	 dialog_I = 240; 	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "enter right");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh yea... KYLE. YOU CAN COME OUT NOW.", snd_TextScroll_Default );	 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Thanks bossman. Those ladies are something else.", snd_TextScroll_Default );	 	 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Haha, you afraid of them?", snd_TextScroll_Default );	 	 
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Hell yeah I am bossman. They may be women, but they aren't lady-like.", snd_TextScroll_Default );	 	 
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Good for you kid. Most guys your age wouldn't care one bit if those two didn't have a tooth in their head.", snd_TextScroll_Default );	 	 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "I guess I'm just different in that regard.", snd_TextScroll_Default );	 	 
	 dialog_I++;	



     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Nothing wrong with that. Well, what's on your mind today?", snd_TextScroll_Default );	 	 
	 dialog_I++;	


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "I want to pay you back bossman.", snd_TextScroll_Default );	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh Kyle, there's no need to repay me.", snd_TextScroll_Default );	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Even though the money couldn't hurt.)", snd_TextScroll_Default );	 	 
	 dialog_I++;


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Well, what I actually mean is, I'd like to buy another gun.", snd_TextScroll_Default );	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Another one? What's wrong with the first one? I mean, other than it probably is a piece of junk.", snd_TextScroll_Default );	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "That's just it, the nuns took it.", snd_TextScroll_Default );	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, well, I should have known I suppose.", snd_TextScroll_Default );	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "It's all good. I really like the look of some of the new stuff anyways.", snd_TextScroll_Default );	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You sure about that? These aren't like video game weapons or nothing.", snd_TextScroll_Default );	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "I'm sure bossman.", snd_TextScroll_Default );	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Geeze, I don't know Kyle. Can you at least promise me you won't go after those nuns again?", snd_TextScroll_Default );	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Scouts honor bossman.", snd_TextScroll_Default );	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Didn't he tell me he got kicked out of boy scouts for spying on the girl scouts?)", snd_TextScroll_Default );	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hmmm. Ok, what is it you want?", snd_TextScroll_Default );	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "That LMG looks pretty nice.", snd_TextScroll_Default );	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "GEEZE KYLE. And what are you going to do with that thing?", snd_TextScroll_Default );	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "I'm going to show it off at the next ARN showcase. If that's ok with you bossman.  ", snd_TextScroll_Default );	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle. I just want you safe, ok?", snd_TextScroll_Default );	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Absolutely, so what do you say?", snd_TextScroll_Default );	 
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_GiveKyle_Gun2_Day7; // skip to sale			 
	 dialog_I++;
     
	
	 
	 // if yes to another gun
	 dialog_I = 300;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Here ya go.", snd_TextScroll_Default );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Thanks bossman. I'm gonna grab it later and just play some games for now if that's ok with you.", snd_TextScroll_Default );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "No problem Kyle. Enjoy.", snd_TextScroll_Default );	 
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGameAuto_Kyle_Day7; // skip to sale			 
	 dialog_I++;	


	 // if No to another gun
	 dialog_I = 310;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "I'm sorry Kyle. I just can't risk it.", snd_TextScroll_Default );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Dang. Well, it's ok bossman.", snd_TextScroll_Default );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Maybe you are right, I did cause you a lot of trouble.", snd_TextScroll_Default );	 		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "I'm sure the ARN has plenty of good firepower to check out anyways. ", snd_TextScroll_Default );	 		 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "(Sigh) Kyle, I just want to see you behave like a responsible adult.", snd_TextScroll_Default );	 		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "You know what. Don't look so sad Kyle. Things will be alright.", snd_TextScroll_Default );	 		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "You will get your chance to be an unstoppable force, that doesn' mean you have to wield a powerful weapon.", snd_TextScroll_Default );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Have you heard the phrase, the pen is mightier than the sword?", snd_TextScroll_Default );	 		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Yep, sure thing bossman. I'm gonna go play some games if that's ok.", snd_TextScroll_Default );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "exit right");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Have at it Kyle.", snd_TextScroll_Default );	 		 
	 dialog_I++;




    #endregion
    dialog_I = 350;

   // if not payed randsome for kyle  -> sales
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(Oh wow, I look down for two seconds and I've got a line of customers now.)", snd_TextScroll_Default );	 	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_360;	 
	 dialog_I++;

     #region random sale 1   if not kyle rescued
	
		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay7_1_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay7_1_Spr_Default = scr_SetRandomSpr(randomDay7_1_Spr, "default" );
	   var randomDay7_1_Spr_Angry   = scr_SetRandomSpr(randomDay7_1_Spr, "angry" );
    
    var getRandomMiniGameIndexDay7_1  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay6to8 );
	
	randomSaleOverride_Day7_1 = arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay7_1]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////	
	
	// begin random sale 1
	 dialog_I = 360;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_1_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay7_1].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay7_1].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day7;		
	 dialog_I++;
     
	 
	 dialog_I = 370;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_1_Spr_Default , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay7_1].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_1_Spr_Default , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_400;	 
	 dialog_I++;


	 dialog_I = 380;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay7_1].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_400;	 	 
	 dialog_I++;


	 dialog_I = 390;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_1_Spr_Angry , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay7_1].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_400;	 	 
	 dialog_I++;	
	
	
	
    #endregion // end of random sale 1	
	
	dialog_I = 400;	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Next!", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_410;	 	 
	 dialog_I++;


     #region random sale 2   if not kyle rescued
	
		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay7_2_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay7_2_Spr_Default = scr_SetRandomSpr(randomDay7_2_Spr, "default" );
	   var randomDay7_2_Spr_Angry   = scr_SetRandomSpr(randomDay7_2_Spr, "angry" );
    
    var getRandomMiniGameIndexDay7_2  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay6to8 );
	
	randomSaleOverride_Day7_2 = arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay7_2]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////	
	
	
	// begin random sale 2
	 dialog_I = 410;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_2_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay7_2].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay7_2].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day7;		
	 dialog_I++;
     
	 
	 dialog_I = 420;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay7_2].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_2_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_450;	 
	 dialog_I++;


	 dialog_I = 430;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay7_1].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_450;	 	 
	 dialog_I++;


	 dialog_I = 440;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay7_2].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay7_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_450;	 	 
	 dialog_I++;	
	
	
	
    #endregion // end of random sale 2
	
	#region nun
	
	 dialog_I = 450;	
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nothing"  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Are you shitting me right now!?)", snd_TextScroll_Default );			 	 
	 dialog_I++;	
	

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun praying"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "My child. I have come to see how you are doing today.", snd_TextScroll_Default );			 	 
	 dialog_I++;	

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That depends on why you are here.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseDone_Kyle3_Day7;	 
	 dialog_I++;


    // if paid randsome 
	 dialog_I = 460;		
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "I came to see how your pupil is doing after our encounter.", snd_TextScroll_Default );		 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I assume you mean Kyle?", snd_TextScroll_Default );			 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "This is correct.", snd_TextScroll_Default );		 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "He's been better...", snd_TextScroll_Default );			 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "He is lucky to have a fatherly figure, a shining beacon of light, such as yourself.", snd_TextScroll_Default );		 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Thanks. Well, should I open the register?", snd_TextScroll_Default );			 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "Behold my child. It is known that the divine works in mysterious ways.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "You, who have shepherded the blind, are being blessed with a gift!", snd_TextScroll_Default );		 
	 dialog_I++;



	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(???)", snd_TextScroll_Default );			 
	 dialog_I++;	 
	 	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(The gift of losing even more money? Where is this going?)", snd_TextScroll_Default );			 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, what could that be?", snd_TextScroll_Default );			 
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "It was discovered that a heathen arcade game was being hidden in the basement of our headquarters.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Nuns have headquarters?)", snd_TextScroll_Default );			 
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Well, that's a lot better deal than the last time.", snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "Consider it a peace offering, in place of a punishment, for your employee's unholy transgression. Also, I noticed someone by the name of NUN has the high score...", snd_TextScroll_Default );		 
	 dialog_I++;
	 	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Played it did you?", snd_TextScroll_Default );			 
	 dialog_I++;		 
	 	 

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "If I did, I would certainly have the highest score.", snd_TextScroll_Default );		 
	 dialog_I++;
	 	  
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "I must inform you though, you are not free from sin.", snd_TextScroll_Default );		 
	 dialog_I++;
	 	  
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "Do not be surprised if I, or one of my sisters, needs to visit you with another letter of indulgence for your earthly and spiritual protection.", snd_TextScroll_Default );		 
	 dialog_I++;


	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(And there's the rub. Who knows what they'll extort out of me soon.)", snd_TextScroll_Default );			 
	 dialog_I++;


	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Umm. So what's the game called?", snd_TextScroll_Default );			 
	 dialog_I++;


	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "It appears to be called Mullet Hell.", snd_TextScroll_Default );		 
	 dialog_I++;


	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ah, sounds wicked, I see why you would want to get rid of it.", snd_TextScroll_Default );			 
	 dialog_I++;


	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "Indeed. We must reject every kind of evil. ", snd_TextScroll_Default );		 
	 dialog_I++;


	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You're welcome my child. As is written, give thanks in all circumstances." , snd_TextScroll_Default );			 
	 dialog_I++;


	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "Indeed. We must reject every kind of evil. ", snd_TextScroll_Default );		 
	 dialog_I++;



	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Yes, of course." , snd_TextScroll_Default );			 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Am I supposed to be thankful for being robbed too?)" , snd_TextScroll_Default );			 
	 dialog_I++;


	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun praying"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "It is time I must leave you. May your whole spirit, body, and would be kept blameless. ", snd_TextScroll_Default );		 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT",  "(And may I never be robbed again.)" , snd_TextScroll_Default );			 
	 dialog_I++;


	 dialog_I = 510;	
     // if NOT paid randsome     
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "I have a message about your friend.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Who? Haven't seen him..." , snd_TextScroll_Default );			 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun", "I believe his name is Klive.", snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "He is safe, for now, of that I can assure you." , snd_TextScroll_Default );			 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT",  "(Oh, Kyle... Duh.)" , snd_TextScroll_Default );			 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Thanks. Well, should I open the register?" , snd_TextScroll_Default );			 
	 dialog_I++;


	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "It would be for the best, my child, I am tasked with bringing you a letter of indulgence for your earthly and spiritual protection..." , snd_TextScroll_Default );			 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "But why?" , snd_TextScroll_Default );			 
	 dialog_I++;
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "We want to ensure your safety, my dear child." , snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT",  "(Getting sick of this “my child” bullshit.)" , snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "There are those in this city who would seek to harass or even destroy anyone living within our territory." , snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "And who would that be?" , snd_TextScroll_Default );			 
	 dialog_I++;		 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "My child, if you listen carefully and do all that I say, I will be an enemy to your enemies and will oppose those who oppose you." , snd_TextScroll_Default );			 
	 dialog_I++;	 	 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "I didn't know I had enemies." , snd_TextScroll_Default );			 
	 dialog_I++;		 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun praying"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "You are but a blind child, in need of enlightenment." , snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "I see..." , snd_TextScroll_Default );			 
	 dialog_I++;		 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "It pains me to inform you that the price is high for spiritual protection." , snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "How high?" , snd_TextScroll_Default );			 
	 dialog_I++;		 
	 

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun praying"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "$1000." , snd_TextScroll_Default );			 
	 dialog_I++;	

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "That's double what you asked for last time!" , snd_TextScroll_Default );			 
	 dialog_I++;		

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "My child, that was a mere penitence. This is much greater a cause beyond your mortal comprehension." , snd_TextScroll_Default );			 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "You shall not muzzle an ox while he is threshing." , snd_TextScroll_Default );			 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "I don't follow." , snd_TextScroll_Default );			 
	 dialog_I++;	

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "The laborer is worthy of his wages." , snd_TextScroll_Default );			 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT",  "(Whatever. If I refuse there's no telling what she'll raise the price to.)" , snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Resuce_Kyle_ThisTime_Day7;	 
	 dialog_I++;	

     // if pay randsom this time 2nd try, 
	 // pay up
	 dialog_I = 510;	

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "I hope you keep me safe from these enemies." , snd_TextScroll_Default );			 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "The prudent see danger and take refuge, but the simple keep going and pay the penalty." , snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Right... Well, is that all?" , snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "Be vigilant my child. Oh, and for your willingness to give so freely, your servant shall be released to you." , snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT",  "(It didn't feel like I was giving freely, but I'm glad to hear about Kyle.)" , snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 	 
	 dialog_I++;	 
	 	 
		 
		 
	 // still dont pay up
	 dialog_I = 520;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "I just don't have the funds at the moment." , snd_TextScroll_Default );			 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "My child." , snd_TextScroll_Default );			 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "As it is written, strike them down, they have transgressed and shall suffer forever penitence. You have brought judgment upon your house!" , snd_TextScroll_Default );			 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "YOU SHOT MY BEST GAME!." , snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Effect_NunShootsArcade;	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun happy"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "I'm sorry to be so forceful, for my act of anger I must go and repent." , snd_TextScroll_Default );			 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun praying"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "Consider your debt delayed." , snd_TextScroll_Default );			 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nun",  "Oh, and your worthless bondservant shall be released to you. Be sure to keep him from trouble." , snd_TextScroll_Default );			
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 	 
	 dialog_I++;


  	 dialog_I = 550;  
	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "I just don't have the funds at the moment." , snd_TextScroll_Default );			 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1,"nun default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT",  "(No more customers for the moment. I think it's time for a break.)" , snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day7;	 
	 dialog_I++;


	#endregion
	

#endregion end of day 7"" , snd_TextScroll_Default );	
	 

#region day 8   888888888888888888888888

 day_I    = 7; // day 8
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I  , false);  // 
  
	#region weather girl


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Damn heater seems to be broken. It's freezing in here today.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  "weather smiling"  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1,  "weather", "You look cold. Don't tell me you missed the forecast, or did you just forget to wear a sweater today?", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Mornin', uh, sure, I watched it, but the heater isn't working in her is the problem.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That, or the mall owner found a way to save more money and cut the controls. That wouldn't surprise me.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Hmmm, that sounds like a good news story.", snd_TextScroll_Default );		 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh man, don't tell anyone I said it. He would find more than one way to punish me. Bet he would turn my lights off and tell me to see in the dark.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "We wouldn't want that I suppose.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "So does this mean you got promoted to reporter?", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather dismissive"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "That's still in the works. You'd be surprised how difficult it is for a woman to move up in the news industry.", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(With the way she dresses, I'm surprised she's not on top of the management chain...)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's a shame, but I have confidence that you'll be a local media star before long.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	// 11 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "That's just why I'm here", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Weather_GunSold_Day8;		 
	 dialog_I++;

     

     // if sold previously to weather a gun ->
     dialog_I = 30;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "We wouldn't want that I suppose.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What exactly do you want to do a story on this time?", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_50;	 
	 dialog_I++;

     // if NOT sold previously to weather a gun ->
     dialog_I = 40;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "If you really want your business to grow, you've got to let me do a story on you.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What exactly do you want to do a story on?", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_50;	 	 
	 dialog_I++;


     // jump point ->
     dialog_I = 50;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "My boyfriend is working on a movie and he's got big plans to hit the big time.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "He is not the brightest bulb in the box, but good looks and the accent do have some magical charm.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Is his name Duke, by chance?", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "How do you know that? Oh, wait, he mentioned that he has been here on my recommendation.", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Duke_GunSold_Day8;		 
	 dialog_I++;
        

     // if  sold previously to duke a gun ->
     dialog_I = 70;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "He said you helped him out and that his movie is going vetter, I mean better.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Picking up on his mannerisms too. You must really spend a lot of time together.", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Hehe, yeah. My dad absolutely HATES when I talk like him.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Gotta agree with her dad on that one.)", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Down to business, I have to do a story on the movie being filmed here.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "And I'd love to have a really nice weapon to include in the story since a local business is helping provide props.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Wait, your boyfriend knows these aren't just props, right?", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Of course... Actually, he can be a bit careless. Maybe I should check on that, but for now I want to get this story rolling.", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Gotcha. Well, then, what do you need?", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Something foreign would be great. I'd like something that matches his personality. Add any bells and whistles you want.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_130;	 
	 dialog_I++;
	 
	 


     // if NOT sold previously to duke a gun ->
     dialog_I = 90;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yeah, I don't think I was able to help him though.", snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "So he said. I'm a little worried how the movie is going to turn out now. The scene he needed a gun for, well, he used his finger as a gun.", snd_TextScroll_Default );		 
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "It looked so stupid.", snd_TextScroll_Default );		 
	 dialog_I++;	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, that doesn't sound good. They don't have a props department?", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "He insists on using real guns, or nothing at all. Don't ask me why, I couldn't tell you.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Sounds like Duke.)", snd_TextScroll_Default );			 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "So what is it you'd like me to do?", snd_TextScroll_Default );			 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "If you'd help me out, I could definitely talk him into coming in again, so that would be two sales you could make.", snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Plus, when I run the story, I bet you anything you get a boost in sales.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Hmm, sounds like good money that I could really use.)", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm usually pretty careful to stay under the radar. How do I know this won't backfire?", snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Backfire... You're an arms dealer and you're worried about making sales?", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Maybe I run a story on that. I guess either way, I've got something to show when I get to the station.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Geeze, when you put it that way.... What are you even looking for?", snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Something foreign would be great. I'd like something that matches Duke's personality. Add any bells and whistles you want.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_130;	 
	 dialog_I++;	 
	 
  
    // jump point from sold or not sold to duke! 
     dialog_I = 130;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Oh, it just hit me, I forgot my wallet in the van. I'll be right back. You think about it and I'll be ready to purchase soon as I get back.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(No risk, no reward I suppose.)", snd_TextScroll_Default );			 
	 dialog_I++;  

#endregion	


	#region victor   133

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "", snd_TextScroll_Default );		 
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Well if it is my favorite tenant.", snd_TextScroll_Default );		 
	 dialog_I++;	
		
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Favorite? Shit...)", snd_TextScroll_Default );			 
	 dialog_I++;  

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "It's good to see you again my friend.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok Viktor, what's going on. You win the lottery?", snd_TextScroll_Default );			 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Not even close. I've got some serious debts that need paid immediately.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's not good. Does this have anything to do with the heaters not working?", snd_TextScroll_Default );			 
	 dialog_I++;  

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "What? No. I can't make money back on that fast enough.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "If your heaters broke call maintenance, they'll get to it in 30-60 days, just like the lease says.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Great, I get to freeze my ass off for 2 months.)", snd_TextScroll_Default );			 
	 dialog_I++;  
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "So what's the problem with these debts?", snd_TextScroll_Default );			 
	 dialog_I++;  


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "I owe some fellas a lot of money. I should have known better than to go to Vegas again.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Every time, they get me drunk and next thing I know, I'm waking up with a note written in blood saying I owe a bunch of money to some jackass.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "All I wanted was to go see my favorite girls. They work in one of the casinos.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Been trying to get them to come work for me for a while now.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Well, this time, they took me backstage and told me I could have some drinks with them.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Of course there was no way I could turn that down.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "We had a few drinks, then they took me to crash a wedding party. Next thing I know, I start blacking out in the back of their car.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "I wake up in a pool the next morning with a note saying I owe 200 grand.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "I can't imagine I gambled away that much, so I must have caused some damages or something.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Well, now I'm in a bind. I hate to do this, but it must be done because, well, without me, this entire place would shut down.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Vegas huh? That explains his absence the last few days, not that I've minded him being gone.)", snd_TextScroll_Default );			 
	 dialog_I++;  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Wait, he's going to ask for money isn't he?)", snd_TextScroll_Default );			 
	 dialog_I++;  

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "So now I'm forced to enforce the “pay on demand” clause for all my tenants.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Everyone has to pay $8000, today. If you don't pay, I'm going to shut you down and sell everything in here to pay off my debt.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Viktor, what the hell!? That isn't fair!", snd_TextScroll_Default );			 
	 dialog_I++;  

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "FAIR!? You're lucky I'm only demanding $8000...", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Victor_Bank8k_Day8;	 
	 dialog_I++;


        
     // if you have enough money ->
     dialog_I = 200;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "This is outrageous Vik. You don't know what I've been through to get the money. I planned on paying you, but this is a bit of a smack in the face.", snd_TextScroll_Default );			 
	 dialog_I++;  

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Good, sounds like you needed it.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "I'll be back in a few hours to collect. Don't try to run off.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Wouldn't dream of it Viktor, I love it here...", snd_TextScroll_Default );			 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Ha, smart ass.", snd_TextScroll_Default );				 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_230;	 
	 dialog_I++;	


     // if you have NOT enough money ->
     dialog_I = 210;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Viktor, I don't have the money, and I don't know from one day to the next if I will make a dime.", snd_TextScroll_Default );			 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Sounds like a personal problem.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "If I don't have the cash from you in the next couple of hours, you're out and your machines are mine.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "But...", snd_TextScroll_Default );			 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "No buts. I do not care.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "I don't care if you have to sell a tank or slit a throat as long as you get my money.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_230;	 	 
	 dialog_I++;	 
	#endregion
	
	
	#region Weather 2nd part + sale + news overlay

	 
	 // jump point if have or not have enough cash -> 
     dialog_I = 230;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(THAT SON OF A BITCH!)", snd_TextScroll_Default );			 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Whoa, you look pissed.", snd_TextScroll_Default );		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Did I miss something?", snd_TextScroll_Default );		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yeah, the mall owner just came and demanded $8000 by the end of today or else he's gonna kick me out.", snd_TextScroll_Default );			 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Hot damn, this place is full of stories.", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yeah well, this story will be my last here if I don't pay up.", snd_TextScroll_Default );			 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Oh? Can you pay that much today?", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Victor_Bank8k2_Day8;		 
	 dialog_I++;
	 
	 
	 
	 // 2nd split, if have enough cash
	 dialog_I = 250;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yeah, but the way things go around here I may be in a hole by the time he comes back.", snd_TextScroll_Default );			 
	 dialog_I++; 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I doubt it. If you help me out I'll be airing this story by 9AM, it's a sure thing you get more business.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_280;		 
	 dialog_I++; 



	 // 2nd split, if have NOT enough cash
	 dialog_I = 260;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "No, I don't and the way things go around here I don't know that I have a good chance.", snd_TextScroll_Default );			 
	 dialog_I++; 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Maybe I can do something about that. If you help me out I'll be airing this story by 9AM, it's a sure thing you get more business.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_280;		 
	 dialog_I++; 



	 // jump point, weaving together
	 dialog_I = 280;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Oh and I'll call Duke about his next big scene. He needs something BIG that's sure to be worth your while.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Maybe I should have sold more guns. A guy tries to keep the city safe and loses his own business.)", snd_TextScroll_Default );			 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Gotta hurry though, since I forgot the cash and had to run out and back in I'm almost late for the next airing.", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Maybe I should have sold more guns. A guy tries to keep the city safe and loses his own business.)", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Weather_Day8;		 
	 dialog_I++; 

	// sale!
	 dialog_I = 300;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "That's perfect. I promise you won't regret it. You'll be in business as long as you keep this up!", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "weather default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Jackpot. I better get the store ready.)", snd_TextScroll_Default );		 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_350;		 
	 dialog_I++;
	 //////////////////////////////////



	 dialog_I = 310;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "weather angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Oh, that's how it is. I guess you want to go out of business.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "weather default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Maybe it's for the best. Not like I've got much to live for here anyways.)", snd_TextScroll_Default );		 	 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_350;		 
	 dialog_I++;
	 //////////////////////////////////





	 dialog_I = 320;	 
	 // mess up!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "weather angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Dammit, I don't have time to screw around. Clearly you aren't worthy of a story.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "weather dismissive"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "weather", "Oh well, sounds like I got some news about this place to share at least.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "weather default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Shit, my memory fails me once again. Here's hoping I can pull through this day.)", snd_TextScroll_Default );			  	 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_350;		 
	 dialog_I++;
	 //////////////////////////////////










   
	 
	 /// news toggle!
	 dialog_I = 350;		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Weather_Start_News_Day8;	// just the effect 
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Duke_GunSold2_Day8;		 
	 dialog_I++;


     // if NOT sold or refused gun to her       
	 dialog_I = 360;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "Today's top story, a local mall owner is allegedly extorting his tenants for thousands of dollars.", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "After speaking with multiple tenants it appears the owner of the mall told various stories as to why he needed the money.", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "Tenants reported everything from involvement with the mafia, to gambling losses, to a large debt incurred while smuggling illegal rodents from Canada.", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "We reached out to the owner, Mr. Viktor Sleazeball, but he became irate when we identified ourselves as reporters.", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "We will continue to monitor the situation and will keep you informed.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Weather_EndNews_Day8;	 
	 dialog_I++; 	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_580;	 
	 dialog_I++; 



     // if sold gun to her       
	 dialog_I = 370;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "Today's top story, the still unnamed movie being filmed right here in the heard of the city is starting to heat up!", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "The action movie is going all out with it's hardcore action scenes.", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "When we spoke to the actor playing the lead role, Mr. Duke Weisswurstenschrauber, he said quote 'dis is going to be da greatest movie eva'.", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "He specifically wanted to thank the only Arcade left in the city saying 'day ave da greatest veppons a stud like me could eva need'.", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "We still have no idea what that means, but kudos to the Arcade owner for his actions in helping make this movie a success.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Weather_EndNews_Day8;	 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(That report was awesome. It's been an hour though and no customers. I hope she was right.)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(Right on cue.)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_400;		 
	 dialog_I++;


	#endregion 	 

     #region random sale 1   400 to IF sold to HER !
	


		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay8_1_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay8_1_Spr_Default = scr_SetRandomSpr(randomDay8_1_Spr, "default" );
	   var randomDay8_1_Spr_Angry   = scr_SetRandomSpr(randomDay8_1_Spr, "angry" );
    
    var getRandomMiniGameIndexDay8_1  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay6to8 );
	
	randomSaleOverride_Day8_1 = arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay8_1]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////

	// begin random sale 1
	 dialog_I = 400;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_1_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay8_1].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay8_1].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day8;		
	 dialog_I++;
     
	 
	 dialog_I = 410;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay8_1].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_1_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_450;	 
	 dialog_I++;


	 dialog_I = 420;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay8_1].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_450;	 	 
	 dialog_I++;


	 dialog_I = 430;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay8_1].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_450;	 	 
	 dialog_I++;	
	
	
	
    #endregion // end of random sale 1	

     #region random sale 2   450 to IF sold to HER !
	


		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay8_2_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay8_2_Spr_Default = scr_SetRandomSpr(randomDay8_2_Spr, "default" );
	   var randomDay8_2_Spr_Angry   = scr_SetRandomSpr(randomDay8_2_Spr, "angry" );
    
    var getRandomMiniGameIndexDay8_2  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay6to8 );
	
	randomSaleOverride_Day8_2 = arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay8_2]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////

	// begin random sale 1
	 dialog_I = 450;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_2_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay8_2].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay8_2].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day8;		
	 dialog_I++;
     
	 
	 dialog_I = 460;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay8_2].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_2_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_500;	 
	 dialog_I++;


	 dialog_I = 470;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay8_2].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_500;	 	 
	 dialog_I++;


	 dialog_I = 480;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay6to8[getRandomMiniGameIndexDay8_2].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay8_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_500;	 	 
	 dialog_I++;	
	
	
	
    #endregion // end of random sale 1	



	#region Duke sale -> if sold to Weather!
	 
	 dialog_I = 500;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "How'z it going?", snd_TextScroll_Default );		 
	 dialog_I++; 	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Going well big guy.", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "ay, I vant u to look at zomezing", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What's that?", snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Deez..", snd_TextScroll_Default );		 
	 dialog_I++; 	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Deez what?", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke flexing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Deez muzzlez!", snd_TextScroll_Default );		 
	 dialog_I++; 	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke flexing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(This guy is more of a clown than the actual clown that comes in here.)", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Are you imprezzed?", snd_TextScroll_Default );		 
	 dialog_I++; 	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh yeah, sure thing.", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Gotta get down to business so I can get him out of here before he tries to show me how much he can pick up or something.)", snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "So your girl told me you were interested in something big.", snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Dats right. I need a heavy machine gun.", snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You mean a light machine gun?", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "No, I zaid heavy machine gun, u fool. Biig muzzlez big gun, ja.", snd_TextScroll_Default );		 
	 dialog_I++; 	


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke flexing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hey buddy...", snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke flexing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Know what, maybe I should just drag the damn gun out here and let him see for himself.)", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Duke_Day8;		 
	 dialog_I++; 
     
	 // check 999999999 -> if sold to duke and if should save here

	// sale!
	 dialog_I = 530;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Yaz, diz iz it! A heavy machine gun.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Good grief, I hope he doesn't call it that in the movie.)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "I zink you vill like ze movie. Maybe you can watch ze premiere.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hey, that would be awesome. If you need anything else, definitely let me know!", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "I'll be... coming again.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What a goof.)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Viktor should be here soon. Need to get ready to pay the piper I suppose.)", snd_TextScroll_Default );		 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_600;		 
	 dialog_I++;
	 //////////////////////////////////



	 dialog_I = 550;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Duke, I don't have what you're looking for.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(It's not that, I actually just think you're too stupid to own this thing, much less use it in a movie.)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Ahhhh DAMMIT. Vat vas I zinking coming in here again. My movie iz going to be a joke and it'z your fault.", snd_TextScroll_Default );		 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm really sorry.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Not really.)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "duke", "You von't be zeeing me anymore pal. Don't count on me coming back.", snd_TextScroll_Default );		 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "nothing"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Fine by me.)", snd_TextScroll_Default );		 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_600;		 
	 dialog_I++;
	 //////////////////////////////////





	 dialog_I = 570;	 
	 // mess up!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Ahhhh DAMMIT. Vat vas I zinking coming in here again. My movie iz going to be a joke and it'z your fault u fool.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "I don't have time for deez zilly games..", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke default"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm really sorry.", snd_TextScroll_Default );			  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "You von't be zeeing me anymore pal. Asta barista baby!", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "duke default"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm really sorry.", snd_TextScroll_Default );			  	 
	 dialog_I++;


	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_600;		 
	 dialog_I++;
	 //////////////////////////////////


	#endregion


	#region 580 if not sold to weather girl -> by passing 2 random sales + duke
	   dialog_I = 580;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "(I hope Viktor didn't watch that story or he's gonna be mad!)");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "(I hope Viktor didn't watch that story or he's gonna be mad!)");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_600;	 
	 dialog_I++;

	#endregion


	#region 600 -> victor comes back to collect money
	 
	 
	 dialog_I = 600;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Viktor should be here any minute. I suppose it's time to pay the piper. Or not pay him...)", snd_TextScroll_Default );	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Welcome ba...", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Can it ya chummy bastard, I'm not in the mood today.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Jackass.)", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Pay up now, or the store is mine.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Guess it's decision time).", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Victor_Bank8k3_Day8;	 
	 dialog_I++;
     
	 

     // have enough money, choice for refuse or pay up
	 dialog_I = 600;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Guess it's decision time).", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_ChoisePayVictor_Day8;	 
	 dialog_I++;	 


     // if payed up
	 dialog_I = 610;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Good boy, you're really saving my ass. Now, I'll be back after my next trip to collect next month's rent.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor smiling"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Or the next 3 months rent, slimy greaseball...)", snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(All about the money, doesn't even want me to tell his brother hello.)", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Seems that should be it for today. I'm going to see if I can afford a cheeseburger on the way home.)", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_DayEnd_Day8;		 
	 dialog_I++;
	 
	 
     // if NOT payed up -> game end! normal bad ending, repeat day!
	 dialog_I = 620;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Vik, I just can't afford to pay you. Is there any way...", snd_TextScroll_Default );	 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "No.  No way.", snd_TextScroll_Default );	 
	 dialog_I++;	 
     
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "You've tried my patience long enough.", snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "et the hell out of my mall.", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_DayEndRepeat_Day8;			 
	 dialog_I++;	 
     
	 // check 999999 obj_DayEndRepeat_Day8 not defined



     // if NOT payed up and never never sold any guns -> pacifist run, game end, back to day 1
	 dialog_I = 630;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Vik, please...", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "I'd like you to meet some friends of mine. They're my helping hands. They would like to have a little word with you outside.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Oh, and tell your wife I said hello.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(My wife? What the hell does that mean?)", snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "victor", "Club him boys, he's not moving fast enough.", snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "victor angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What?)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_PacifistRun_Day8
	 dialog_I++;

	 // check 999999 obj_PacifistRun_Day8 not defined


	#endregion


#endregion  // end of day 8


#region day 9   999999999999999999999

	 day_I    = 8; // day 9
	 dialog_I = 0; // zeiger
 
	  arrayCutscenes[day_I] = new Createcutscene(day_I  , false);  // 


	#region nerd, jez comes in
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Are you aware what that means for the future of gaming? It's astounding!", snd_TextScroll_Default );		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(This guy. He's been talking for over two hours.)", snd_TextScroll_Default );		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I haven't even looked at him for at least 30 minutes, but it's like he's oblivious to any social cues.)", snd_TextScroll_Default );		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I really want to work on my customer service but... maybe I need to just tell him to leave. He may scare off other custom...)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez default"  , "enter default");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(oh no.)", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Hi there handsome and...", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Why is that thing here again?", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I've been asking myself the exact same thing.)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I... Uh... Well...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "What my studious friend here would like to say, is that we have been regaling stories of the many facets of technology and...", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "UGGGHHHHHH", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Excuse me madam.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Go away robo-nerd, go back to your people and let the humans talk!", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "How rude. I don't really think that's up to you anyways.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Do I seriously have to compete with this loser every time I want to come in here?", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "If this keeps up, I don't know if I can keep coming around. And here I had something really steamy to share with you.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Madam, I do not think anything you have could be more steamy than the world of video games and all of the upcoming technologies.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Besides, I have plenty of things to talk about as well.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Sounds like you need to make a wise decision, big guy.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "Yes, wise indeed.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez disgust"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(The wise choice would be to shoo them both away, but somehow I think that will just make things worse.)", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_JezOrNerd_Day9;	 	 
	 dialog_I++;
	 
	#endregion

     // if picked jez
	#region picked Jez
	dialog_I = 50;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez smiling"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Ha, later robo-nerd!", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez smiling"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "nerd", "I see. I will leave you to your exploits.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "exit default");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez smiling"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(It's his own fault really, I just can't take any more of it.)", snd_TextScroll_Default );		 
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Soooooo....", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "I got some work done and I thought I'd see what you think.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Well, don't tell me you have nothing to say?", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I... I... I...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Sorry, I'll put them away.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(If my wife finds out, I'm a dead man.)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez smiling"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Oh, did I frighten you?", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "N... Not at all... I'm just wondering...", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez smiling"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Yes?", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Doesn't that cost a lot?", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Jez_GaveMoney_Day9;	 
	 dialog_I++;
      
	   
	  
     // you gave her money previously
     dialog_I = 80;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez dismissive"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Oh hehehe, actually, I never got to attend that concert...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez dismissive"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh no. Does that mean I helped pay for that?)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez dismissive"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "I'd love to stay and tell you more about it, but I really have to get going.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_100;		 
	 dialog_I++;



     // you gave Not her money previously (day 5)
     dialog_I = 90;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez dismissive"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "Well, I have my ways of finding spare cash.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez dismissive"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Sugar daddies?)", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez dismissive"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "I'd love to stay and tell you more about it, but I really have to get going.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_100;		 
	 dialog_I++;



  	 // tying up here wheather gave or not gave jez mone
     dialog_I = 100;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez dismissive"  , "exit default");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yep, I'm a dead man...", snd_TextScroll_Default );		 
	 dialog_I++;

	#endregion
	
	
	#region picked Nerd
	  dialog_I = 110;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd smiling"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez angry"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "I can't believe this.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd smiling"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez angry"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "jez", "You're choosing robo-nerd over me!?", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd smiling"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez angry"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Somehow, I actually feel really good about this choice.)", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nerd default"  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "jez angry"  , "exit default");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "Oh wonderful. Now, where were we?", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_NerdStory_Day9;	 
	 dialog_I++;	 




     /////////// stories again!
     #region nerd stories again! 120 - 400, jump 500

	 // story 1
	 dialog_I = 120;
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The history of guns is a long and fascinating one, dating back centuries. It all started in China, around the 9th century, with the invention of gunpowder.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The first recorded use of gunpowder in warfare was in China in the 9th century, where they used bamboo tubes filled with gunpowder and a projectile to create what was called a fire lance. ", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In the book, The Art of War, written by Sun Tzu, mentions the use of a device called a fire lancer, which was essentially a tube filled with gunpowder and a projectile.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It was the first recorded use of gunpowder in warfare. From there, gunpowder weapons spread to the Middle East and Europe.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In the 14th century, the first handguns were developed in Italy.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "This was when they discovered that a handheld firearm could be created by adding a barrel and a trigger mechanism to the fire lance.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It is written in De Re Militari, written by Italian engineer Roberto Valturio, describes a handheld firearm that used gunpowder to shoot projectiles.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But it wasn't until the 16th century that guns really became widespread.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "That's when the arquebus was developed, which was a long gun that used a matchlock to ignite the gunpowder. ", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The arquebus was a game-changer in warfare because soldiers could now shoot from a distance, which was much safer than getting up close with a sword or spear.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Our local museum has a replica of an arquebus. It's heavy and unwieldy, but it was a significant advancement in the evolution of guns.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The matchlock mechanism was soon replaced by flintlocks, which were more reliable, and then came muskets, which were lighter and more accurate.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "From there, guns continued to evolve, with rifles and other types of firearms being developed.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The Industrial Revolution led to the mass production of firearms, and they became a standard part of military equipment.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "However, the invention of guns also had significant impacts on society.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "hey led to changes in warfare tactics and ultimately played a role in shaping the world as we know it today. ", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The development of guns and the resulting changes in warfare also influenced other aspects of society, such as the rise of nationalism and the development of modern science and technology.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In conclusion, the history of guns is a complex and multifaceted one.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It began with a simple invention in China, and over the centuries, it evolved into the sophisticated firearms we have today.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But it's important to remember that with every technological advancement comes both benefits and drawbacks, and guns are no exception.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "And that, my friends, is the history of guns in a nutshell.", snd_TextScroll_Nerd );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_500;	 
	 dialog_I++;

	 



     /// story 2 History of Video Games
	 dialog_I = 200;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The history of video games is a fascinating one.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It all began in the early 1950s when computer scientists started experimenting with ways to use computers for entertainment.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In the book, Computer Lib/Dream Machines, written by Ted Nelson in 1974, describes the earliest examples of computer games.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "They were simple text-based games that ran on mainframe computers and were played using punch cards.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But it wasn't until the late 1960s and early 1970s that video games really took off.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In 1967, a group of engineers at MIT created a game called Spacewar!", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It was the first video game to be played on a computer, and it paved the way for the industry we know today.", snd_TextScroll_Nerd );	 	
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The Magnavox Odyssey was the first true home video game console.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It was released in 1972 and came with several games, including a tennis game that could be played on a TV set.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "From there, video games continued to evolve.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In the late 1970s, the Atari 2600 was released, which allowed gamers to play a variety of games on their home TVs.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "This was the beginning of home consoles, as you well know to be a dubious cause of the downfall of the modern arcades.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Of course we all know about Censored for Copyright so We Don't Get Sued one of the most popular and influential video games of all time.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It was released in 1985 and helped establish a certain famous console developer as a dominant player in the industry.", snd_TextScroll_Nerd );	 	
	 dialog_I++;	 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But video games didn't just revolutionize entertainment. ", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "hey are still having an impact on technology, as the need for faster and more powerful computers leads to advances in computing hardware and software.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In conclusion, the history of video games is a long and varied one, with many different players and innovations along the way.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "From the early days of punch cards to the modern era, video games have always been at the forefront of technological advancement.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "And that, my friend, is the history of video games in a nutshell.", snd_TextScroll_Nerd );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_500;	 
	 dialog_I++;
	 
	 

     /// story 3 - History of Our City
	 dialog_I = 300;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It all began in the 1920s, when the city was in its heyday as the epicenter of the automotive industry.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The city was thriving with manufacturing plants, but as the decades progressed, social and economic disparities began to take hold, giving way to an inexorable decline.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "By the 1960s, the city was plagued by urban decay and was fraught with unbridled corruption.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Political malfeasance and avarice had penetrated deep into the bureaucratic fabric, stifling any hopes of substantive reform.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "This left the city's populace mired in dire straits, with a marked paucity of educational and employment opportunities.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But this was only the beginning.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In the 1970s, the candle industry, our great city's lifeblood, was severely impacted by a confluence of factors, including subpar management, foreign competition, and the skyrocketing cost of raw materials.", snd_TextScroll_Nerd );	 	
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The city's economy suffered a devastating blow, and its social ills were amplified.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Then, in the summer of 1983, the city was wracked by a series of riots, sparked by mounting frustrations stemming from poverty, crime, and police brutality.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The protests quickly devolved into anarchic chaos, and the city was plunged into a state of profound disarray.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The city's infrastructure crumbled, and basic necessities such as clean water and medical care were all but inaccessible.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The economy had reached a point of no return, and the city's social fabric was frayed beyond repair.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "he once-great city had fallen into a bleak and intractable morass, serving as a cautionary tale of the pitfalls of institutional corruption and economic neglect.", snd_TextScroll_Nerd );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_500;		 
	 dialog_I++;	 

	 

     /// story 4 - A Medical Diagnosis
	 dialog_I = 400;
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "I stand before you today with an exciting breakthrough in the field of medical research.", snd_TextScroll_Nerd );	 	
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Through countless hours of experimentation, I have discovered that certain exotic mushrooms possess potent anti-inflammatory and anti-microbial properties.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Those can be used to treat a rare and debilitating medical condition that affects the feet.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The condition I speak of is known as Pedal Malanoidosis, a complex and enigmatic disorder that causes severe discoloration and inflammation of the feet.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "A disease that my grandmother has unfortunately suffered from for years.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "It is a disorder that has confounded medical professionals for years, with little progress made in understanding its causes or developing effective treatments.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But through careful study and experimentation, I have uncovered a potential cure for this troubling disorder.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The key lies in the spores of two particular types of mushrooms - Cordyceps Sinensis and Grifola Frondosa.", snd_TextScroll_Nerd );	 	
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "These mushrooms, with their unique properties and potent anti-inflammatory and anti-microbial agents, have shown remarkable promise in treating Pedal Malanoidosis.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The process by which these mushrooms are used is simple but effective.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "First, the affected area is thoroughly cleaned and dried.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Then, a paste is created by grinding the mushrooms into a fine powder and adding water.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The paste is then applied to the affected area and left to dry for several hours.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "This process is repeated twice a day for seven days.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The results have been nothing short of remarkable.", snd_TextScroll_Nerd );	 	
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In all of my trials, the application of the mushroom paste has led to significant reductions in inflammation and pain associated with Pedal Malanoidosis.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The patient who received this treatment - my grandmother of course - has experienced a marked improvement in their ability to move and walk.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "And many have reported a complete recovery from the disorder.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But while these results are certainly encouraging, I must not become complacent.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Further studies are needed to fully understand the mechanisms by which these mushrooms work and to ensure their safety and efficacy.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "I must also continue to explore the medicinal properties of other exotic mushrooms, which may hold the key to curing other debilitating disorders that currently elude medical science.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "In conclusion, the discovery of the potential cure for Pedal Malanoidosis is an exciting development that holds enormous promise for the medical community and my grandmother in particular.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "The study of exotic mushrooms and their medicinal properties is an ongoing process, one that requires continued dedication and research to unlock its full potential.", snd_TextScroll_Nerd );	 	
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "But with trial and commitment, I am confident that I can continue to make groundbreaking discoveries that improve the health and well-being of people around the world, but mostly my grandmother.", snd_TextScroll_Nerd );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_500;	 
	 dialog_I++;	

	 
	 
	 #endregion   /// end of nerd stories	 	 
     
	 // after stories are over tie in here 500
	 dialog_I = 500;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd shocked"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "Yikes!", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "nerd", "I just remembered I have a meeting in 30 minutes with my fellow FAP'ers. See you next time!", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "nerd default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT",  "(No matter what I do, this place attracts the oddest of the odd.)", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,2, "nothing"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT",  "(I've got the nerd, Jez, a wacky foreign actor, those god awful twins...)", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	


    #endregion

	#region clown 503

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "HONK HONK", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Hiyaa buck'o!", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT",  "(And this fucking clown...)", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "If it isn't Boom Boom the clown.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "It's BAM BAM and you know it!", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Aren't you supposed to have a sense of humor?", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Ha, good one I suppose...", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Should I just ask what you yoinked this time?", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Down to business today I see.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "I've heard enough talking already today. Not your fault, but I think we both know the deal at this point.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Alright then. If you would please, take this Triple Barrel off my hands and keep it out of... you know who's hands.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Oh my. You got this from that officer?", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Yes. He had just finished being part of a raid. For some reason, they put this in his squad car.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Let me guess. You witnessed the whole thing and had to be the hero that kept the city safe.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "You're catching on!", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Tell you what, if you make me laugh, I'll take that off your hands.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Deal!", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Ok, let's hear a joke. I'll even give you three chances.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Two peanuts walk into a bar. One was a salted!", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "...", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Get it!? Assaulted...", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "...", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Ok, I know you're laughing on the inside, so here's another good one...", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "A pirate walks into a bar with a steering wheel in his pants. The bartender looks over and says: hey buddy, you know you got a steering wheel in your pants?", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "The pirate says aye, it's drivin' me nuts!”", snd_TextScroll_Nerd );	 		 
	 dialog_I++;		 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "...", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Ok, ok... One more try! What do you call a cow that's also a knight?", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "???", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Sirloin!!", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "...", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Tell me one of those made you laugh?", snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "....", snd_TextScroll_Nerd );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Clown_TakeGun_Day9;		 	 
	 dialog_I++;	 


     // if you take the gun, jokes were good or you dont care
	 dialog_I = 550;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Haha! I knew it! It had to be the peanut joke. ", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "That one's my favorite.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Sure...", snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Here's your weapon. As always, please do the city a favor and keep it out of the wrong hands.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player",  "Of course.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Toodles!", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown default"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT",  "(Ugh...) Toodles.", snd_TextScroll_Nerd );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_580;		 
	 dialog_I++;
	 
     // if NOT you take the gun, jokes were good or you dont care
	 dialog_I = 560;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown angry"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Dammit. Off to the river I suppose.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown angry"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "clown",  "Maybe I'll drown my sorrow too after that miserable performance.", snd_TextScroll_Nerd );	 		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, "clown angry"  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT",  "(Oh wow. Maybe I should have at least pretended to laugh.)", snd_TextScroll_Nerd );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_580;	 
	 dialog_I++;




	#endregion

	#region shadow delivering final stock
	 dialog_I = 580;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT",  "(Now that that's over, I feel like a snack.)", snd_TextScroll_Nerd );		 
	 dialog_I++;	
	 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_600;		 
	 dialog_I++;
	 //////////////////////////////////


	 dialog_I = 600; 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "enter shadow");
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "You ready for the final stock?", snd_TextScroll_Default );	 
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "DAMMIT MAN!", snd_TextScroll_Default );	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Try just walking up and saying 'hello' for once.", snd_TextScroll_Default );	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "No.", snd_TextScroll_Default );	 
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ugh, yes, please let's get this place filled to the brim.", snd_TextScroll_Default );	 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Your brother decided to basically rob me of a lot of money yesterday and it feels like I'm starting all over.", snd_TextScroll_Default );	 
	 dialog_I++; 	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Did he really?", snd_TextScroll_Default );	 
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yep. All because he got himself in trouble in Vegas.", snd_TextScroll_Default );	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "That idiot. Let's get you some goods then.", snd_TextScroll_Default );	 
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Sweet. What is it this time?", snd_TextScroll_Default );	 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "These are all toys for big boys. No messing around now.", snd_TextScroll_Default );	 
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "At this point, I guess if I have any chance of making ends meat I can't really worry about the safety of anyone else, can I?", snd_TextScroll_Default );	 
	 dialog_I++; 	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Did you to begin with?", snd_TextScroll_Default );	 
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Of course...", snd_TextScroll_Default );	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Sure you did.", snd_TextScroll_Default );	 
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "shadow", "Look. I've got some big plans in the works so just make the sales and get me my cut.", snd_TextScroll_Default );	 
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Some days I can't tell him from his brother.)", snd_TextScroll_Default );	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "shadow default"  , "exit shadow");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Will do. Hey, are these two supposed to be one gun, or two?", snd_TextScroll_Default );	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Shadow?", snd_TextScroll_Default );	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(This guy...)", snd_TextScroll_Default );	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(And how the hell did he get all of this stuff in here so fast. There's even a CANNON sitting on the floor.)", snd_TextScroll_Default );	 	 
	 dialog_I++; 

	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_640;		 
	 dialog_I++;
	 //////////////////////////////////
     
	 
	 
	 #endregion

	#region granny want to buy a canon if you didn't refuse or botched it, eat macaroon and instant sale + tip
     dialog_I = 640;
     
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Hello child.", snd_TextScroll_Default );	 
	 dialog_I++; 	
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh Granny!", snd_TextScroll_Default );	 
	 dialog_I++; 	

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Did I startle you?", snd_TextScroll_Default );	 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Sorry, I just wasn't paying attention to see you come in.", snd_TextScroll_Default );	 
	 dialog_I++; 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(At least someone showed up that wants to buy something.)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Granny_AteMacaroons_Day9;			 
	 dialog_I++; 	 
 
 
     // if yes, ate at least one time 
     dialog_I = 650;	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Please tell me you have some of those delicious macaroons of yours.", snd_TextScroll_Default );	 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Oh my, of course I do. Would you like one?", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Granny_EatMacaroonDay9;		 
	 dialog_I++; 

     // if not, ate at least one time, last chance to get high 
     dialog_I = 660;
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I made a new batch of macaroons just for you. I used caramel this time.", snd_TextScroll_Default );	 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, I see.", snd_TextScroll_Default );	 
	 dialog_I++; 	 
	 


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Would you like one?", snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Granny_EatMacaroonDay9;			 
	 dialog_I++; 


     // tie together again ->
	 // you refuse another/first macaroon
     dialog_I = 670;
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "That's quite alright. I see you have a lot of new things in stock.", snd_TextScroll_Default );	 			 
	 dialog_I++; 


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yep, they're hot... I mean, they're brand new. I promise everything is above the table here.", snd_TextScroll_Default );	 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "More like on the table. You need to clean this place up.", snd_TextScroll_Default );	 			 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Maybe you want to take something with you? It's that much less I have to clean.", snd_TextScroll_Default );	 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Oh yes of course. I'd love to tell you about this wonderful old pirate movie I watched last night.", snd_TextScroll_Default );	 			 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "But it seems I am short on time today and you have just what it is that I need setting here on the floor.", snd_TextScroll_Default );	 			 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You don't mean that CANNON do you!?", snd_TextScroll_Default );	 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Yes, dear.", snd_TextScroll_Default );	 			 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(She's a brittle old woman. There's no way she can haul that thing out of here.)", snd_TextScroll_Default );	 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "It would be the perfect addition to my nautical room at home.", snd_TextScroll_Default );	 			 
	 dialog_I++; 


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, that's neat. I've always wanted one of those old diving suits.", snd_TextScroll_Default );	 
	 dialog_I++; 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I tell you what, if you sell me that cannon, I'll see if I have some spare things laying around that you can have.", snd_TextScroll_Default );	 			 
	 dialog_I++; 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I could always bring them by later.", snd_TextScroll_Default );	 			 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh boy, how can I turn that deal down!?)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Granny_Day9;
	 dialog_I++; 	 



	// sale!
	 dialog_I = 720;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "You've made an old woman happy! I'll just grab this and be off.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(SHE PICKED IT UP AND CARRIED IT! HOW!?)", snd_TextScroll_Default );		 
	 dialog_I++;

	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_800;		 
	 dialog_I++;
	 //////////////////////////////////



	 dialog_I = 740;	 
	 // refuse!
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3,  "player", "I'm sorry, I just don't, I might just try to keep this for myself.", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3,  "player", "I don't have time for this young man. I suppose you don't need anything from me either.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny angry"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3,  "player", "(Everyone here is so damn stubborn. Can't even talk an old woman out of buying something she can't use, much less move.)", snd_TextScroll_Default );			  	 
	 dialog_I++;

	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_800;		 
	 dialog_I++;
	 //////////////////////////////////





	 dialog_I = 760;	 
	 // mess up!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny angry"  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3,  "player", "Are you sure you wouldn't feel safer with something less heavy?", snd_TextScroll_Default );			  	 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny angry"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I don't have time for this young man. I suppose you don't need anything from me either.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  "granny angry"  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3,  "player", "(Everyone here is so damn stubborn. Can't even talk an old woman out of buying something she can't use, much less move.)", snd_TextScroll_Default );			  	 
	 dialog_I++;

	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_800;		 
	 dialog_I++;
	 //////////////////////////////////
     
	
	//// if macaroon taken, instant sale with no minigame
	 dialog_I = 780;


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Delicious as always!", snd_TextScroll_Default );	 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I noticed last time you had a nap afterwards.", snd_TextScroll_Default );	 			 
	 dialog_I++; 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "I may have made it too sweet. I think you had a sugar crash.", snd_TextScroll_Default );	 			 
	 dialog_I++; 


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That explains it!", snd_TextScroll_Default );	 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "That's why I used the coc... caramel this time.", snd_TextScroll_Default );	 			 
	 dialog_I++; 


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "It tastes wonderful, and I have so much energy already!", snd_TextScroll_Default );	 
	 dialog_I++; 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Good!", snd_TextScroll_Default );	 			 
	 dialog_I++; 

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Now, be a dear and sell me that cannon.", snd_TextScroll_Default );	 			 
	 dialog_I++; 


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That big one over there?", snd_TextScroll_Default );	 
	 dialog_I++; 	 


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Yes, please dear.", snd_TextScroll_Default );	 			 
	 dialog_I++; 


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "IT'S ALL YOURS!", snd_TextScroll_Default );	 
	 dialog_I++; 	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "granny", "Wonderful. You've made an old woman happy! I'll just grab this and be off.", snd_TextScroll_Default );	 			 
	 dialog_I++; 


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(SHE PICKED IT UP AND CARRIED IT! HOW!?)", snd_TextScroll_Default );	 
	 dialog_I++; 	 
	 


    // now tie all together
	 dialog_I = 800;	
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "granny default"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I think I'll go clean something until another customer comes in.)", snd_TextScroll_Default );	 
	 	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_880;	
	 dialog_I++; 	 
	 
	 
	 
	 
	#endregion

   #region if not granny is around -> random sale!

	


		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay9_1_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay9_1_Spr_Default = scr_SetRandomSpr(randomDay9_1_Spr, "default" );
	   var randomDay9_1_Spr_Angry   = scr_SetRandomSpr(randomDay9_1_Spr, "angry" );
    
    var getRandomMiniGameIndexDay9_1  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay9Plus );
	
	randomSaleOverride_Day9_1 = arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay9_1]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////

	// begin random sale 1
	 dialog_I = 810;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay9_1_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay9_1].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay9_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay9_1].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day9;		
	 dialog_I++;
     
	 
	 dialog_I = 820;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay9_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay9_1].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay9_1_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_880;	 
	 dialog_I++;


	 dialog_I = 830;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay9_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay9_1].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay9_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_880;	 	 
	 dialog_I++;


	 dialog_I = 840;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay9_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay9_1].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay9_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_880;	 	 
	 dialog_I++;	
	
	
	
    #endregion // end of random sale 1	   
   
  #region kyle tie in after granny or random sale
 	 dialog_I = 880;   
	 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );		 
	 dialog_I++;
	 //////////////////////////////////  
 
 
     arrayCutscenes[day_I].setSprite(dialog_I, 1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,   1, "kyle", "Boss, are you here?", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "KYLE!!", snd_TextScroll_Default );		 
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Hi boss...", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "How are you doing?", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Kyle_BaughtRandsome_Day9;	 
	 dialog_I++;
	 
	 // if baught randoms for Kyle
	 dialog_I = 890; 	 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Really rested and ready to get back to work.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle smiling"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's great Kyle. I've got most of this place cleaned up but...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "No bossman. I don't mean here.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What? Are you quitting?", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "No way bossman. I just mean I have some other things to tend to and I'd really like your support.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "Ok... What kind of support?");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "I need something really big. I don't want to go into the details.", snd_TextScroll_Default );		 
	 dialog_I++;
 
      arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "And I promise nobody is really in danger, but I need something that packs a punch.", snd_TextScroll_Default );		 
	 dialog_I++;
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", " Eh, what were you thinking of?", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Well, a grenade launcher would do the trick for my operation.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "A GRENADE LAUNCHER!?", snd_TextScroll_Default );		 
	 dialog_I++;
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Bossman, keep it down.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle dismissive"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle, you know these things are all put together with duct tape and super glue, right?", snd_TextScroll_Default );		 
	 dialog_I++;	 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Haha, yeah so I've heard. That's exactly why I need it.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Maybe if you tell me the plan, I'll consider it then.", snd_TextScroll_Default );		 
	 dialog_I++;
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "I really don't want you to know too much because the less you know the safer you are.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "But basically, I've got an in with those nuns now and I'm going to sell it to them.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "When they try to use it at some point, they'll get what's coming to them.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Good grief, I actually like that plan.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Really?", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yeah, they've been a pain in the ass. Maybe this isn't a bad idea after all.", snd_TextScroll_Default );		 
	 dialog_I++;	 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Thanks bossman. So what do you say?", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Kyle_LetBuyGrenadeL_Day9;	 	 
	 dialog_I++;
     
	 // check add costs in if you give it for free to kyle!   99999999999
 
     // if you SELL it to him, lose no money	 
	 dialog_I = 930;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Here ya go Kyle. Make me proud!", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Thanks bossman. Now, can I take you out to dinner? I owe ya one.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's not a bad idea, let me just close up shop.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day9;	 	 
	 dialog_I++;
	 
     // if you GIVE for free it to him, lose money	 
	 dialog_I = 940;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Here ya go Kyle. On the house!", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "WHOA! Thanks bossman. Now, can I take you out to dinner? I owe ya big time.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's not a bad idea, let me just close up shop.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day9;	 	 
	 dialog_I++;
	 
	 
	 
	 ///// if not payed Randsome
	 dialog_I = 950;		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle angry"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "How the hell do you think? You left me to rot. I thought I was a dead man.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle angry"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "But look at you now! Standing here, upright, breathing and all...", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle angry"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Yeah, I guess you didn't notice this nice little scar they left me too.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle angry"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yikes. Well, ladies like a man with a scar, so look at the brightside.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "The bright side. Yeah. The bright side is... I quit.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, um... I guess you don't want to help me finish cleaning today then?", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "You know, I thought Vik was the biggest jerk I'd ever met. Never would have thought it was actually YOU.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", " (Saying I'm worse than Viktor, dick move.)", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle, please don't quit. What can I do to make things right?", snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "You want to make things right do you?", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Absolutely.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Sell me that grenade launcher you got there.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "THE GRENADE LAUNCHER!?", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Can you keep it down ok?", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle, you know these things are all put together with duct tape and super glue, right?", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Yeah, I know your supply is as high quality as your friendship.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Damn Kyle. You don't have to keep insulting me.", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "I really don't care anymore. I have a plan and I need that weapon.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "If you're going to be a jerk about it, maybe I shouldn't care what you do.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Good.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Fine. You can have it.", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Kyle_LetBuyGrenadeL2_Day9;	 	 
	 dialog_I++;
 
 
     // if you SELL it to him, lose no money	 
	 dialog_I = 980;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Here ya go.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Thanks. Oh, and don't count on me ever doing anything for you again. This is goodbye.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(He gets himself in trouble, then he's mad that I don't bail him out, blames me for it all, and he thinks I'm the jerk. Forget him.)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day9;	 		 
	 dialog_I++;

	 
     // if you GIVE for free it to him, lose money	 
	 dialog_I = 990;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Tell ya what, it's on the house.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "Really? You grow a heart all of a sudden?", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I just gave you that for free and you're still taking jabs.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "kyle", "They are well deserved, but I appreciate the gesture.", snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Anyways, this is goodbye. I really am quitting. Take care of yourself.", snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Just like that, he's out of my life. What a shame.)", snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "kyle default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I really shouldn't think about it too much though. Maybe I need to close shop, I don't feel so great.)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day9;	 	 
	 dialog_I++;	 

 

	 
	 
  #endregion 
   
   
  #endregion // end of DAY 9


#region day 10   10 10 10 10

	 day_I    = 9; // day 10
	 dialog_I = 0; // zeiger
 
	  arrayCutscenes[day_I] = new Createcutscene(day_I  , false);  // 

     // split
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "Hu?", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Twins_SoldWeapon_Day10;	 
	 dialog_I++;

	
	#region 10 sold to twins -> news toggle

	// jump to news if sold to twins
	 dialog_I = 10
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(Since Kyle's not here, I think I'll listen to some news.)", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "Breaking news in our area?", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ToggleEffect_NewsON;	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "Last night, two female twins were involved in a standoff with police.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "Sources say they tried to rob a bank, but the weapon they used fell apart during the robbery.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "They barricaded themselves in the bank and spent several hours taking turns trying to break into the vault.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "Witnesses say the two got into a fight over whose fault it was that they had spent an hour trying to open the fridge instead of the vault", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "Suddenly, one threw the other out of a window and yelled “I'ze finna do a power bomb on you” just before being tasered by nearby officers.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "Police say bystanders were harmed.", snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "betty", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ToggleEffect_NewsOFF;		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "Okay...", snd_TextScroll_Default );		  
	 dialog_I++;	 
	 
	 
	#endregion	

     #region random sale 1   30 if sold to wins, because they are stuck in bank

	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_40;		 
	 dialog_I++;
	 //////////////////////////////////


		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay10_1_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay10_1_Spr_Default = scr_SetRandomSpr(randomDay10_1_Spr, "default" );
	   var randomDay10_1_Spr_Angry   = scr_SetRandomSpr(randomDay10_1_Spr, "angry" );
    
    var getRandomMiniGameIndexDay10_1  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay9Plus );
	
	randomSaleOverride_Day10_1 = arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_1]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////

	// begin random sale 1
	 dialog_I = 40;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_1_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_1].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_1].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day10;		
	 dialog_I++;
     
	 
	 dialog_I = 50;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_1_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_1].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_1_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_150;	
	 dialog_I++;


	 dialog_I = 60;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random  ", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_1].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_150;	 	 
	 dialog_I++;


	 dialog_I = 70;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_1_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_1].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_1_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_150;		 	 
	 dialog_I++;	
	
	
	
    #endregion // end of random sale 1	


	#region if NOT sold to twin
	 dialog_I = 100;		

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "enter default");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Don't touch dat remote. Weeze got bidness to talk.", snd_TextScroll_Default );			 	 
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Hey pal, we need a favor and you owes us one.", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "How on earth do I owe you anything?", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Ewweeeee, told you he didn' thank he owed us.", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "You can shut up now. Look pal, we got robbed an if we'd had a weapon, we coulda defended ourselves.", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "It's not my fault you got robbed though.", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Besides, how do I know if I sold you a weapon that you wouldn't have hurt yourselves instead of the robber?", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "If'n you thank we'ze that dumb...", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh, I do...)", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Shut the hell up an' let me talk to the man.", snd_TextScroll_Default );			 	 
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Fine, but youze better be righ' bout dis.", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Look. We don't need a gun, yet. What we need is for you not to sell a gun.", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok, no, I won't sell you a gun.", snd_TextScroll_Default );			 	 
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Not to us, I mean to someone else.", snd_TextScroll_Default );			 	 
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Ok, but I didn't sell to you.", snd_TextScroll_Default );			 	 
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Dammit why'z you gotta make thangs so difficult.", snd_TextScroll_Default );			 	 
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "A guy is gonna come in here in a few minutes, so we don't have long. ", snd_TextScroll_Default );			 	 
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "All's I'm asking is that you don't sell anything to him. Got it?", snd_TextScroll_Default );			 	 
	 dialog_I++;		 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Uhhh, ok... How will I know who it is?", snd_TextScroll_Default );			 	 
	 dialog_I++;		 	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Oh you'll know.", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Just do us a favor and please don't sell to him.", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "Sis weeze gotta go!", snd_TextScroll_Default );			 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "exit default");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "A'ight, let's scram. Remember our deal pal.", snd_TextScroll_Default );			 	 
	 dialog_I++;	
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I didn't agree to this deal. Who the hell is coming in and what kind of trouble are they in?)", snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Oh well. A sale is a sale and those two don't decide my business.)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_150;		 
	 dialog_I++;	 
	 
	#endregion


	#region cop comes in but half half, tie together again
	 dialog_I = 150;	
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	// arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_40;		 
	 dialog_I++;
	 //////////////////////////////////	



     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hey long time no see. Don't tell me you lost something again?", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What the hell is on his face?)", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Yeah I guess so. When there was an audit on a case's evidence, they said a weapon went missing.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "That's not good. Maybe I have the kind you're looking for.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "That's what I'm hoping for. It just doesn't make any sense.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "There were probably a dozen of us on the scene and one of the fellas said he put it in my trunk.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I went straight to the station and, well ok I took a nap in the parking lot.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "But when I woke up, I did my usual vehicle inspection and didn't find anything extra in it.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "That sure is a mystery.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Aint it!? I thought someone must have put it in the wrong car, but nobody else found any extra weapons either.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "So the only thing I can figure is that we got a crooked cop in our department.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Surely not.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I sure hope not mister, but crazier things have happened.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "You're telling me.", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "All I'm needing is to know if you have seen anyone come in here trying to pawn off weapons that aren't coming through what I assume is a completely legitimate supply chain. Correct?", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Oh yes, very legitimate. We just got a new shipment yesterday. Everything came straight from the manufacturers.", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(Oh great, I've never once asked where these things really come from and now I'm sweating bullets.)", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I see. Well, what about anyone trying to pawn weapons?", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_HalfCop_Day10;		 
	 dialog_I++;	 
	 
     
	 // tell no to cop (lie)
	 dialog_I = 190;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Unfortunately not officer. I wish I could help.", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I see. Well, in that case, if you have any run-ins with someone trying to pawn off weapons, you call the station and report it immediately. Understood?", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Oh yes, I wouldn't put my business in jeopardy like that.", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I thought so. Well, gotta be off. Got plenty of work to do. They're issuing us assault rifles today and I don't want to miss out.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(That cannot be good.)", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Later, buck'o.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "(Buck'o? That sounds familiar)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_260;		 
	 dialog_I++;	 
	 
	 
	 // tell yes to cop (tell truth)
	 dialog_I = 200;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "You're not going to believe this, but there was a clown in here trying to sell me a Triple Barrel a few days ago.", snd_TextScroll_Default );		  
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Now don't go pulling my leg.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "No, I'm serious. A real clown...", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "If you think I'm going to believe that a clown snuck around a crime scene, accessed the trunk of my car with all those officers around, and made off with a weapon like that.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Then you're out of your damn mind.", snd_TextScroll_Default );		  
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(Why won't he believe me?)", snd_TextScroll_Default );		  
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "However, the weapon you're describing is the same kind as the one that went missing. ", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I just didn't want to say it to see if you'd mention it on your own. So that tells me someone was in here trying to sell it to you, but you just don't want to admit who it was.", snd_TextScroll_Default );		  
	 dialog_I++;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "I'm not lying officer.", snd_TextScroll_Default );		  
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Do you have the weapon?", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Cop_BaughtGun_Day10;		 
	 dialog_I++;
     


	 dialog_I = 220; // accepted tripple barrel from clown
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Absolutely, it's right here.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Good, glad you're cooperating.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I'll take that off your hands and we'll do a thorough investigation. One of the detectives will be out soon to get a statement.", snd_TextScroll_Default );		  
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Understood, I've got nothing to hide.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_240;	 
	 dialog_I++;


	 dialog_I = 230; // NOT accepted tripple barrel from clown
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "No, I wouldn't take it. If I remember right, he did say he was going to go toss it in the river somewhere.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(SHIT! I just realized, he's going to find all those other guns out there too!)", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Interesting. For your sake, I hope you're telling the truth. We'll have to investigate and see what turns up.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Understood, I've got nothing to hide.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_240;	 	 
	 dialog_I++;
	 

     // jump point tie in with cop, told truth!
	 dialog_I = 240; // 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "Now that we've settled that matter, you better think about this whole clown story you're making up.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "If it turns out you're the one stealing weapons, you're gonna be in a world of hurt.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(This is absolutely bonkers, and why the hell does he have some of that clown's makeup on his face?)", snd_TextScroll_Default );		  
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(If he's sleeping in his car I bet that clown is messing with him now. I hope he never comes back in here again.)", snd_TextScroll_Default );		  
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Nothing to hide at all sir, I'm a law abiding citizen.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "cop", "I sure do hope so. Well, I'm off to get my new tactical weapon. Should be a lot of fun.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "player", "Enjoy. Bye officer.", snd_TextScroll_Default );		  
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, "half cop default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "(Something really strange is going on here and I want nothing to do with it.)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_260;		 
	 dialog_I++;




	
	#endregion

	#region 260 seemingly random sale but is not (not dependend if twins are locked in bank or coming in)
	
	 dialog_I = 260; // 
	 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	// arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_40;		 
	 dialog_I++;
	 //////////////////////////////////		


     arrayCutscenes[day_I].setSprite(dialog_I,1, "not random default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, hello sir, I didn't see you come in. How can I help you?", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     #region "Not" random sale 2   

	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_280;		 
	 dialog_I++;
	 //////////////////////////////////


		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay10_2_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay10_2_Spr_Default = scr_SetRandomSpr(randomDay10_2_Spr, "default" ); // maybe set a unique random
	   var randomDay10_2_Spr_Angry   = scr_SetRandomSpr(randomDay10_2_Spr, "angry" );
    
    var getRandomMiniGameIndexDay10_2  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay9Plus );
	
	randomSaleOverride_Day10_2 = arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_1]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////

	// begin random sale 1
	 dialog_I = 280;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_2_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "not random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_2].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "not random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_2].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day10;		
	 dialog_I++;
     
	 
	 dialog_I = 290;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_2_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "not random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_2].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_2_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "not random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_330;	
	 dialog_I++;


	 dialog_I = 300;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "not random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_2].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "not random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_330;	 	 
	 dialog_I++;


	 dialog_I = 310;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_2_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "not random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_2].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_2_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "not random", randomExitText, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_330;		 	 
	 dialog_I++;	
	
	
	
    #endregion // end of random sale 2	
	
	
	 dialog_I = 330;		 
	 
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Choise_DukeWeather_BothSold_Day10;		 
	 dialog_I++;
	 //////////////////////////////////	 


     #region random sale 3   if not sold to both duke and weather or none


		/////////////////////// auto set random sale  ///////////////////////////////////////
	 var randomDay10_3_Spr = scr_SetRandomNpcSpr(); // pick one of 9, for now
	   var randomDay10_3_Spr_Default = scr_SetRandomSpr(randomDay10_3_Spr, "default" );
	   var randomDay10_3_Spr_Angry   = scr_SetRandomSpr(randomDay10_3_Spr, "angry" );
    
    var getRandomMiniGameIndexDay10_3  = scr_SetRandomMiniGameIndex( arrayRandomMinigameDay9Plus );
	
	randomSaleOverride_Day10_3 = arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_3]; // array for override once instance exist!
	/////////////////////// end auto set random sale  ///////////////////////////////////////

	// begin random sale 3
	 dialog_I = 340;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_3_Spr_Default  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_3].introTextRandom[0], snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_3_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_3].introTextRandom[1], snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale3_Day10;		
	 dialog_I++;
     
	 
	 dialog_I = 350;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_3_Spr_Default  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_3].saleTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_3_Spr_Default  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_480;	
	 dialog_I++;


	 dialog_I = 360;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_3_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random  ", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_3].refuseTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_3_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_480;	 	 
	 dialog_I++;


	 dialog_I = 370;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_3_Spr_Angry  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", arrayRandomMinigameDay9Plus[getRandomMiniGameIndexDay10_3].failTextRandom[0], snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, randomDay10_3_Spr_Angry  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "random", randomExitText, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_480;		 	 
	 dialog_I++;	
	
	
	
    #endregion // end of random sale 3	



	
	#endregion // 


	#region if sold to duke and weather


     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "enter default");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Welcome you two.", snd_TextScroll_Default );		  
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "'ow are you doing?", snd_TextScroll_Default );		  
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Good, I guess. Umm, no offense, but you smell like a cigar lounge today.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "weather", "Yeah, he picked up smoking stogies...", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm guessing you're not thrilled by that?", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "weather", "Well...", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", " Duke, you're lady doesn't seem to be a fan.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Look, vhat iz she going to say? I can smoke stogies whenever and wherever I want, because I'm a stud.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke flex"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "I don't have to find a hidey place to have fun because I'm not a whimp like you, hahahahaha.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke flex"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I'm not sure I've ever hated anyone more.)", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke flex"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "weather", "Don't worry about him, he's gotten a big head because his movie is doing so well.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh, are my, uh, props working out for you?", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Yas! Now I just need something shocking for the next scene.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Anything for the movie star I suppose.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "weather", "Oh yes, and for the newest prime time reporter!", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Does that mean you got your promotion?", snd_TextScroll_Default );		  
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "weather", "Yes! I'm so excited and it's all thanks to you. Your stories were huge!", snd_TextScroll_Default );		  
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's good to know. Are you doing another story on the movie?", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "weather", "Yes, tonight I am covering the current scene being filmed.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's wonderful. So what is it I can provide for the big scene?", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "I vant you to zuprize me. I vant to be shocked.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's not much to go on.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "weather", "The script is really open here. I'm not allowed to know too much, but what I know is there will be a large animal and a lot of danger.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I hope not any real danger, especially if you'll be there reporting.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Don't be a whoosy. I'll keep dat lady safe.", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Of course. Well, let's see what I've got for you.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_DukeWeather_Day10;	 
	 dialog_I++;
	 
	 //// check minisale not set 99999999

	 // sale! 440
	 dialog_I = 440;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Haha, now dis is a veppon.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I hope that thing doesn't actually work.)", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "weather", "Ohhh, this is going to make the story this evening even better. Now, I've got to hurry and go get ready!", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "exit default");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Hey pal, come clos'a, I've got a secret to tell you.", snd_TextScroll_Default );		  
	 dialog_I++;	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "There's nobody else around though...", snd_TextScroll_Default );		  
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "After my big scene, I'm going to propose to her!", snd_TextScroll_Default );		  
	 dialog_I++;	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "That's wonderful Duke, may you two have a long and happy marriage.", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", " (Speaking of marriage, my wife hasn't been in here for a few days. The quiet is almost eerie.)", snd_TextScroll_Default );		  
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Thanks for all your help pal. Pazta rezeezta!", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What's that supposed to mean?", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "It means I'll be zee'ing you again, dummy. Hahahaha!", snd_TextScroll_Default );		  
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Thank goodness that's over.)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_480;		 
	 dialog_I++;
	







	// refuse!
	 dialog_I = 460;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I don't know if I have what you need to be honest.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", " Vhat!? You vant to revuze da Duke!", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "weather", "Calm down hunny. I guess business isn't our friends strong suit. Strange considering all the help he's given us before.", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Ahhh... My movie is going to be ruined.", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "weather", "Let's go, before you get any more upset.", snd_TextScroll_Default );		  
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Go ahead. I have zomezing to tell Mr. Gunzling'a.", snd_TextScroll_Default );		  
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, "weather", "", snd_TextScroll_Default );		  
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, "weather default"  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Great, just me and Duke...)", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "YOU MAROON!", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "(There it is.)", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I vas going to propose tonight. Now, it von't be special.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, "duke", "Duke, I'm really sorry I didn't mean to cause something like that to be an issue.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Screw u man. I von't be zeeing you anymore.", snd_TextScroll_Default );		  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "duke default"     , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I hated doing that, but if he wanted what I think he wanted, he could kill someone even if these things barely work to begin with. I did what had to be done.)", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_480;		
	 dialog_I++;

	 #endregion

	#region if twins are not locked, visit again
	dialog_I = 480;
	
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 //arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Choise_Twins_SoldWeapon2_Day10;		 
	 dialog_I++;
	 //////////////////////////////////	 	

     // twins come again
	 //dialog_I = 480;
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Hey dare mister. You didn' sell to day guy did you?", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I still don't know “which guy” you're talking about.", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "twin1", "He's after my sister. I don' know what'er she done, but he been following her 'round since yesterday.", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "There was a guy in here earlier that I've never seen before, but I see new faces a lot so it's not unusual.", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "If'n you sold to him, we could be in BIG trouble.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Choise_Random_SoldGun_Day10;		 
	 dialog_I++;	 
	 
	 
	 // if sold to "not" random 
     dialog_I = 490

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "There was only the one new face and yes, I did sell to him.", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "exit default");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Shit! That's it, we gotta get outta this town. Thanks for nothin partner.", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
	 
	 // if NOT sold to "not" random 
     dialog_I = 500	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "There was only the one new face, but I didn't sell anything to him.", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "You're the best. I'm so thankful I could kiss ya!", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(PLEASE NO!)", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "But I aint got no time for that. Gotta go get my sis outta the coy pond in the middle of the mall and sneak us outta here.", snd_TextScroll_Default );			 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(That sounds about right.)", snd_TextScroll_Default );			 	 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  2, "twin2", "Later partner. I think this gonna be the last time we see each other, so take care a yourself.", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(I can only hope it's the last time!)", snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "exit default");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Say it isn't so. You take care of yourself too.", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, "twin1 default"  , "");	
     arrayCutscenes[day_I].setSprite(dialog_I,2, "twin2 default"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I think my life just got a lot better.", snd_TextScroll_Default );			 	 
	 dialog_I++;	 
	 
	 
	#region phone call, kyel got caught again
	
	dialog_I = 520;

	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 //arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Choise_Twins_SoldWeapon2_Day10;		 
	 dialog_I++;
	 //////////////////////////////////	


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Hello.", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "Bossman...", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Kyle, how's it going? You take care of your business?", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "They got me again...", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "OH NO!", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "They said they'll let me go if you come speak with them.", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "How much do they want this time?", snd_TextScroll_Default );			 	 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "Nothing. They just want to meet the guy responsible.", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Oh damn, that sounds pretty risky.", snd_TextScroll_Default );			 	 
	 dialog_I++;	 

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "HELP ME! PLEASE!", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "They have you at the same place as last time? Maybe I could swing by real quick.", snd_TextScroll_Default );			 	 
	 dialog_I++;


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "No, they have me across the border. I'm at the Camel of the Infant Convent.", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Holy shit, that's a 14 hour drive one way.", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "I guess this is their HQ. They said if you get here by this time tomorrow, they'll meet with us both then let me go.", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "What about me!?", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "They just want to talk.", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Yeah, I had a friend that went to meet someone that just wanted to talk to him about a car he jacked when we were kids.", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Turns out, talking meant a crow-bar through his teeth.", snd_TextScroll_Default );			 	 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "I don't think they're gonna hurt you, but I know they're gonna hurt me if you don't come.", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "Why wouldn't they just turn around and let you go like last time? I can probably wire them some money.", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "I'm looking at them and they are shaking their heads. I don't think money is going to work this time.", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "Son of a...");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Ok, calm down, think this through. They let him go last time so maybe it's a tactic just to get me to come to them.)", snd_TextScroll_Default );			 	 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(Then again, they know where I work and I'm sure by now they would just come paint the walls with my innards right here.)", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(If they were going to do that, so just maybe I'm safe either way here. The question is, will Kyle be safe?)", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "playerT", "(What to do, what to do...)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Choise_Kyle_SavedPreviously_Day10;		 
	 dialog_I++;
     
	 

     // if saved Kyle before
	 dialog_I = 550;	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "Bossman, what time should I tell them you're gonna be here?", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Choise_KyleSave_Day10;		 
	 dialog_I++;


     // if NOT saved Kyle before
	 dialog_I = 555;	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "What's it gonna be? Are you coming to save me, or did our friendship truly mean nothing?", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Choise_KyleSave_Day10;		 
	 dialog_I++;


     
	 
	 
	 // choice -> save kyle (again)
	 dialog_I = 560;	

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "I'm on my way as soon as I lock up everything here.", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Choise_Kyle_SavedPreviously2_Day10;		 
	 dialog_I++;


     // if  saved before (grumpy)
	 dialog_I = 570;
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "Good...", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_590; 
	 dialog_I++;


     // if not saved before (grumpy)
	 dialog_I = 580;
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "Thanks bossman...", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Dialog_SkipIndex_to_590; 
	 dialog_I++;



      // tie back together
	 dialog_I = 590;	  
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "Click", snd_TextScroll_Default );	
	 dialog_I++;
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "(I sure hope I'm right about this. Better look things over and call the wife to let her know I won't be home.)", snd_TextScroll_Default );			 	 
	 dialog_I++;	
	
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "(Although, I bet she won't even notice I'm gone.)", snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_DayEnd_Day10;  
	 dialog_I++;		
	
	
	
	/// if dont want to save Kyle
	 dialog_I = 600;	
	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "You're gonna be fine Kyle. Call me when they let you go.", snd_TextScroll_Default );			 	 
	 dialog_I++;	

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "...", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "kyle", "Click", snd_TextScroll_Default );	
	 dialog_I++;


	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "(I sure hope I'm right about this.)", snd_TextScroll_Default );			 	 
	 dialog_I++;

	 arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "(Better call it a day in case one of those nuns decides she wants to come pay me a visit before I can get out of here.)", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_DayEnd_Day10;  
	 dialog_I++;

	#endregion 
	 




	#endregion	


  #region 	
	 // fake transition	/////////////////
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Transition_FadeToNextCharacter;		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "player", "", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_Choise_Twins_SoldWeapon2_Day10;		 
	 dialog_I++;
	 //////////////////////////////////	 
  #endregion



#endregion end of day 10


#region day 11  1111111111


	 day_I    = 9; // day 10
	 dialog_I = 0; // zeiger
 
	  arrayCutscenes[day_I] = new Createcutscene(day_I  , false);  // 

     // split
     arrayCutscenes[day_I].setSprite(dialog_I,1, "nothing"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "playerT", "Hu?", snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Twins_SoldWeapon_Day10;	 
	 dialog_I++;

#endregion


#endregion // end of regular days



#region NEWS days 1-12


  
	#region news day 1 NEWS

 day_I    = 101; // day 101 -> news day 1!
 dialog_I = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Thanks for that report Gail. Now, over to our newest member of the team for the weather.", snd_TextScroll_Default );	
	// arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  =	obj_Transition_StartDayFadeIn; // transition from betty to weather girl	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I]  = obj_NewsBgrSwap; // 
	 dialog_I++;	 
	 

     // 3
     arrayCutscenes[day_I].setSprite(dialog_I, 3, "weather smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3, "weather", "Thanks Betty.", snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I, 3, "weather smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3, "weather", "It looks like another hot one today with near record temperatures.", snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "weather smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3, "weather", "I hear we don't have any young folks around anymore but the elderly should certainly take caution out there and definitely stay hydrated.", snd_TextScroll_Default );		 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "weather smiling"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3, "weather", "Back over to you Betty.", snd_TextScroll_Default );		 	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day1_Start;
	 dialog_I++;

#endregion

	#region news day 2 NEWS

 day_I     = 102; // day 102 -> news day 1!
 dialog_I  = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Good morning, I'm Betty Blabbermouth.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Tonight, we will bring you a sobering report on the concerning rise in crime and the alarming presence of rogue cops within our city's police force.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Over the past few months, our city has witnessed a steady increase in criminal activities.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Robberies, burglaries, and violent incidents have become far too common, leaving citizens feeling vulnerable and concerned for their safety.", snd_TextScroll_Default );	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Law enforcement agencies are grappling with the challenge of curbing this crime wave, but there is another troubling aspect that demands our attention.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "In recent weeks, several cases of police misconduct have come to light, involving officers who have betrayed the trust placed in them...", snd_TextScroll_Default );	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "These rogue cops have been caught engaging in corrupt practices, abuse of power, and even criminal behavior.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Such actions erode the faith that communities have in their local police force, making it all the more challenging to build bridges between law enforcement and the public.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "We'll bring you the full story tonight at 9.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day2_Start;	 
	 dialog_I++;




#endregion

	#region news day 3 NEWS

 day_I     = 103; // day 103 -> news day 1!
 dialog_I  = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Hello, I am Betty Blabbermouth.", snd_TextScroll_Default );	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Later today, we will bring you a gripping report on a mysterious and elusive female crime syndicate that has been making waves in our city.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Let's delve into the details of this intriguing story.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Over the past few months, our city has been buzzing with rumors and whispers about a secretive crime syndicate led entirely by women.", snd_TextScroll_Default );	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Operating in the shadows, this group has managed to evade law enforcement while carrying out a series of audacious and meticulously planned criminal activities.", snd_TextScroll_Default );	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Known for their expertise in various illegal enterprises, these women have exhibited remarkable cunning, leaving law enforcement authorities scratching their heads.", snd_TextScroll_Default );	
	 dialog_I++;		 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "From high-profile heists to sophisticated fraud schemes, their criminal repertoire knows no bounds.", snd_TextScroll_Default );	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "One of the most intriguing aspects of this syndicate is its tight-knit nature and the loyalty of its members.", snd_TextScroll_Default );	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Sources suggest that the women involved in this criminal organization have forged strong bonds, operating with precision and trust.", snd_TextScroll_Default );	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Their ability to remain undetected and their willingness to protect their secrets has proven to be a significant challenge for law enforcement agencies.", snd_TextScroll_Default );	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "More on this tonight at 9.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day3_Start;	 	 
	 dialog_I++;
	 


#endregion

	#region news day 4 NEWS

 day_I     = 104; // day 104 -> news day 1!
 dialog_I  = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Good morning, I'm Betty Blabbermouth.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "It has come to light that an arcade in our city recently began operating under a unique premise, selling weapons alongside its usual array of games and entertainment.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "GUNCADE, a popular arcade in our city, was discovered to be involved in the sale of weapons.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "What was once considered a family-friendly establishment has now been exposed as a hub for quasi-legal activities.", snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Where dangerous, albeit seemingly poorly constructed, weapons are exchanged for prices that most cannot afford.", snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "The question remains whether law enforcement will act on the distribution of firearms, knives, and other potentially lethal weapons.", snd_TextScroll_Default );	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Since the recent overthrow of the cities government and the loss of most judicial processes.", snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "This discovery has sent shockwaves through the community and raised serious questions about the safety and integrity of such establishments.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Tonight, our newest anchor will dive into the details of this alarming situation.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day4_Start;	 	 
	 dialog_I++;



#endregion

	#region news day 5 NEWS

 day_I     = 105; // day 105 -> news day 1!
 dialog_I  = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Betty Blabbermouth here to tell you about some disturbing news.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "The community is gripped with growing concern as the number of missing persons cases sees a troubling increase.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Local authorities are facing a challenging task as they strive to locate and ensure the safe return of those who have gone missing.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "According to the latest data, there has been a significant surge in reported missing persons cases.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Families and friends are anxiously awaiting news about their loved ones, and the community as a whole is rallying together to support those affected.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Law enforcement agencies are actively investigating the root causes behind this distressing trend.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Community organizations and concerned citizens have joined forces to raise awareness about the issue and provide support to affected families.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Vigils, awareness campaigns, and volunteer search parties are being organized to bolster efforts in finding the missing persons and offer comfort to their loved ones during this trying time.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day5_Start;		 
	 dialog_I++;


#endregion

	#region news day 6 NEWS

 day_I     = 106; // day 106 -> news day 1!
 dialog_I  = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Good morning, I'm Better Blabbermouth.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Today's top story, the city is abuzz with anticipation as production for a thrilling new action movie kicks off, promising adrenaline-pumping scenes and gripping storylines.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Film enthusiasts and locals alike are eagerly awaiting the release of this highly anticipated cinematic experience.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "The yet-to-be-titled action film is said to boast a potential all-star for future movies that apparently has out of this world muscles.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Who is this mysterious actor, and what does he look like? Ladies like me are dying to know!", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "The project is set to showcase cutting-edge stunts, explosive action sequences, and heart-pounding thrills that are sure to captivate audiences worldwide.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "With filming officially underway, the city has transformed into a bustling backdrop for the production.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Iconic landmarks and local neighborhoods have become the stage for high-octane chase scenes, daring stunts, and intense combat sequences.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "The film's production team stated they have collaborated closely with local authorities to ensure minimal safety standards and maximum disruption to residents during the filming process so as to make the movie as real as possible.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Special effects crews, stunt coordinators, and a dedicated crew of semi-professionals have converged on the city, working tirelessly to bring this action-packed vision to life.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "As news of the movie spreads, fans and onlookers have flocked to shooting locations, hoping to catch a glimpse of the mysterious new actor.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day6_Start;		 
	 dialog_I++;

	 

#endregion

	#region news day 7 NEWS

 day_I     = 107; // day 107 -> news day 1!
 dialog_I  = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Betty Blabbermouth here to tell you of an interesting find by one of our reporters.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Frustration is mounting among a significant number of housewives in the local area who feel their vital contributions to their families and society often go unnoticed and unappreciated.", snd_TextScroll_Default );	
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "These women, who take on the multifaceted role of managing households and supporting their partners, are seeking recognition and support for the valuable work they do.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Many housewives express a sense of being taken for granted and undervalued, despite shouldering numerous responsibilities and dedicating their time and energy to maintaining the well-being of their household.", snd_TextScroll_Default );	
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "The constant juggling act of domestic chores and managing household finances can often leave them feeling overwhelmed and emotionally drained.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Several housewives have spoken out about the need for society to acknowledge and respect their role, emphasizing that their contributions are crucial to the smooth functioning of households and the overall fabric of society.", snd_TextScroll_Default );	
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "They highlight the immense mental and emotional labor involved in their daily routines, which often goes unnoticed or undervalued.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "In addition to managing the household, many housewives also face challenges in pursuing personal growth, career aspirations, or financial independence.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Some feel a lack of support from their partners or society in striking a balance between their domestic responsibilities and their individual goals and ambitions.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Tonight, a full report on the story and information on how housewives' partners can do more to acknowledge and support their better half.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day7_Start;		 
	 dialog_I++;	



	 

#endregion

	#region news day 8 NEWS

 day_I     = 108; // day 108 -> news day 1!
 dialog_I  = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "A sudden and unimaginable cold front has descended upon our city, catching residents off guard and causing a dramatic drop in temperatures.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "For a city that has never been cooler than 60 degrees this time of year, the unusual weather event has brought a wintry chill to the region, leaving locals bundled up and searching for their winter attire.", snd_TextScroll_Default );	
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Meteorologists had not forecasted the arrival of this unexpected cold front, which swiftly swept across the area overnight.", snd_TextScroll_Default );	
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Temperatures plummeted by 30  degrees, plunging the city into an unseasonably frosty state.", snd_TextScroll_Default );	
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "The sudden change in weather has left many perplexed and seeking ways to stay warm.", snd_TextScroll_Default );	
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Residents woke up to a scene reminiscent of winter, with frost-covered surfaces, cold wind gusts, and even reports of light snowfall in some parts of the city.", snd_TextScroll_Default );	
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Commuters navigated slippery roads and sidewalks, while schools and local authorities issued warnings and advisories regarding the chilly conditions.", snd_TextScroll_Default );	
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "The good news is that our weather staff was unable to make it in due to the road conditions.", snd_TextScroll_Default );	
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Fortunately for everyone watching me right now, I sleep with the... I mean sleep in the studio to ensure I am always ready to present the news, so you will get even more of me today!", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day8_Start;			 
	 dialog_I++;	
	 

#endregion

	#region news day 9 NEWS

 day_I     = 109; // day 109 -> news day 1!
 dialog_I  = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Betty Blabbermouth here to report today's top news.", snd_TextScroll_Default );	
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "A sharp increase in crime rates continues to send shockwaves through the community, raising concerns about public safety and urging authorities to take immediate action.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Local law enforcement agencies are grappling with the alarming spike, as citizens demand stronger measures to combat the growing menace.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Statistics released by the Police Department reveal a disturbing upward trend in criminal activities across various categories.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Violent crimes, including assaults and robberies, have witnessed a significant surge of approximately 400% over the past week.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Additionally, property crimes, such as burglaries and thefts, have also seen a worrisome rise.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "The reasons behind this surge in criminal activities remain under investigation.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "But preliminary analysis points to several contributing factors, namely a sharp increase in weapons finding their way into the city.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day9_Start;		 
	 dialog_I++;
  

#endregion

	#region news day 10 NEWS

 day_I     = 110; // day 110 -> news day 1!
 dialog_I  = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Betty Blabbermouth here to bring you today's top news.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Apparently the powers that be in the news industry don't know good reporting from their own asses.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Things are definitely looking bleak in the news world if current trends continue.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "One can only hope that the true professional reports in this world are saved from the lustful and ignorant desires of foolish men.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "I mean, what other reason could there be to consider changing reporters when the current cast is both amazing at their jobs and stunningly gorgeous?", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Now, it appears I am being told we need to rush over to a less important topic.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Here with the weather is Harlot Horseface…", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day10_Start;		 
	 dialog_I++;	 

#endregion

	#region news day 11 NEWS

 day_I     = 111; // day 110 -> news day 1!
 dialog_I  = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "harry default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "harry", "Good morning, I'm Harry Hasbeen, our long time morning reporter, Betty Blabbermouth, was reported missing last night.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "harry default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "harry", "I was told we must ask anyone in the community with information on her disappearance or possible whereabouts to please contact local authorities.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "harry default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "harry", "Now, onto important matters of the day, our news station is considering tryouts for new reporters.", snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "harry default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "harry", "While some strong candidates exist, the station needs to make sure there aren't any more well endowed candidates in the community.", snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "harry default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "harry", "Oh wait, I'm being told we are looking for well experienced candidates. I'm not sure how that's better, but what do I know...", snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day11_Start;			 
	 dialog_I++;

#endregion

	#region news day 12 NEWS

 day_I     = 112; // day 112 -> news day 1!
 dialog_I  = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Good morning to my loyal fans, Betty Blabbermouth here.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "I want to apologize to everyone for my brief disappearance.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "I know the station received thousands of calls while I was away, and who can blame the community for being so concerned when a beautiful woman like me goes missing.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Now, onto the morning's top story, a gorgeous local news reporter survived the night in the clutches of a female convent.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "You guessed it, the top story is about me! Tonight I will interview myself and give you all the gory details.", snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "The second story of the day, our weather girl had to take the day off for some bogus family business.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "I will give you a full report and provide my adoring audience the information on what could possibly be wrong with her.", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day12_Start;		 
	 dialog_I++;	 

#endregion

	#region news day 13 NEWS

 day_I     = 113; // day 113 -> news day 1!
 dialog_I  = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I  , true);  // 


     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Betty Blabbermouth here.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "It appears the entire news industry has gone to shit.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "I will now only be a morning reporter, so all of the good news will only come once a day.", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   1,  "???", "For the last time, report the damn news or you're fired!", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   3,  "betty", "Go to hell Ron, I'm the one people want to see, not that WHORE you're in love with!", snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I, 3, "betty default"  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,   1,  "???", "That's it, cut to the feed...", snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_Day13_Start;			 
	 dialog_I++;	 

 

 

#endregion



#endregion // end of NEWS days

//////////////////////////////////////////////
#region override values -> saved stuff

 var arrayPlayListBoolL = array_length(playListSongActiveBools);
ini_open("data.bob");
 volume_Master =  ini_read_real("settings", "master volume", 0.6);
 volume_Sfx    =  ini_read_real("settings", "volume sfx",    0.85);  
 volume_Music  =  ini_read_real("settings", "volume music",  0.3);  

 screenScale   =  ini_read_real("settings", "scale",      2);
 fullscreen    =  ini_read_real("settings", "fullscreen", 0);
 
  firstTimeAllSet  =  ini_read_real("settings", "first time set",      0);

 // income

 //cashSumOnDay           = ini_read_real("income", "day",         0);


// get day to jump to -> important! progress values
currentCutscene_DAY     =  ini_read_real("progress", "day to jump to",      101); // default jump to news day 1!
cashTotalInSave_Office  =  ini_read_real("progress", "income office",      0);
 //cashSumOnDay           = ini_read_real("income", "day",         0);



// props baught!
var arrayPropsL = array_length( obj_Control_All.array_OfficeProp);
var arrayProps_I = 0;
repeat( arrayPropsL ) {
  obj_Control_All.array_OfficeProp[arrayProps_I].prop_isUnlocked = ini_read_real("props office baught", obj_Control_All.array_OfficeProp[arrayProps_I].prop_Name,  false );
  arrayProps_I++;
}





// end of progress values

 if( firstTimeAllSet == 0){
	 var defaultSetPlaylist = 0;
	 	 repeat(30){
			 playListSongActiveBools[defaultSetPlaylist] = defaultSetPlaylist;
			 defaultSetPlaylist++;
		 }
 }
 
 
 // if already set, take over!
 if( firstTimeAllSet == 1){
 // playlist!
 var defaultPlaylist = 0; // default no song!
 
 var playlistBool_I = 0;
	 repeat(arrayPlayListL){
	 playListSongActiveBools[playlistBool_I] = ini_read_real("playlist", playlistBool_I, defaultPlaylist); 		
	 playlistBool_I++;
	 }
 } 



// choices saved

acceptClownBatton_Day_2        = ini_read_real("choice day 2", "clown take weapon", 0);
acceptCopRebuyBatton_Day_2     = ini_read_real("choice day 2", "cop rebuy weapon" , 0 );
wifePresentGivenDay2           = ini_read_real("choice day 2", "wife buy flowers" , 0 );


 nunChoise_Day3                = ini_read_real("choice day 3", "nun give ransom", 0);
 nerdChoise_4Topics_Day3       = ini_read_real("choice day 3", "nerd pick topic", 0);
 soldToWeather_Day3            = ini_read_real("choice day 3", "weather sold weapon", 0 );

 grannyChoise_Day4             = ini_read_real("choice day 4", "eat macaron first try", 0);
 grannyChoise2_Day4            = ini_read_real("choice day 4", "eat macaron second try", 0);
 kyleChoise_Day4               = ini_read_real("choice day 4", "kyle sell first weapon", 0 );  
 wifeGivenPresentD4_day5       = ini_read_real("choice day 4", "wife baught flowers", 0 ); // auto
 soldToTwins_Day4              = ini_read_real("choice day 4", "twins sell weapons", 0);  

 acceptClownGun_Day_5          = ini_read_real("choice day 5", "clown take weapon", 0 );
 copGivePistol_Day_5           = ini_read_real("choice day 5", "cop rebuy weapon" , 0 );
 giveJezMoney_Day_5            = ini_read_real("choice day 5", "jez give money"   , 0  );
 jezOrNerd_Day_5               = ini_read_string("choice day 5", "jez or nerd ditch", "jez"  );  
 soldTwins_Day_4               = ini_read_real("choice day 5", "twins sold weapons", 0 ); // auto 
 payKyleRansome_Day_5          = ini_read_real("choice day 5", "kyle pay ransome", 0 );  
  
 eatMacaronGranny1_Day_6       = ini_read_real("choice day 6", "eat macaron"  , 0);  
 eatMacaronGranny2_Day_6       = ini_read_real("choice day 6", "eat macaron 2", 0);    
 soldToDuke_Day6               = ini_read_real("choice day 6", "duke sold gun" , 0);  
 grannyAutoBuy_Day6            = ini_read_real("choice day 6", "granny auto buy" , 0 );   
 
 soldToTwinds_Day7             = ini_read_real("choice day 7", "twins sold gun"  , 0);  
 giveKyle_Gun2_Day_7           = ini_read_real("choice day 7", "klye sell gun"  , 0); 
 payKyleRansomeThisTime_Day_7  = ini_read_real("choice day 7", "klye pay ransom second chance"  , 0); 
 autoSale_kyleWeapon_Day_7     = ini_read_real("choice day 7", "klye auto sale gun"  , 0); 

 soldToDuke_Day8               = ini_read_real("choice day 8", "duke sold gun"     , 0); 
 soldToWeather_Day8            = ini_read_real("choice day 8", "weather sold gun"  , 0); 

 takeGunClown_Day9             = ini_read_real("choice day 9", "clown take gun"  , 0); 
 sellGiveKyleWeapon_Day9       = ini_read_real("choice day 9", "kyle sell or give gun"  , 0); 

 tellHalfCopTruth_Day10        = ini_read_real("choice day 10", "cop tell truth with dealing with clown"  , 0); 
 soldToNotRandom_Day10         = ini_read_real("choice day 10", "not random sold gun"  , 0); 
 payKyleRansome_Day_10         = ini_read_real("choice day 10", "kyle pay 2nd ransom"  , 0); 

 

 
ini_close();


// fill up actual playlist!

 var playlistSET_I = 0;
 var togglethroughAll_I = 0;
	repeat( arrayPlayListBoolL ){

		if( playListSongActiveBools[togglethroughAll_I] != -999){
		    arraySongsPlaylist[playlistSET_I] =  arraySongs[ playListSongActiveBools[togglethroughAll_I] ].songSnd;
			playlistSET_I++; }
		
			togglethroughAll_I++;
	}



/// apply if needed
if(fullscreen == 1){ window_set_fullscreen(1);  }

// apply
audio_master_gain( volume_Master );
audio_group_set_gain( audiogroup_SFX,    volume_Sfx, 0 );
audio_group_set_gain( audiogroup_Music,  volume_Music, 0 );



#endregion