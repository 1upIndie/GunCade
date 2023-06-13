/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
debug = true;

roomToJump = Room_Workspace;
roomToJump = room_Debug;


room_goto(roomToJump);



#region weapon texts + costs

static_Money_Tip = 50; // for perfect sale

function weaponCreate()constructor {
 
  weaponIndex       = 0;
  nameWeapon        = "";
  weaponSpr         = spr_Nothing;
  
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
  
}

array_DetailWeaponText = array_create(0);


//fill up with empty ones
var fill_I = 0;
repeat(100){
array_DetailWeaponText[fill_I] = new weaponCreate();
fill_I++;
}


      // melee 0-10 pistols 10-20, rifles 20-30,  smg 30-40, shotgun 40-50, ar, 50-60, exotic 60-70, attachment 70-80	
var txtDetail_I = 0;
      array_DetailWeaponText[txtDetail_I].fill_In("melee 1", spr_MiniGame_Melee_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "melee 1"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("melee 2", spr_MiniGame_Melee_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "melee 1"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("melee 3", spr_MiniGame_Melee_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "melee 3"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  	  




txtDetail_I = 10;
      array_DetailWeaponText[txtDetail_I].fill_In("pistol 1", spr_MiniGame_Pistol_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Small pistol"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("pistol 2", spr_MiniGame_Pistol_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Big pistol"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 2000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("pistol 3", spr_MiniGame_Pistol_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Other pistol"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 3000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  



txtDetail_I = 20;
      array_DetailWeaponText[txtDetail_I].fill_In("rifle 1", spr_MiniGame_Rifle_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Bolt action"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("rifle 2", spr_MiniGame_Rifle_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Sniper rifle"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("rifle 3", spr_MiniGame_Pistol_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Winchester"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  




txtDetail_I = 30;
      array_DetailWeaponText[txtDetail_I].fill_In("smg 1", spr_MiniGame_Smg_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Woozie"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("smg 2", spr_MiniGame_Smg_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Smg 2"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("smg 3", spr_MiniGame_Smg_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Tummy gun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  


txtDetail_I = 40;
      array_DetailWeaponText[txtDetail_I].fill_In("shotgun 1", spr_MiniGame_Shotgun_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Sawed off"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("shotgun 2", spr_MiniGame_Shotgun_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Tactical shotgun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("shotgun 3", spr_MiniGame_Shotgun_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "tripple shotgun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++; 



txtDetail_I = 50;
      array_DetailWeaponText[txtDetail_I].fill_In("ar 1", spr_MiniGame_Ar_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "M 16"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("ar 2", spr_MiniGame_Ar_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "French ar"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("ar 3", spr_MiniGame_Ar_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Ak 47"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;



txtDetail_I = 60;  // exotics
      array_DetailWeaponText[txtDetail_I].fill_In("exotic 1", spr_MiniGame_Ar_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "M 16"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("exotic 2", spr_MiniGame_Ar_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "French ar"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("exotic 3", spr_MiniGame_Ar_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Ak 47"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;


txtDetail_I = 70;
      array_DetailWeaponText[txtDetail_I].fill_In("attachment laser", spr_MiniGame_Attachment_LaserPointer, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Laser pointer"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;	  


      array_DetailWeaponText[txtDetail_I].fill_In("attachment muzzle", spr_MiniGame_Attachment_Muzzle, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Muzzle"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;	  

	  
      array_DetailWeaponText[txtDetail_I].fill_In("attachment optics", spr_MiniGame_Attachment_Optics, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Optics"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;	  


      array_DetailWeaponText[txtDetail_I].fill_In("attachment scope", spr_MiniGame_Attachment_Scope, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Scope"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;	  


      array_DetailWeaponText[txtDetail_I].fill_In("attachment stock", spr_MiniGame_Attachment_Stock, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Stock"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  

	  
	  
	  
	  
#endregion

#region particle collection!

garbageCollect_Particles_Index = 0;
garbageCollect_Particles       = array_create(0);

#endregion



#region text prefix/suffixes
 textPrefix    = "[font_Cutscene][scale, 0.8][c_white]"; // default for all 
 //textSuffixDialog    = "[/scale][/c]"; 
 textSuffixDialogAll = "[/scale][/c]"; 
 
 
 textPrefixPlayer = "[font_Cutscene][scale, 0.8][#F9CE7B]";
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

 text_Name_Unknown    = "[font_Cutscene_Name][scale, 0.7][c_white]???[/c][/scale]";
 text_Name_Nobody     = "[font_Cutscene_Name][scale, 0.7][c_white][/c][/scale]";
 
 text_Name_Player     = "[font_Cutscene_Name][scale, 0.7][#F9CE7B]Player[/c][/scale]";
 
 text_Name_Jez         = "[font_Cutscene_Name][scale, 0.7][c_purple]Player[/c][/scale]"; 
 text_Name_Wife        = "[font_Cutscene_Name][scale, 0.7][c_purple]Wife[/c][/scale]"; 
 text_Name_Nerd        = "[font_Cutscene_Name][scale, 0.7][c_white]Nerd[/c][/scale]"; 
 text_Name_NerdSteve   = "[font_Cutscene_Name][scale, 0.7][c_white]Steve[/c][/scale]"; 


 text_Name_Kyle       = "[font_Cutscene_Name][scale, 0.7][c_white]Wife[/c][/scale]";  
 text_Name_Granny     = "[font_Cutscene_Name][scale, 0.7][c_white]Granny[/c][/scale]";   
 
 text_Name_AngryDad   = "[font_Cutscene_Name][scale, 0.7][c_white]Angry dad[/c][/scale]";   
 text_Name_Weather    = "[font_Cutscene_Name][scale, 0.7][c_white]Weather woman[/c][/scale]";   

 text_Name_Cop        = "[font_Cutscene_Name][scale, 0.7][c_white]Cop[/c][/scale]"; 
 text_Name_Clown      = "[font_Cutscene_Name][scale, 0.7][c_white]Bam Bam[/c][/scale]";   

 text_Name_Shadow     = "[font_Cutscene_Name][scale, 0.7][c_white]Shadow[/c][/scale]";   
 text_Name_Victor     = "[font_Cutscene_Name][scale, 0.7][c_white]Victor[/c][/scale]";   
 
 text_Name_Nun        = "[font_Cutscene_Name][scale, 0.7][c_white]Nun[/c][/scale]";  
 
 text_Name_Twin1     = "[font_Cutscene_Name][scale, 0.7][c_white]Twin 1[/c][/scale]";  
 text_Name_Twin2     = "[font_Cutscene_Name][scale, 0.7][c_white]Twin 2[/c][/scale]";   
#endregion


#region unlocked

unlocked_WeaponType_Melee       = true;
unlocked_WeaponType_Pistol      = true;
unlocked_WeaponType_Rifle       = true;

unlocked_WeaponType_Smg         = true;
unlocked_WeaponType_Shotgun     = true;

unlocked_WeaponType_ARifle      = true;
unlocked_WeaponType_Exotic      = true;
unlocked_WeaponType_Accessory   = true;


#endregion



currentCutscene_DAY = 0;

function Createcutscene(day_) constructor {
  
 // sprBgr      = bgrSpr_; // default!
  totalBlocks = 0; // added up in each function
 
 
 var indexSet = 0;
 repeat(600){
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
 
 



	  function setSprite(index_, SlotX,   sprIdleStatic, sprIdle_,    sprTalkStatic_, sprTalk_, sprSwap){
		  
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
	  }
 
 
	  function setText(index_,  npcTalking_, name_, txt_, sound_ ){ 
		 dialogBlock_Txt_PersonActive[index_]  = npcTalking_;  
         dialogBlock_Name[index_]              = name_;	  
	     dialogBlock_Txt[index_]               = txt_;  	  
	     dialogBlock_Sound[index_]             = sound_;
		 totalBlocks++;		  
	  }

} // end of constructor

arrayCutscenes = array_create(0); // 

   

#region  day 1  111111111111111


var day_I = 0; // day 1
 var dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I );  // first cutscene


  #region victor -> 0 - 51

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hey hey, my boy, how are you doing on this glorious day?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Hi Viktor, didn't expect to see you so early." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "My only tenant who can't pay rent starts a [#5893FF]side business[/c] inside my mall and he doesn't expect to see me first thing!?" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Ahhh, I can smell the money already." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I wonder if he thinks about anything except money)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Speaking of money..." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Nope)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "I had the brilliant idea to add a casino to the mall. I'm going to be filthy stinking rich!" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Hey, I wonder if I can get some slot machines in here, might bring in some business…)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Now, has my brother come to see you yet?" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "We spoke yesterday, he said he would come by this morning too." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Oh good, I'd like to see my little bro." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "He doesn't call, he doesn't write, he just travels the country getting into mischief. " + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Maybe you should call him sometime?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Ha, this is why I like you, you're so funny." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "You know, that reminds me of a joke..." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I wasn't joking... I never understand this guy.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(But I can't say anything after he's let me get so far behind in rent and not kicked me out.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(At least he knows there's nothing I can do.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Since they shipped everyone out of the city under the age of 20 after the rebellion, nobody comes to an arcade anymore.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I'm surprised they haven't built a wall yet to keep tourists out, not that any would ever come here.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "So the pirate says: ARGH, it's driving me nuts!" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "HAHAHAHAHAHAHA." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "hehehe (same joke, different day.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Lad, I gotta tell ya, I think this little side business is gonna be a boon for both of us." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "So don't worry about the legal and moral gray area." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "As long as I can keep my arcade and nobody gets hurt." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Look, my brother doesn't exactly sell the highest quality weapons. I doubt anyone could hurt themselves, much less someone else." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Wait, I'm selling low quality goods?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Absolutely my boy!" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Why would anyone want to sell quality? It's bad for business." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Besides, if you're the only affordable option for weapons in this entire city, of course your supply is shit." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Now I gotta worry people will get mad at me)." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Look at it this way." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "You sell a little pistol to someone. They go to use it and the whole thing falls apart..." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Nobody gets hurt AND they gotta come back to you to buy another one." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "That's a lucrative business model if you ask me. I can see the mountains of money pouring in already." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Sounds great, until someone comes in and punches me in the face over it.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You know what Vik." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "As long as I get to keep the arcade running, maybe it'll survive long enough to see the rebellion end and the city return to normal." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Oh lad, you don't just have high hopes, you have wild dreams, but I like that about you." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Now remember our deal, I may be generous, but you are way late on rent so you owe me interest." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "If you can't pay $20,000 in the next 14 days, I have to kick you out." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I know the deal Vik." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Don't look so sad, I'll probably open a second strip club in your place." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "You wouldn't believe how much money the American Spread Eagle makes." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Actually I would. Almost every person I see walk in this place goes there. I wouldn't be caught dead in that place.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Vik, you know my wife hasn't let me hear the end of it since that place opened. She thinks I'm there all day, now she drops in to check on me randomly." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Hahaha, that sounds like a 'you' problem." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Tell you what, if you want to stop by some time, I moved my office into the club. Come see me and I'll have one of the girls show you a thing or two." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 
	 
	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I've seen those girls, I'd rather not.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++; 
	 
	 
  #endregion	 
	 /// shadow enters index 51
	 
	 
#region shadow 52 -

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "enter shadow");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "MY BROTHER! HAHAHAHA!" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Unknown, textPrefix + "Hello... " + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Brother" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "V, mind if I take care of business here and then I'll stop by your office?" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "You haven't changed a bit." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Victor, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Victor, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "I guess I'll let you two get things ready, I've got glitter covered money to count anyways." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "exit default");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Did you do everything just like I told you?" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes of course, I even ate the list after so nobody could find it." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "What the hell! I didn't say to do that..." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(It was a joke, guess arms dealers don't have a sense of humor)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(On the flipside, is it a good idea to be super friendly with a shadow figure that supplies guns?)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Maybe I should be more serious...) " + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(It was a joke, guess arms dealers don't have a sense of humor)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Well, probably for the best you did." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Selling weapons is a real gray area here with all the local government disbanding and the police force making up rules as they go..." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "So you need to be diligent about what you sell and to whom." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Right, gotta use my head." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Exactly, and I don't plan on hooking you up with an entire arsenal until you prove yourself. Gotta start small and show you know what you're doing first." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 
	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Understood." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "I usually don't do this, but I think it's a good idea for me to make sure you know exactly what you're doing, so let's have a little practice." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh cool, so this is like my tutorial level." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "What? Are you even taking this seriously?" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes, sorry, of course." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;		 
	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Know what, never mind, you be you, it'll be the greatest front for under the table weapon sales I’ve ever seen." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Way better than the guy I had that pretended to be a clown." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(And he says I'm weird? Wait, did he say clown...)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "First lesson, don't trust anyone. I don't care if it's a sweet old lady, anyone could be a cop or someone looking to rob you as soon as they have the goods." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Selling weapons to the wrong person can get you in real trouble, really fast. You can refuse to sell to anyone for any reason." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "The most important thing about it is..." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "The most important thing about it is..." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;		 
	 
	 
	 // kyle interrupts
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hey boss man, I saw Viktor coming and wanted to let you know he was on his way down here." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,  text_Name_Player, textPrefixPlayer + "Yeah, he was already here, bud. Viktor is a lovely fella..." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,  text_Name_Player, textPrefixPlayer + "Hey, Kyle, I have some business to tend to, do you mind making sure everything is turned on for me?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Oh yea, sorry about that. I'll chat with you later bossman." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 
		 
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I wasn't really listening. I should be. If I want to boost my income. I have to take this a bit more serious)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Sorry for that, continue." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "So many weirdos in this town..." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Anyways, where was I? Oh yeah Second lesson..." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;


	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I don't think we finished lesson one. Oh well, I wasn't really listening.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Selling is a fine art. Everyone knows what they want, but they rarely know what they need. Some need less than what they want, some need more." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Most people will accept what you are willing to give them if they can afford it and it fits their needs." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Pay close attention to what someone asks for. The better you provide them with what they want, the more likely they'll be a return customer." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Lesson C..." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;		 

 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(wasn't he using numbers before?)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Failure is always an option. Everyone has their upper and lower limits on what they're willing to accept." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Make a bad offer and they'll bail on you, nobody in this town has the patience to haggle with someone they think is trying to rip them off. " + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Final lesson, try to sell me something." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
	 
	 
     // tutorial begin
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Let's say I appear to be a garden variety thug and I say I want a light, powerful weapon that lets me keep a little distance, and I have 2000 to spend." + textSuffixDialogAll, snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Shadow_Day1_Tutorial;
	 dialog_I++;
     
	 
	 // sale
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Good job, you didn’t screw up! You’re a natural." + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;	 
	 dialog_I++;		 
	 
	 // refuse
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Well, I don't know why you did that, but that’s fine, it doesn’t hurt to practice saying no." + textSuffixDialogAll, snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;
	 dialog_I++;		 

	 // fail
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "You didn't listen at all. Hopefully you get the hang of this because I need to make a profit too." + textSuffixDialogAll, snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;
	 dialog_I++;	
	 
	 
	 
	 // replys, start at 150 , after sale/refuse/fail
	 dialog_I = 150;
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Got it. I’ll do my best " + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Oh and remember, these are all on consignment so I'll collect my portion later." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Don't spend what you owe me before I come back. You do NOT want to be in debt to ME." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I really should not make this one angry.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Ok then and good luck." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

#endregion


#region Granny

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh, here comes someone already.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	


	 
	 
     // granny enters
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "Hello young man, I was reading the paper and noticed the article advertising your shop." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "It stated that you got some.. “special offers”. Oh young man, I do love some “specials”!" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes ma'am, I am here to serve your special needs. How may I be of service?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "Oh aren't you just a dear sweet young man." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "I am in need of something for protection. My neighborhood has grown really dangerous." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I understand, this whole city is nothing but danger." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "That it has. Now, I don’t want to hurt anyone, I just want to make a show of force if I have to so that nobody wants to hurt an old granny." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + " I think I could go for a small pistol, something that fits in my purse and is very light." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "That way it can’t really hurt anyone and I can feel safer, and I only have 1000 to spend, it's half my life savings..." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;

     // begin granny sale
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(A small pistol for a granny, she probably needs the lightest one I have in stock)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Granny_Day1;	
	 dialog_I++;	 


	 // jump to 200
	 dialog_I = 200;
	 
	 // sale! 200
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "Thank you sweet dear, I feel like I could rob a... I mean protect myself from a robber. See you later!" + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_210;		 
	 dialog_I++;

	 // Refuse! 201
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "I see, well, I best be off then." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;
	  
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I suppose so, now if you please, I have other customers to tend to..." + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_210;	 
	 dialog_I++;


	 // Fail! 204
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "And I thought my hearing was bad. You know what, I think I'll go see that clown that runs around town selling cheap goods, maybe he'll help a granny out." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;	 
	  
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Did she say a clown? Surely she was just calling someone a name and it's not a real clown, but in this city, nothing would surprise me." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_210;	 
	 dialog_I++;



	 // random sale after granny	 
	 dialog_I = 210;
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Did she say a clown? Surely she was just calling someone a name and it's not a real clown, but in this city, nothing would surprise me." + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1Start_Day1;	 
	 dialog_I++;    	 


    #endregion


    #region random sale 1   220 to 
	
	
	// begin random sale 1
	 dialog_I = 220;

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day2;		
	 dialog_I++;
     
	 
	 dialog_I = 230;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_250;	 
	 dialog_I++;


	 dialog_I = 240;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_250;	 	 
	 dialog_I++;


	 dialog_I = 250;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_250;	 	 
	 dialog_I++;	
	
	
	
#endregion // end of random sale 1	



   #region jez 250


	 dialog_I = 250;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hey there sugar. Been a while since I got to see your sweet face." + textSuffixDialogAll, snd_TextScroll_Default );  
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh good, maybe it will be a good day after all.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Uhm, eh... I. What can I do for you Jez?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Well you know I love to come in here just to see you and all, but it seems you may have something more that I need today." + textSuffixDialogAll, snd_TextScroll_Default );  
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(If she's a tease AND a customer, let's hope my wife does not see her here)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She always flips out over nothing.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You know what I want. Something long, hard, and ready for me to put my lips on it and blow." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Am I dreaming right now?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Are my hands sweating?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(The last time that happened I was a teenager.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She knows how to get me all worked up.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Keep it cool, you can do this. Show her you aren't phased by it.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes.... I mean no, I mean yes." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ok, knock it off buddy, you're married and if she finds out, you're dead.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Oh dear, did I get you all worked up? I'm sorry sugar." + textSuffixDialogAll, snd_TextScroll_Default );  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "No, no, no, it's not that. I think I know exactly what you need..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     
	 // jez sale
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Long, hard, and easy to blow... wait, she was referring to a weapon, right?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Jez_Day1;		 
	 dialog_I++;


     // sale! 301
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Oh sugar, you sure know how to please a woman." + textSuffixDialogAll, snd_TextScroll_Default );  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I hope she can't see me blushing.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
    
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "I can't wait to see what else you can do for me. See you round sugar." + textSuffixDialogAll, snd_TextScroll_Default );  
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Pie... Ugh, I mean bye..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Seriously, PIE, I'm such an idiot.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     // refuse! 306
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "I can't believe you would turn me down. Now I don't know if I can ever show my face here again." + textSuffixDialogAll, snd_TextScroll_Default );  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I'm sorry, but I can't." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );  
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(wow, she looked pissed.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     // refuse! 310
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "And just why would I want to put my mouth on that?" + textSuffixDialogAll, snd_TextScroll_Default );  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dammit, she got me so worked up I totally screwed this sale.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "You know, maybe I can forgive you this once, but I'll have to think about it." + textSuffixDialogAll, snd_TextScroll_Default );  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Please do, I'm so sorry about that. Are you sure you don't want me to see what else I can do for you?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Now you're starting to sound desperate. Not a good look. " + textSuffixDialogAll, snd_TextScroll_Default );  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "We'll see if I want to forgive you and I'll give you another shot in a few days. Maybe by then you'll be cooled off." + textSuffixDialogAll, snd_TextScroll_Default );  
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(DAAAAMMMMMIIIIIITTTTTT.......)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ok, calm down, gotta be ready for the next sale. Oh man, what if my wife finds out she was in here?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "( It doesn't matter that nothing happened. Ugh, I can't even refuse a woman without getting in trouble.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2Start_Day1;	 
	 dialog_I++;


#endregion




    #region random sale 2   350 to 

      dialog_I = 350;
 
     // random sale 2
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh good, another customer)" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day1;		 
	 dialog_I++;
	
	
	
	// begin random sale 1
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day2;		
	 dialog_I++;
     
	 
	 dialog_I = 360;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;	 
	 dialog_I++;


	 dialog_I = 370;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;	 	 
	 dialog_I++;


	 dialog_I = 380;	 
	 // mess up/!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;	 	 
	 dialog_I++;	
	
	
	
#endregion // end of random sale 2	


    #region wife    380   

	 dialog_I = 380;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Ugh, this place is a real dump today." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Please no, not her, not today...)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Hello, dear..." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "What's this I hear about your little side business?" + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "Hunny, please it's nothing." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "NOTHING!!! What do you mean, nothing? You're trying to make extra money and keep it from me, I know you are." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(Of course I am, what is this really about?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "That's not it and I didn't want to tell you this because I knew you'd be mad, but I'm about to lose the arcade." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Oh what a surprise! Nobody ever comes to this dump to spend money except your own dummy employee." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "So why are you mad I'm trying to make money then?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Because, what's yours is mine and I don't want you thinking you're going to make enough to leave here without me." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "Who said anything about leaving?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "I've seen that JEZEBELLE that comes in here and flirts with you. Don't think I don't know what's going on." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(Ahh, so this is really what is going on. She's jealous over nothing again.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(Wait, how does she know her name?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Wipe that stupid grin off your face, it just proves I'm right." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "So what is it you want me to do then?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(I know where this is going. She's going to tell me all the things I do wrong again.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(Just gotta pretend to listen until she runs out of steam. Just hope a customer doesn't come in anytime soon.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "blah blah blah I want. Blah blah your fault blah blah. I want you to blah blah blah more money." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "blah blah you better blah blah. Blah my psychic told me you blah blah nothing good." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "blah blah blah I want blah. Blah blah situation also blah blah blah give me." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Buy me flowers or blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(What was that last part?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "exit default");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "You better get your priorities straight or you'll regret it. DAMMIT, now I'm going to be late for my hair appointment. Thanks for taking up so much of my time." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;

#endregion



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I think that's got to be enough for one day." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "Kyle, where are you?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Kyle, textPrefix + "Right here boss man!" + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + " Kyle, run the store. I'm gonna take a look at the books for today. I'll be in my office if you need me." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Kyle, textPrefix + "Right on boss man. I got this." + textSuffixDialogAll, snd_TextScroll_Default );	 





#endregion // end of day 1

#region  day 2   222222222222 
   
 day_I    = 1; // day 2
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I );  // first cutscene   
   
   
	 #region angry dad 0 to 62

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Here's hoping for a better day. Maybe some beautiful lady will come in and want to take me away to..." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(or not)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "..." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(What the hell is going on here)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Uh... Can I help you?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "Daughter..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "Daughter... dating..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Is that a good thing or a bad thing?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "BAAAAD..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Definitely not looking like a good day)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "Gimme the dog-gun." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Do I dare ask what you plan to do with it?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "DO I ASK YOU HOW TO DO YOUR JOB?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ok calm down buddy." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(If his daughter even lives here she's gotta be at least 20. I've never seen a parent so overprotective of an adult child before.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "DOG GUN. NOW!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dammit this guy is a persistent cave-man. Ok, let me think about this one...)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;

     // sale start
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dog-gun? Ah, he means a hunting rifle.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_AngryDad_Day2;		 
	 dialog_I++;
 
 
     // end
	 dialog_I = 50;
	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "GIMME GIMME GIMME" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You're wel.... (And he's gone.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_70;	 
	 dialog_I++;


	 dialog_I = 55;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "I'M GOING TO CALL MY CONGRESSMAN ABOUT THIS!!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh sure, now he can talk...) " + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_70;	 	 
	 dialog_I++;


	 dialog_I = 60;	 
	 // mess up!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "WHAT!? I said Beagle, not this crap!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ohhhh... Dog gun, now I get it.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_70;	 	 
	 dialog_I++;

	 #endregion // end of angry dad


    #region random sale 1   70 to 117


	 dialog_I = 70;	   
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Why is my life this way?)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(All I wanted was to settle down, have a family, and live peacefully.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Mom always said I made terrible choices. Tried to tell me what I wanted and didn't want.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(If she didn't try to control me though, I wouldn't have made stupid choices.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	 
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Random1_IdleStatic, spr_Dialog_Random1_Idle,  spr_Dialog_Random1_TalkStatic,   spr_Dialog_Random1_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh here comes another customer, good, I need a distraction. The stress is killing me)" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1Start_Day2;		// overide and setup  
	 dialog_I++;		
	
	
	// begin random sale 1
	 dialog_I = 100;

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day2;		
	 dialog_I++;
     
	 dialog_I = 105;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;	 
	 dialog_I++;


	 dialog_I = 110;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;	 	 
	 dialog_I++;


	 dialog_I = 115;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;	 	 
	 dialog_I++;	
	
	
	
#endregion // end of random sale 1	
	
	
	#region  clown enter  150 to
	 dialog_I = 150;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(What... the... hell...)" + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Heyya buddy." + textSuffixDialogAll, snd_TextScroll_Default );		  	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ummm... Hi. What can I do for you?" + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "No time for small talk, I have an offer that you cannot refuse." + textSuffixDialogAll, snd_TextScroll_Default );		  	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "And that is? I am sorry but I am not really interested in going to clown college." + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "You sure? You look like a clown to me." + textSuffixDialogAll, snd_TextScroll_Default );		  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "And you're a bit of a smart ass for a guy trying to make me an offer." + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Fine, fine. Ya see, I know this guy who is a damn menace, and I've been stealing his weapons to try to keep him from causing more trouble." + textSuffixDialogAll, snd_TextScroll_Default );		  	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Why are so many weird people coming in here? Starting to really question how smart of an idea this was.)" + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "How noble of you..." + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hey, I'm serious. I usually dump his stuff in the river, but now that you're open, I got a deal that is good for both of us." + textSuffixDialogAll, snd_TextScroll_Default );		  	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(A clown comes in and wants to be taken seriously. The balls on this guy...)" + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Fine, let's hear it." + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Anything I pinch off this guy I want to sell to you for cheap." + textSuffixDialogAll, snd_TextScroll_Default );		  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "That way, the city is safer, I make some money for my trouble, and you can flip it to make some money for yourself." + textSuffixDialogAll, snd_TextScroll_Default );		  	 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "This isn't a pawn shop." + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Well it's not really much of an arcade either, now is it?" + textSuffixDialogAll, snd_TextScroll_Default );		  	 
	 dialog_I++;	 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Bastard has a point, but insulting my business isn't cool.)" + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Hey buddy, watch your mouth, you're not really making a good sales pitch here." + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;		 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Okay, okay, my bad..." + textSuffixDialogAll, snd_TextScroll_Default );		  	 
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "All I could get this time was his folding baton, so if you want, I'll give you this one for free." + textSuffixDialogAll, snd_TextScroll_Default );		  	 
	 dialog_I++;		 
	 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "What do you say?" + textSuffixDialogAll, snd_TextScroll_Default );	
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Clown_Day2; /// 
	 dialog_I++;		 


    dialog_I = 200;	 	 
	// choice accepted!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Great, here ya go. Bam Bam the Clown is very happy with your choice!" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Clown, textPrefix + "Also, one last thing, I pinch this stuff off a cop, so please be discreet and if he ever comes in here you CANNOT sell anything to him." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Clown, textPrefix + "He's a nice guy but he's just a massive idiot and can't be trusted to use a weapon correctly." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Great, what did I just get myself into...)" + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;		 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "exit default");  
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Clown, textPrefix + "Don't worry about it. It's not like laws here are really enforced ya know. I'll see ya next time buddy." + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;	 	 
	 dialog_I++;		 

	// choice declined!
    dialog_I = 210;	 	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Guess you took the arcade comment a little too seriously. Well, maybe I'll try again next time I pinch something buddy." + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "See ya, ugh, clown?" + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Clown, textPrefix + "Oh, it's Bam Bam the Clown. Bye buddy." + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;	 
	 
	 
	 
	#endregion	// end of clown
	
	// short inbetween index 220
    dialog_I = 220;	 	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(And here I thought the guy from earlier was a clown.)" + textSuffixDialogAll, snd_TextScroll_Default );			  	 
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Time for the next customer already I see." + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2Start_Day2;		 
	 dialog_I++;

	
	


#region random sale 2  250 to 270

	
	// begin random sale 1
	 dialog_I = 250;

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day2;		 
	 dialog_I++;
     
	 
	 
	 dialog_I = 255;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_270;	 
	 dialog_I++;


	 dialog_I = 260;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_270;	 	 
	 dialog_I++;


	 dialog_I = 265;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_270;	 	 
	 dialog_I++;	
	
	
	
#endregion // end of random sale 2	



#region nerd 270

	 dialog_I = 270;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(Another happy customer...)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Hey there, are you here to play?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hello there, good citizen." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(I can't believe it, an ACTUAL customer.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "I was informed of your um, establishment by a colleague of mine." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "He said you may be able to help me protect myself. " + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Wait, you're not here to play in the arcade." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Do not get me wrong my fellow bi-pedal." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "I am a connoisseur of fine video games, but you seem to not have any of those available." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(This little shit.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What I am seeking is a little bit more on the... pointy side." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "What does a guy like you want with something like that?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "It is not a matter of desire, rather it is a matter of necessity my good sir." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Oh? Just what, uh... necessitates such a need?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I arrived early to the park yesterday to prepare for the Friends Adventure Party club when..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Wait, wait, wait... You're in the FAP group??" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Yes sir and I am aware of the dubious alter meaning that is quite unfortunately not appropriate nor does it have anything..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "to do with any other “hobbies” of my colleagues and I." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "HAHAHAHAHAHA...." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Sir, are you finished." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Yes, hehehe, go on, hehehe..." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "As I was saying, while I was at the park an elderly female wearing a Kabuki mask approached and pretended to take interest in my costume." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "However, it was all a trick. She soon brandished a weapon and demanded all of my money." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I only had a few dollars, so she demanded my costume and all of my collectible trading cards." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(I'm trying so hard not to laugh, but I don't know if I can keep it in.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(Imagine him being mugged and only having some kind of nerd trading cards, the face of the robber must have been priceless.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I see you find this amusing." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;		
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(FUCKING HILIARIOUS!)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "You can always use your natural manly charm, that should repel any lady in the near vicinity!" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I'll have you know, my mom says I'm very manly. Now, if we can get back to business." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "I'm sorry bud, it's just... Wait, you want something pointy to defend against an old lady with a gun?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "That's right. I don't like the idea of firing a gun or even holding one. Can't trust them not to misfire. One can never be too safe." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Ok, but don't you think the granny will, I don't know, shoot you if you try something?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;		

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I dare say, I do not get the impression she had true intentions. If I merely had something to scare her, I believe she would run in fear." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "My budget is limited, so anything scary that shoots under 2500 will do." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(I don't think so. I'm afraid this guy isn't going to make it very far in life.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Well, I guess I can consider helping you." + textSuffixDialogAll, snd_TextScroll_Default );			
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "What did he say again? Below 4000 or 2000?" + textSuffixDialogAll, snd_TextScroll_Default );		
		 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Nerd_Day2;	
	 dialog_I++;



	 dialog_I = 350;
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Thank you kind sir. I shall defend myself with honor." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "For your sake, I sure hope so." + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;	 
	 dialog_I++;


	 dialog_I = 360;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Well, perhaps it is for the best. I do hope to not need your services again." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Good luck friend. (He's gonna need it.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;	 	 
	 dialog_I++;


	 dialog_I = 370;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Oh, well that is a bit out of my price range." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I suppose I could just point my wand at her and shout spells, she is quite old and will perhaps become frightened and leave." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ya, he's gonna die.)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Goodbye good sir." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Bye kid, and please don't do anything stupid." + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Ha, never..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



#endregion end of nerd

	
	#region Kyle  380
	 dialog_I = 380;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ok, no more of this for today.)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Kyle, can you shut the gate?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Absolutely bossman. Kind of a weird day huh?" + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "It sure was. Hey, can you make sure not to mention that Jez came in to anyone?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefix + "Why would I want to mention a totally hot customer lady that seems to be totally in love with you." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Does she really have the hots for me?)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I guess I still have what it takes. I mean, I was a total stud back in the day.)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You mean I have a chance? Like for real? Not that I would do such a thing." + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Or would I? That woman is dream come true)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Bossman, I bet you could get any lady you wanted." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "And you can count on me. My lips are sealed!" + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Thanks Kyle. My head hurts enough as it is, I don't need to get hit with another frying pan..." + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(again)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Oh bossman, your life sure has become more funny recently. " + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I don't find it that funny. I think my life has been more stressful since I decided to try this side venture.)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "exit right");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Kyle, can you close shop for today. I think I'm done for the day." + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;	 
 

	#endregion	
	
	#region cop 450


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "HEY, WAIT. DON'T SHUT THAT GATE." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Hey bossman, some guy wants in, he's got a badge and a uniform." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;	



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh crap, maybe a frying pan to the head would be better right now.)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Should I let him in?" + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "YOU DAMN SURE BETTER LET ME IN." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(That's it, I'm toast)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes, yes. Let him in..." + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "YOU DAMN SURE BETTER LET ME IN." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes officer, I can break any size bill for change if you would like to play some games while we close shop." + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Cut the shit. I know what goes on here and I would normally care, but right now I have to let it slide." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Eh, officer, I can explain... I needed the..." + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "I lost my baton. Can't go back to the station to check out without all my equipment again or I'll have to scrub all the toilets there for a week." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "You wouldn't believe the shit that comes out of those guys... nevermind. I sure hope you have some in stock." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(What?!)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh, um, I, uh..." + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Well, what's the hold up?" + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Either you got one in stock and you're going to sell it to me, or you don't have one in stock, in which case I may have to see if you got all your papers in order for everything you sell here. So which is it?" + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "So which is it?" + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "He wants a replacement baton" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Cop_Day2;	 	 
	 dialog_I++;	 
	 
	 
	 //// sale
	 	 dialog_I = 500;
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Man, this looks just like the one I lost..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Damn good thing, nobody at the station will notice it's not mine." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Happy to help, sir." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Sorry about the papers thing. Since you saved my ass, I'll trust you've paid for all your permits." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Absolutely sir, 100%." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Keep up the good work. Maybe, I'll stop in and play some games sometime. Take care. " + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_560;	 	 
	 dialog_I++;
	 

	 dialog_I = 510;	 
	 // refuse!

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Sorry officer, looks like I don't have any batons in stock." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Well that's just a shame you don't have any. Maybe it's for the best." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "I've wanted to get out of this hell hole for a while. If I get fired, I'm outta here." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I really am sorry. I know you must do a lot to keep people safe here." + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "You bet your ass I do. I'd say I'm one of the best cops on the force, but that may all be over now." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "If I was you, I'd get out of the city too. Go some place nice and never look back." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Now there's an idea." + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Take care of yourself, this city isn't going to be safe without me around." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;		 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Not what I heard...)" + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;	 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Oh and, before I go, make sure you get your permits posted." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "I don't see them anywhere and the next officer to come around won't be so forgiving." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes officer, sir..." + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_560;	 	 
	 dialog_I++;


	 dialog_I = 530;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "What the absolute hell is this!? You better have a permit to sell this." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh, uh, yes of course." + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "You don't sound so sure of it." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes officer, I mean sir, the permit office said it was in the mail last week." + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "For your sake you better hope they arrive before I come back..." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "If I don't get fired for losing my baton that is." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "That sounds like an extreme punishment for losing a baton." + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "It probably would be, but it's not the only thing I've lost. That's not any of your business though." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "But you know what is your business?" + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "What's that officer?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "Getting your damn permits." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I can't believe this, here I thought it was going to be a good day.)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 	 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "Well I'm off to get my ass chewing. Get your permits or else." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes officer." + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_560;	 	 
	 dialog_I++;

	 
	#endregion	

#region extro kyle 560

	// extro
	dialog_I = 560;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Every time I think I'm getting ahead...)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Now I gotta pony up for a permit, pay my rent, and hope I have enough left over to eat.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ugh..." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "Bossman, you look more stressed than ever. Don't worry, everything'll be alright." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Thanks Kyle." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I sure hope he's right.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "See ya tomorrow bossman." + textSuffixDialogAll, snd_TextScroll_Default );		 	 	 
	 dialog_I++;



#endregion




#endregion // end of day 2

#region  day 3   33333333333333 
   
 day_I    = 2; // day 3
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I );  // first cutscene  
  
 
 #region kyle + weather girl

 
    
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(What a morning. That rain is something else. The forecast was sunny and I definitely did not prepare for a downpour.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
    
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I guess that's my life in a nutshell though.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "Whoa bossman, you're soaked." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,  spr_Dialog_Kyle_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "No kidding, someone should really teach those weathermen how to do their job." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , "enter default"); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "How about a weather girl?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	  
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "Hey, I know you! You're that hot weather lady that just joined channel 8." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "KYLE!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I'm sorry about him, miss." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "It's fine, I'm used to it. Guys like this one are everywhere." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Kyle, why don't you finish opening up for me?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     // kyle exits
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "exit right"); 	  
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + " Yep, sorry bossman." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


    
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "He's actually kind of cute I suppose." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Don't tell him that, he might explode." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I believe it. Usually the only guys that try to talk to me are meatheads. The rest just drool because they know me from TV. " + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Gotta act cool, I can't believe she's here in my arcade.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Wait a second. Why is she here? No way she wants to play games. That means...)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
 
 
      arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Ahem. Did I lose you too?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh sorry, I was uh, just thinking about what I should say about this crazy weather and all." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 
 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "It is pretty wild out there. We don't exactly get the best tools of the trade here." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "A lot of our station equipment has been destroyed since everything fell apart with the government." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;  
 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She seems really familiar right now. Do I know her from somewhere?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I guess that makes sense. Sorry about what I said earlier." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "It's nothing, I couldn't care less at the moment anyways." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh, why is that?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I have a chance for a promotion to full-time reporter and I was given a story to cover." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(A cover story on what? Arcades or weapon dealers?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(This could be really good, or really bad for me.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "As you know, the city has very few rules on weapon sales and possession. The rules we do have are basically all made up on the fly by the police force." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Yep, not about arcades. Damn, why does nobody care about arcades anymore?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Oh, you look nervous. I'm not trying to hurt your business or you, but I was tasked to report on the semi-legal sale of weapons around here." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "As any good reporter does, I looked high and low to find where sales are coming from and your very poorly disguised ad in the paper stood out to me." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Poorly disguised? I knew that was a bad idea.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(That's it, I'm really in trouble now.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 
	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Please understand, at channel 8 we are unbiased in all our reports." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I'm not sure I believe that, but I never watch the news.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 		
	
	
	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "If you could simply show me how you do business and give me a few insights, I would love to feature you in a story." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 		

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I won't take any pictures or even name your store, it would be 100% secret that you are my source. I promise!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I would never want to ruin a potential source of information." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;  
 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "How do I know I can trust that you won't report me?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Report you to who? Like I said, there are no real rules." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;   

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Half the permits in this town are just a way the police department extorts people so they can keep paying themselves." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_Skip_Decision_PermitDay2;		 
	 dialog_I++;  
 
    
	// permit choise jump!
	 dialog_I = 100;
	 
	 // got the permit
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Are you kidding me!? I could have just not paid for that permit and I would have been just fine.)" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_110;		 
	 dialog_I++; 


	 dialog_I = 101;
	 
	 // got the permit
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I'm so glad she told me that, I was really thinking I needed to buy that permit.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_110;		 
	 dialog_I++; 
 

     // continue
	 dialog_I = 110;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Oh and also, my dad was apparently in here yesterday. If I was going to rat you out to anyone, I would have done it already." + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;  	 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Hm, yesterday was a bit wild. I'm sure that clown has some fine offspring.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Or maybe it could have been the short tempered guy?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Don't tell me your dad was the short, balding lunatic that wanted a dog-gun?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "That's him. He's lost his mind since my mom left him for another man. Any time he sees some meathead hanging around me he goes into a rage." + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;  		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I know he's just afraid I will finally move out..." + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;  		 
	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Wait, you still live at home?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 		
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Is that any of your business Mr. Arms dealer?" + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;  	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "No, no I suppose it isn't. I didn't mean any offense." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "None taken." + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;  		
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Anyways, let's get down to business." + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;  	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "If you could just show me what you do and also sell me a nice handgun." + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;  	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I would be able to make a report that could make a good impression on my boss and might bring in new business for you." + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++; 		
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Do I really have a choice at this point?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I need the money and if the police aren't going to do anything maybe I should look at this as my chance to get ahead for once.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I'm thinking a really recognizable pistol should work fine. One that you see in a lot of old western movies. Do you have anything like that you can sell me?" + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;	
	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Actually, I think I know just what you mean." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	
	
	
	 // sales text
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Western pistol, got it.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Weather_Day3;		 
	 dialog_I++; 	
	



      dialog_I = 150;
	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "This will have to do I suppose. Hopefully we both get something out of this." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I just don't want this story to cause me any trouble, you know." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Don't you worry. I'll let you know when the story is about to break." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Thanks, I'll be sure to watch." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Take care.. Oh, and make sure you bring an umbrella with you tomorrow too." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_180;		 
	 dialog_I++;	 
	 


	 dialog_I = 160;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I guess I'll just have to talk to my dad then. Maybe he won't mind paying you another visit, that may encourage you to loosen up a bit." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Geeze, why the sudden hostility. Now I have to deal with him again.)" + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I'm sorry, I shouldn't threaten, but I will get my report, one way or another." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Still threatening...)" + textSuffixDialogAll, snd_TextScroll_Default );		 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I'll be back, and I'll be more convincing." + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_180;			 
	 dialog_I++;



	 dialog_I = 170;	 
	 // mess up!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I'm sorry but that just won't do for the story. I'd love to stay and work something out, but I can't be late for the next weather report." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I'll be back soon and maybe you can have something ready for me then." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dangit, I tried too hard to make extra cash on that one.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_180;	 	 
	 dialog_I++;
	
	
	 
    #endregion 
   
	
	#region nerd 180
	
	 dialog_I = 180;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Hello again good sir." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "It's you again is it?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Oh the genuine and heartfelt welcoming of a fellow human being." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Saw right through that did ya?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;		
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Good sir, I may not be up to your level of social skills, but I am quite astute I assure you." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes, you are a sharp one indeed." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Speaking of sharp, please tell me you haven't stabbed anyone after you were so hard up for a knife." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Well, yes, but only myself. I cut myself using a kitchen knife while trying to surgically open the latest pack of baseball cards my grandmother bought me." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I bet he lives with his grandmother.)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The good thing is, I didn't get any blood on the cards after I passed out when I saw the wound." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Seriously? You ever think you don't really have what it takes to live here? I'd hate to see you get hurt out there." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;		
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Nay, good sir. I may not be as rough around the edges as many of the citizens of this city, but I cannot hope to see it change if all the good and intelligent people leave." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;		
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "So do you think the rest of us are idiots and you are smart enough to save us?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;	
	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Well, I have some ideas..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;		
		
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I can't decide if I hate him or if I want to root for him.)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "That is beside the point. I came in today to share a bit of lore with you." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;			
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Lore?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Yes, you know what lore means, don't you?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;		
	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Look pal, I don't need you coming in here and talking down to me." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;		
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "PLEASE DON'T HURT ME!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Geeze, calm down already. Nobody's going to hurt you." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I'm sorry about that, after the attack I suffered the other day I suppose I have been on edge a bit." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ok, so what is it you want to tell me?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;

	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I should leave that up to you I suppose. I have a few interesting topics I thought you might like to hear about." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Why does he want to tell me anything?)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh no, he thinks I've become his new friend because I didn't just instantly kick him out. What have I done!?)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;		
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Nerd_4Topics_Day3;	 
	 dialog_I++;	
	
	
	//// 4 choises
	dialog_I = 300;
	
	//  Choise 1
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;	 
	 dialog_I++;		




	dialog_I = 400;
	
	//  Choise 2
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;	 
	 dialog_I++;


	dialog_I = 500;
	
	//  Choise 3
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;	 
	 dialog_I++;


	dialog_I = 600;
	
	//  Choise 4
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;	 
	 dialog_I++;



	dialog_I = 700;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Oh will you look at the time, I don't want to be late for Grandmother's bath." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(That mental image will never leave me.)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I'm going home big guy." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Uhh, ok..." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(He's an odd character.)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;
	 
	#endregion
 
  
    #region kyle + wife 705
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "Hey boss, what is with that guy?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You got me, my ears start bleeding when he starts talking." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "Ha, you're funny! Hey, I meant to ask how things are going by the way. You doing ok?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I never think things are going to be ok anymore Kyle. At least I'm never disappointed that way." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;  
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "Wow, that's depressing." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++; 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "enter default"); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "Agreed!" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;  

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "exit right"); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "AH! Don't scare me like that." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;  
 
 
 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "Why are you so jumpy?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;   
 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "N... No reason. What brings you in today my beautiful wife?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She's going to see right through me.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_ChoiseGivenPresent_Wife;	
	 dialog_I++; 


    // if baught wife present
	dialog_I = 750;
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "I just wanted to say thank you so much for the (fill in the blank). You know, maybe my mother was wrong about you." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;    


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I hate that woman with every fiber of my being.)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Always pinching my cheek and calling me her “schwuler hund”. I don't even know what that means. Maybe I should learn some German...)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Wait, did she say thank you???)" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "Oh look at the time. I'm going to be late for my appointment. Me and my psychic are getting our hair volumized together." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;    


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "They call it a pompadour. Doesn't that sound fancy!" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Do I dare ask how much that will cost?" + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "Oh hunny, you're too funny. I'm sure your new business is booming so we can afford for me to get pampered." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "exit default"); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "Bye snookums." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Snookums!?)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_780;	 
	 dialog_I++; 



    // if NOT baught wife present
	dialog_I = 770;
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "blah blah blah appointment time, blah blah blah $500 blah blah blah... Gotta run." + textSuffixDialogAll, snd_TextScroll_Default );			 	 
	 dialog_I++;    


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(That was weird, she never runs off that fast. Wait, $500 for what!?!?!?)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_780;	 
	 dialog_I++; 



    // next
	dialog_I = 780;
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I seriously don't know what just happened. And now I have a line of customers.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1Start_Day3;	 
	 dialog_I++; 	


   #endregion
   
   
    #region random sale 1   781 - 820


	 dialog_I = 781;	   
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	
	 
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Random1_IdleStatic, spr_Dialog_Random1_Idle,  spr_Dialog_Random1_TalkStatic,   spr_Dialog_Random1_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day3;		// overide and setup  
	 dialog_I++;		
	
	
	// begin random sale 1
	 
	 dialog_I = 800;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;	 
	 dialog_I++;


	 dialog_I = 810;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;	 	 
	 dialog_I++;


	 dialog_I = 820;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;	 	 
	 dialog_I++;	
	
	
	
#endregion // end of random sale 1	   
 
    #region random sale 2   830 - 820

    // next
	dialog_I = 830;
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Next." + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2Start_Day3;	 
	 dialog_I++; 

     
	 
	   
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	
	 
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Random1_IdleStatic, spr_Dialog_Random1_Idle,  spr_Dialog_Random1_TalkStatic,   spr_Dialog_Random1_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day3;		// overide and setup  
	 dialog_I++;		
	
	
	// begin random sale 1
	 
	 dialog_I = 840;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_870;	 
	 dialog_I++;


	 dialog_I = 850;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_870;	 	 
	 dialog_I++;


	 dialog_I = 860;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_870;	 	 
	 dialog_I++;	
	
	
	
	
#endregion // end of random sale 2	   


#region nun  870

    // next
	dialog_I = 870;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Next!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Good day my child." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Welcome in, uh, sister?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "You have been blessed today I see." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I have?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Yes. Many wonderful customers I see you have." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "Does the good word not say: the plans of the diligent lead surely to abundance?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I'm afraid I don't know, sister. I'm sorry." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(If this turns into a test I am going to fail.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "Do not worry my child, for: the reward for humility and fear is riches and honor and life." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I feel like she's trying to say I'm going to be rich. Maybe I am blessed!)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "My child. I see much riches and abundance is bestowed upon your house. This is certainly a blessing for you." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Thank you sister. You sure are making me feel great. Maybe things are getting better for me after all!" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "My child, “incline your ear, and hear the words of the wise..." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Words of wisdom on getting rich, come to papa...)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 

     // point gun upwards and shoot
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "           " + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++; 
     
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "It is more blessed to give than to receive.” Now, get with the giving." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(AHHHHHHH.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "The lord demands your penitence... and $500 should be just fine." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I can't believe this, I'm being robbed by a nun.)" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_ChoiseNun_Day3;	 
	 dialog_I++; 


    // if played up!
	dialog_I = 900;
    
	// pay up
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "Thank you my child. May mercy, peace, and love be multiplied to you." + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Effect_Txt_PopUp_NunTakes500;	 
	 dialog_I++;	


	dialog_I = 910;
    
	// not pay up

     // point gun toward player and shoot
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "           " + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Nun_FadeBlack;	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Am I dead? Am I in heaven? Please let it be...)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "            " + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dammit, still getting robbed.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "Did I say $500?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "I meant everything you got in the register. Try to refuse me again and payment for your sins will be much more severe." + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Effect_Txt_PopUp_NunTakesAll;	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "Thank you my child of light. May mercy, peace, and love be multiplied to you." + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_920;	 
	 dialog_I++;


    #endregion

#region  kyle 920

	dialog_I = 920;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dammit, still getting robbed.)" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "Bossman what happened? I was in the bathroom and heard a shot but I came running as soon as I could. Did a gun misfire?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "No Kyle, we just got robbed." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "No way man. By who?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "A nun Kyle. A nun." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "Are you kidding bossman?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "NO KYLE I'M NOT KIDDING! WE JUST GOT ROBBED BY A &$#@!*& NUN!" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "Damn bossman I'm sorry. I can chase her down if you want." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "No Kyle, I don't want you getting hurt." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I don't think it would be wise to make a police report either. I think I'm just screwed." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "What do you say we call it a day then bossman?" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I think that's wise Kyle. Please, shut everything down. I'm going to my office to cry, then home to shower and change pants." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++; 


#endregion



  #endregion // end of day 3


#region  day 4   44444444444444444 
   
 day_I    = 3; // day 4
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I );  // 
  
  
     #region granny

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Here comes another day in my own personal hell. I didn't sleep a wink last night and I can already see that nice old lady making her way down here.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I'm not ready to deal with people right now.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;  
 
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Is it because I'm exhausted, or is she really that slow?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;   
 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(And what am I doing even being open today. I should just close the shop, but I can't even move from behind the counter. I'M SOO TIRED!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I bet my pillow is still soaked. I cried a lot last night. What kind of man am I?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(This was all just a huge mistake. I wish I could just leave here and...)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;  
      
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I think that granny picked up some speed, she's here already. Ok, get it together and put on a good face.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 
 
     // granny enter     
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Well you're here early, I haven't even finished setting up shop for today.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "I had to get an early start on the day. You don't look so good young man, are you sure you're ok?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;   
 
       
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(So much for putting on a good face, she read me like a book.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
       
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "It's nothing, just business stuff really." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;  
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Well then, let's see what granny has in her purse to make you feel better." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;   
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Oh hear, would you like one of my famous macaroons?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;   
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "I made extra for the ladies in the Big Hat Bitty club. I was on my way to meet them, but I can spare one for you." + textSuffixDialogAll, snd_TextScroll_Default );		 
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_ChoiseGrannyMacaron_Day4; 
	 dialog_I++;   
 
     // if accepted macaron
	 dialog_I = 20;
       
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Well, what do you think?" + textSuffixDialogAll, snd_TextScroll_Default );		
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Effect_Screen_Drugged;
	 dialog_I++;  
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "This is the best thing I've ever eaten in my entire life. You made this?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Sure did. Granny's secret recipe never disappoints." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;  	 
	 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(What was I even upset about?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I feel like I can lift a mountain!)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Now that you feel better, can I share a little story with you?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;  
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes, please do." + textSuffixDialogAll, snd_TextScroll_Default );		 
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_50; 	 
	 dialog_I++; 


     // if denied macaron
	 dialog_I = 30;
 
     // she tries again 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "I've never had someone turn down my macaroon before. You really should try it." + textSuffixDialogAll, snd_TextScroll_Default );
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_ChoiseGrannyMacaron2_Day4; 	 
	 dialog_I++;  
     
	 
     // if denied 2nd time macaron, she goes away
	 dialog_I = 40;	 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Oh young man, I really wish you wouldn't have said that. I suppose I don't need much anyways." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;       
	 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "I was just stopping in to say hello and to say thanks for helping me out the other day. You are... were such a gentleman." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;  	
	 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I didn't mean any offense, really..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "It's ok, I really must be off." + textSuffixDialogAll, snd_TextScroll_Default );	 	 
	 dialog_I++;  	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Maybe I should have just eaten the stupid cookie.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I'm still so upset from last night I can't stand the thought of eating and now I upset a poor old lady.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 
	 dialog_I++;	 
	 
	 
	 // if accepted first or second time, she tells a mafia story + sale possible
	dialog_I = 50;	  
	      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Last night I was watching an old movie and the main character was this sweet young lady." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;  	
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "She winds up falling in love with a gentleman who turns out to be in a criminal organization called the family." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++; 	
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "So she winds up being a part of his unscrupulous business." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++; 	
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "However, over time and with lots of love, she manages to turn his heart soft and they eventually run away together to live happily ever after." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++; 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Sounds wonderful." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Until the family finds them years later and kidnaps her to punish her husband for leaving." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++; 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Where is this going?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 


      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "So she grabs the only relic he brought from his days in the family, an old gangster style machine gun, and she sets out to free her husband." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++; 


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Does this story have a happy ending?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	

      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Oh my boy, I can't spoil the ending for you. You should really watch the movie yourself. I can't remember the name, but it had that handsome actor, Mumphrey Yogart." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++; 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Never heard of him.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;		 
	 
	 
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Oh young man, it made me feel young again." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++; 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "That's really nice, but why are you telling me this story?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;			
	
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "I want to feel young again." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++; 		
	
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "I would like to buy something from you. A gun, just like the one in the movie." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++; 	
	
      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "I don't really know the name, but it definitely looks like an old gangster weapon from the 1920s." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++; 	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I think I have what you need, but are you sure you can handle such a thing?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	


      
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Oh my dear, I don't plan to use it, I just want to hang it over my fireplace. It will certainly open up stories when my friends come over for tea and macaroons." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++; 	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She really laid that story on thick.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(But what am I thinking, she's a wholesome nice old granny, right?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I see. In that case, I think I can help." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ganster movie small machine gun, got it)." + textSuffixDialogAll, snd_TextScroll_Default );	
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Granny_Day4; 		 
	 dialog_I++;

     
	 // sale!
	 // jump to 100
	 dialog_I = 100;
	 
	 // sale! 100
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Thank you young man, this will do nicely.." + textSuffixDialogAll, snd_TextScroll_Default );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You're welcome." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Granny, textPrefix + "Bye bye young man. I look forward to bringing you more macaroons again soon." + textSuffixDialogAll, snd_TextScroll_Default );	 		 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I would love that, you can stop by anytime." + textSuffixDialogAll, snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_120;	 
	 dialog_I++;
	 
	 

	 // Fail! 110
	  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "exit default");		
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Sorry about that, I was thinking about that delicious macaroon and my mind must have slipped." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_120;	 
	 dialog_I++;



     #endregion  
 
 
 
 #region shadow  120
 	 dialog_I = 120;

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "Hello." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "enter shadow");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Shit you scared me! Where did you come from?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "Jumpy today huh? Did you get the box I left with the attachments?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yeah, although I don't know why you didn't just bring them with you this morning." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "I didn't know if I would make it in. I had someone... er, something to take care of this morning." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Please, I don't want to know." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "What's got you all worked up? " + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Well, for starters, I got robbed last night." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;  
 
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "Damn, well it was bound to happen at some point. Which gang was it?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;  


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I don't want to even admit this to him.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;   
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "It wasn't a gang member..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;   
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "It was..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;   
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "A nun." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;   
	 
	 
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "You gotta be kidding me?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I know, I know, it's embarrassing." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "Embarrassing?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "My man, it sounds like you got robbed by the Nun Mafia. Not only that, you lived!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "What? There's a mafia of nuns?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "You don't know? If I ran into one of them and lived, I'd think I was the luckiest man alive. She must have taken a liking to you." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "So you aren't mad about the money I lost?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "Well hell yeah I'm mad about that, but there's nothing we can do now." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Thanks, I guess that helps me feel better about things." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "Well, you're a semi-legitimate business operating in the most lawless city in the country. Stuff happens." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "Now you just gotta make all that money back. Copy." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Copy. Anything special I need to know about these attachments." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "Not really. Just like before, some people know what they want and others you gotta show them what they want." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Easy enough, I guess." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "Keep up the work and I'll bring more inventory for you in a few days. It should help with business even more." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Jackpot." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "Again with the weirdness." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Sorry." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "I got another appointment to make. If you see that nun again, give her whatever she wants and you should be fine." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
     
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "If she didn't whack you the first time, she's gotta have a soft spot for you." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I feel so blessed.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 


     /// shadow exits 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "exit shadow"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Shadow, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(What the hell? How did he do that?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 
    #endregion
 
 
 
 #region twins 200
 
      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , "enter default"); 
      //arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Well howdy there partner." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Howdy?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "enter default"); 	  
      arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Unknown, textPrefix + "'scuze my sister, she's a bit on the country side of thangs." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;
	  

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh, how silly of me not to notice..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;	  


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "Weeze was in the mall an' heard ‘bout your lil ar-cay-duh, an weeze was wondren if we could play around." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Twin2, textPrefix + "But then we heard you had more than just games to play, and we had a better idea." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Please, enlighten me." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;	



      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "Ain't no reason to go use'n them big words partner." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;



      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Hmm. What do youze two needs?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;	



      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "Now dats more like it." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I+


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Twin2, textPrefix + "We jus wanted to know if you could help us with a lil critter infestation." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;
	  

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "Ya, we got roaches big enough ta ride on." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I+	  
	  
	  
      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "That is a problem alright." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;	
	  


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "Yep, an we need to burn them out big time." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I+	  



      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "We needs us a flame thrower. Not none of those homemade ones neither. We tried makin one once, burned down our trailer." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I+


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I don't carry any of those, way too dangerous." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;	



      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "WHA? How can you call yourself an arms man-o-fact-errr?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I+	  


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I don't understand?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Twin2, textPrefix + "She means, how can you make weapons and not have a flame thrower?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;

	

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ohhh. I don't make anything here, I just sell what I'm given." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;	
	
	
      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "Thas the dumbest thang I'ze ever heard." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I+	
	  

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Maybe there's something else I can do for you?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;		  
	  

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Twin2, textPrefix + "Just give us the most boom-iest thing you got partner." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;	  
	  
	  

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "If all you have are roaches, I think you might cause a lot more harm than good." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;			  



	
      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "Ain' none of your business what we gonna do." + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I+	


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "");  	  
      arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh man, as much as I need the business, I really don't think I should sell anything to these two. They may cause some real harm.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	  dialog_I++;	


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Twin2, textPrefix + "Tell ya what, jus give anything you wanna sell us that goes boom." + textSuffixDialogAll, snd_TextScroll_Default );		  
	  dialog_I++;



      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	  
      arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I don't get a good feeling from these girls. Not sure they are really all there in the head to be handling any sort of weapon.)" + textSuffixDialogAll, snd_TextScroll_Default );	
      arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Twins_Day4; 	  
	  dialog_I++;



	 // jump to 250
	 dialog_I = 250;
	  // sale
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 			 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Twin2, textPrefix + "Thanks partner." + textSuffixDialogAll, snd_TextScroll_Default );	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 			 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "Yeehaw... BOOM BOOM! " + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_290;		 
	 dialog_I++;



	 // Refuse! 260
	 dialog_I = 260;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I'm sorry, but I don't think I can help you today..." + textSuffixDialogAll, snd_TextScroll_Default );		

	 dialog_I++;	 
	 
      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Twin2, textPrefix + "Know what, I think you got your head up your ass, but I like a man who tells me no. Kind of turns me on." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;
	  
      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "Hey, he turns me on more." + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Twin2, textPrefix + "Now don't go doin this again. I said he turned me on first." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;
	  
      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "Ya, well I said he turns me on more!" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ladies, please..." + textSuffixDialogAll, snd_TextScroll_Default );	


      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  10, text_Name_Twin1, textPrefix + "SHUT UP!!" + textSuffixDialogAll, snd_TextScroll_Default );		// special case, both talk
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_ScreenShake;		 
	 dialog_I++;


	  
      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "You wanna take dis outside?" + textSuffixDialogAll, snd_TextScroll_Default );		
	 dialog_I++;
	 

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 		 
     arrayCutscenes[day_I].setText(dialog_I,  2,  text_Name_Twin2, textPrefix + "I'm gonna stomp the rest of your teeth out..." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;	 
	  
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , "exit default"); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "exit default"); 	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "Let's go then..." + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_290;		 
	 dialog_I++;	 




	 // Fail! 280
	 dialog_I = 280;	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Will this work?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , ""); 		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Twin2, textPrefix + "I said anything that goes boom ya idiot!" + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;	 
	  
      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Twin1_IdleStatic, spr_Dialog_Twin1_Idle,  spr_Dialog_Twin1_TalkStatic,   spr_Dialog_Twin1_Talk  , "exit default"); 
      arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Twin2_IdleStatic, spr_Dialog_Twin2_Idle,  spr_Dialog_Twin2_TalkStatic,   spr_Dialog_Twin2_Talk  , "exit default"); 	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Twin1, textPrefix + "C'mon sis, let's go find us a real man-fat-yer." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_290;	 
	 dialog_I++;

      #endregion


#region  kyle 290

     dialog_I = 290;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Hey bossman. I heard all of that. They're crazy huh?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "enter right");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "The craziest." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Hey bossman. I was wondering if you would sell me something?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I guess I can, but why do you want to buy a weapon?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Well, mostly to help out after what happened yesterday, but also my friends said I can join their group if I get armed." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Kyle, what group?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "I'm a proud member of the ARN." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Really Kyle?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Yep, the Allied Rebellion Alliance." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Kyle, as much as I want the rebellion to end and for things to return to normal, that sounds really dangerous." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Wait, Allied Rebellion Alliance, which side are you on?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "We actually aren't on either side. We're on both sides. We're trying to bring peace through forceful coercion." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "That doesn't make any sense.?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Oh bossman, I'd have to explain a lot of inner mechanisms that I'm not at liberty to speak of. Maybe I can tell you one day." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Good grief.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ok, what are you needing?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "I've saved up some money, so how about an A16 with everything you can put on it?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "That's a lot Kyle!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	  
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "If it helps keep the arcade open, what's a few bucks?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Well, why not, he's always been harmless when it comes down to it, and this thing will probably fall apart before anything happens.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_ChoiseKyleA16_Day4;	 
	 dialog_I++; 	 
    
	// binary choice
	// if sold a16
	dialog_I = 350;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Thanks bossman." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Thanks Kyle, but please, don't ever use that thing." + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_370;		 
	 dialog_I++; 	
	
	// if NOT sold a16	
	 dialog_I = 360;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_370;		 
	 dialog_I++; 
	 
     #endregion

     #region victor enter



	 dialog_I = 370;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "enter default");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Victor, textPrefix + "Hello gents." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "grrrrrrr...." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Kyle, down boy, down!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "Whoof, I smell something fishy here. I will be off cleaning the office." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_Idle, spr_Dialog_Kyle_Idle , "exit default");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "What can I do for you Viktor?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Victor, textPrefix + "Close." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Viktor I promised I would get you the rent soon." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Victor, textPrefix + "It's not that." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Why do you look so sad?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

 
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Victor, textPrefix + "A couple of girls got in a big argument in the parking lot. One ripped the other's wig off, and it was full of roaches. I saw the whole thing." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Victor, textPrefix + "Then they got in their van and the bugs literally poured out. Then all those little roaches followed one of my strippers inside and I have to bomb the entire mall now." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "That's really unfortunate." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Victor, textPrefix + "I'M GOING TO LOSE SO MUCH MONEY OVER THIS!!!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I should have guessed...)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;  
	 
	 
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Victor, textPrefix + "So, no more business today. Take care of what you need to and close up shop. I'll let you come back in the morning:" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Damn, ok. We'll be out in a jiffy." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;  

     #endregion


#endregion // end of day 4
  
 
  
#region  day 5  5555555555555555
  
     
 day_I    = 4; // day 5
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I );  // 
 
 #region monolog + clown
 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "(It's almost closing time and nobody has come in. Those twins really did a number on the entire mall's popularity)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "(And where the hell is Kyle? He has never missed a day in his life. Hell, he's never even been late. I think he's here before me every day.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
	 
    // arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	 
    // arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "(What was I thinking about again? Oh yea, those twins.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	// arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_ChoiseDone_Twins_Day5;		 
	// dialog_I++; 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Heya buck'o" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "enter clown");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "(Thank goodness, a customer, wait...)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Well if it isn't my favorite clown." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Do you know any other clowns?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Well, no..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "That's ok, I'll still take the compliment." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Can I assume you're here to sell me something today?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Why else would I be here?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Ugh, this whole scheme you have going, it really stresses me out, and I've got enough stress as it is." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Bam Bam understands. Just look at it this way, you're doing a good deed for the community." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Am I though?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "You're 100% convinced this cop is a bad guy?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "I never said he was a bad guy. He's just a complete idiot that needs to find a job doing something else." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Like being a clown?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Hey hey, don't insult my profession. " + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "What, clowns can't take a joke?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Ha-ha-ha, very funny." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "So what did you steal from him this time?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Get this, he left his gun belt on a park bench after he sat down to eat an ice cream cone!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Maybe I'm starting to believe you that he's not the brightest." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Exactly my friend. I couldn't help but take it. The only thing not covered in ice-cream was his 9 O'Clock pistol." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "And you want me to buy it, right?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Bingo bango..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "I hate that I'm even asking, but how much do you want for it?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Once again, nothing." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Interesting. It's not like I'm short on supply, but why give it away for free?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Like I've said, I'm doing a community service here. Having a partner in cr... community service means more good for the folks around the city." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Riiight... You know that cop came in here after you?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "WHAT!? You didn't sell to him did you?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Hey, do you think I'd tell him your business?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Okay, okay, but if you did, just know you're putting us both, and the community, at risk." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "I hear ya, but I do have a business to run." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk   , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Not sure I like the sound of that. Well, best not waste any more time if he's coming in here, I don't want him to catch me. Do you want this thing or not?" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Clown_Day5;		 
	 dialog_I++;

    
    dialog_I = 70;
    // if accepted gift
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "That's great, I knew you were a smart guy." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Time will tell..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "That's great, I knew you were a smart guy." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "(So says a thieving clown.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Thanks. I hope not to see you again though." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk    , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Oh you will buck'o! See ya later." + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1Start_Day5;	 
	 dialog_I++;		 
	 
	 
    dialog_I = 80;
    // if denied gift
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "Damn. Guess I'm making another trip to the river." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "Guess so..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk    , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Clown, textPrefix + "No time to waste then, I'll see ya ‘round." + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + " (I hope not.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "(Ugghhhhh...)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1Start_Day5;	 	 
	 dialog_I++;		 
	 
	 
	 
   #endregion  
 
     #region random sale 1   90 to 
	
	
	// begin random sale 1
	 dialog_I = 90;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1Start_Day5;		
	 dialog_I++;
     
	 
	 dialog_I = 100;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_130;	 
	 dialog_I++;


	 dialog_I = 110;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_130;	 	 
	 dialog_I++;


	 dialog_I = 120;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_130;	 	 
	 dialog_I++;	
	
	
	
    #endregion // end of random sale 1	
 
       dialog_I = 130;


    #region Jez + nerd  130, site 47

       dialog_I = 130;

	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk    , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Hi there cutie." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Helldy... I mean, How'llo... I mean... Nevermind" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk    , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Oh my, I didn't mean to get you all tongue tied there handsome." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She's got me all flustered again. I wish someone would help me out here. Dammit, just when I need Kyle the most, he's not around.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 
	 
	 
	 /// nerd enter

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "enter default");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Nerd, textPrefix + "Good day to you, good sir and madam." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(And it just got worse...)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,   "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Uhhh... Who is this?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Jez, meet, uhh... Wait, I don't know your name." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_NerdSteve, textPrefix + "It's Steve." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;		 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,   ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Why is “Steve” here? Is there a nerd convention or something?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Good question actually.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_NerdSteve, textPrefix + "I will have you know madam, I am here to see my friends." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;		 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(We are NOT friends!)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,   ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "I cannot believe this. Do you really hang out with this guy?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "He likes to come in here and tell me, ummm, stories..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;




     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,   ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Sounds like you would rather spend time with him than you would with me." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;




     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_NerdSteve, textPrefix + "Madam, I would be just as happy to talk with you as well." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,   ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "As if... There's no way I can stick around if this... thing, is here." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Damn, even though I don't really like him, that was harsh.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_NerdSteve, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Is he about to cry?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,   ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Well, who is it? Do you want to talk to him, or to me?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She's seriously making me choose?)" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_JezOrNerd_Day5;	 
	 dialog_I++;

    // 180 if picking jez
	dialog_I = 180;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_NerdSteve, textPrefix + "I see. I will leave you to it sir." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ugh, he's going to cry a river now." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	
	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Who cares! What's important is right in front of you." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	
	

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Maybe I should have kicked them both out. She's in a mood today and not an attractive one.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "So sweetie, I need a favor." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh... uh... what can I do to uhh... help?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;



	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "There's a concert tonight. It's the first one in ages to come through here and I just spent all my money getting my hair re-done." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(No way she's going to ask me for money?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "If there's any way you could spare $300, I could definitely find a way to pay you back." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "($300!!! Is she sitting on the stage!?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Jez... I... uh..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 	 
	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Oh come now, you don't want to let a girl down do you?" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I may have to pull money out of the safe for this one.)" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_GiveJezMoney_Day5;		 
	 dialog_I++;

     
	 // if yes, give money
	 dialog_I = 240;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "OOOHHHHH.... Thank you so much sweetie! I'll definitely pay you back sweetie." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(God I hope so.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 
	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "I don't have time to stay and chat. Gotta go get ready!!!" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I'm so screwed.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 


	 // if no, deny money
	 dialog_I = 250;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I'm sorry Jez, I just don't have the money..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I feel like she's staring through my soul.)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "exit defa");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She didn't even say a word. What the hell. I thought for sure she was going to scream and yell at me...)" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 	 
	 dialog_I++;	 



     ///////////// 
	// if chosen the nerd
	 
	 
     // jump point 
	 dialog_I = 260;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "I cannot believe this. You are seriously out of your mind. I swear, if I come back and he's here again, I'm going to scream!" + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  ,  "exit default");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Why me?)" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	



     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I can't believe you chose to talk to me sir. " + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Me either." + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Well, I just wanted to share a story with you." + textSuffixDialogAll, snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_NerdStory_Day5;	 		 
	 dialog_I++;	

     
	 // story 1
	 dialog_I = 270;
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The history of guns is a long and fascinating one, dating back centuries. It all started in China, around the 9th century, with the invention of gunpowder." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The first recorded use of gunpowder in warfare was in China in the 9th century, where they used bamboo tubes filled with gunpowder and a projectile to create what was called a fire lance. " + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "In the book, "The Art of War," written by Sun Tzu, mentions the use of a device called a fire lancer, which was essentially a tube filled with gunpowder and a projectile." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "It was the first recorded use of gunpowder in warfare. From there, gunpowder weapons spread to the Middle East and Europe." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "In the 14th century, the first handguns were developed in Italy." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "This was when they discovered that a handheld firearm could be created by adding a barrel and a trigger mechanism to the fire lance." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "It is written in De Re Militari, written by Italian engineer Roberto Valturio, describes a handheld firearm that used gunpowder to shoot projectiles." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "But it wasn't until the 16th century that guns really became widespread." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "That's when the arquebus was developed, which was a long gun that used a matchlock to ignite the gunpowder. " + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The arquebus was a game-changer in warfare because soldiers could now shoot from a distance, which was much safer than getting up close with a sword or spear." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Our local museum has a replica of an arquebus. It's heavy and unwieldy, but it was a significant advancement in the evolution of guns." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The matchlock mechanism was soon replaced by flintlocks, which were more reliable, and then came muskets, which were lighter and more accurate." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "From there, guns continued to evolve, with rifles and other types of firearms being developed." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The Industrial Revolution led to the mass production of firearms, and they became a standard part of military equipment." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "However, the invention of guns also had significant impacts on society." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "hey led to changes in warfare tactics and ultimately played a role in shaping the world as we know it today. " + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The development of guns and the resulting changes in warfare also influenced other aspects of society, such as the rise of nationalism and the development of modern science and technology." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "In conclusion, the history of guns is a complex and multifaceted one." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "It began with a simple invention in China, and over the centuries, it evolved into the sophisticated firearms we have today." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "But it's important to remember that with every technological advancement comes both benefits and drawbacks, and guns are no exception." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "And that, my friends, is the history of guns in a nutshell." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Thanks for listening to me sir. I'd love to tell you more about it, but I've got to get dinner ready. It's spaghetti night." + textSuffixDialogAll, snd_TextScroll_Nerd );	 	
	 dialog_I++;		 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Thank god it's over.)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "See you next time sir." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 	 
	 dialog_I++;



     /// story 2 History of Video Games
	 dialog_I = 350;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The history of video games is a fascinating one." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "It all began in the early 1950s when computer scientists started experimenting with ways to use computers for entertainment." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "In the book, Computer Lib/Dream Machines, written by Ted Nelson in 1974, describes the earliest examples of computer games." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "They were simple text-based games that ran on mainframe computers and were played using punch cards." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "But it wasn't until the late 1960s and early 1970s that video games really took off." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "In 1967, a group of engineers at MIT created a game called Spacewar!" + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "It was the first video game to be played on a computer, and it paved the way for the industry we know today." + textSuffixDialogAll, snd_TextScroll_Nerd );	 	
	 dialog_I++;	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The Magnavox Odyssey was the first true home video game console." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "It was released in 1972 and came with several games, including a tennis game that could be played on a TV set." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "From there, video games continued to evolve." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "In the late 1970s, the Atari 2600 was released, which allowed gamers to play a variety of games on their home TVs." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "This was the beginning of home consoles, as you well know to be a dubious cause of the downfall of the modern arcades." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Of course we all know about Censored for Copyright so We Don't Get Sued one of the most popular and influential video games of all time." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "It was released in 1985 and helped establish a certain famous console developer as a dominant player in the industry." + textSuffixDialogAll, snd_TextScroll_Nerd );	 	
	 dialog_I++;	 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "But video games didn't just revolutionize entertainment. " + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "hey are still having an impact on technology, as the need for faster and more powerful computers leads to advances in computing hardware and software." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "In conclusion, the history of video games is a long and varied one, with many different players and innovations along the way." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "From the early days of punch cards to the modern era, video games have always been at the forefront of technological advancement." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "And that, my friend, is the history of video games in a nutshell." + textSuffixDialogAll, snd_TextScroll_Nerd );	 	 		 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Thanks for listening to me sir. I'd love to tell you more about it, but I've got to get dinner ready. It's spaghetti night." + textSuffixDialogAll, snd_TextScroll_Nerd );	 	
	 dialog_I++;		 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Thank god it's over.)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "See you next time sir." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 	 
	 dialog_I++;	 


     /// story 3 - History of Our City
	 dialog_I = 400;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "It all began in the 1920s, when the city was in its heyday as the epicenter of the automotive industry." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The city was thriving with manufacturing plants, but as the decades progressed, social and economic disparities began to take hold, giving way to an inexorable decline." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "By the 1960s, the city was plagued by urban decay and was fraught with unbridled corruption." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Political malfeasance and avarice had penetrated deep into the bureaucratic fabric, stifling any hopes of substantive reform." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "This left the city's populace mired in dire straits, with a marked paucity of educational and employment opportunities." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "But this was only the beginning." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "In the 1970s, the candle industry, our great city's lifeblood, was severely impacted by a confluence of factors, including subpar management, foreign competition, and the skyrocketing cost of raw materials." + textSuffixDialogAll, snd_TextScroll_Nerd );	 	
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The city's economy suffered a devastating blow, and its social ills were amplified." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Then, in the summer of 1983, the city was wracked by a series of riots, sparked by mounting frustrations stemming from poverty, crime, and police brutality." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The protests quickly devolved into anarchic chaos, and the city was plunged into a state of profound disarray." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The city's infrastructure crumbled, and basic necessities such as clean water and medical care were all but inaccessible." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The economy had reached a point of no return, and the city's social fabric was frayed beyond repair." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "he once-great city had fallen into a bleak and intractable morass, serving as a cautionary tale of the pitfalls of institutional corruption and economic neglect." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 		 
	 dialog_I++;	 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Thanks for listening to me sir. I'd love to tell you more about it, but I've got to get dinner ready. It's spaghetti night." + textSuffixDialogAll, snd_TextScroll_Nerd );	 	
	 dialog_I++;		 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Thank god it's over.)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "See you next time sir." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 	 
	 dialog_I++;




     /// story 4 - A Medical Diagnosis
	 dialog_I = 450;
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I stand before you today with an exciting breakthrough in the field of medical research." + textSuffixDialogAll, snd_TextScroll_Nerd );	 	
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Through countless hours of experimentation, I have discovered that certain exotic mushrooms possess potent anti-inflammatory and anti-microbial properties." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Those can be used to treat a rare and debilitating medical condition that affects the feet." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The condition I speak of is known as Pedal Malanoidosis, a complex and enigmatic disorder that causes severe discoloration and inflammation of the feet." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "A disease that my grandmother has unfortunately suffered from for years." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "It is a disorder that has confounded medical professionals for years, with little progress made in understanding its causes or developing effective treatments." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "But through careful study and experimentation, I have uncovered a potential cure for this troubling disorder." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The key lies in the spores of two particular types of mushrooms - Cordyceps Sinensis and Grifola Frondosa." + textSuffixDialogAll, snd_TextScroll_Nerd );	 	
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "These mushrooms, with their unique properties and potent anti-inflammatory and anti-microbial agents, have shown remarkable promise in treating Pedal Malanoidosis." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The process by which these mushrooms are used is simple but effective." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "First, the affected area is thoroughly cleaned and dried." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Then, a paste is created by grinding the mushrooms into a fine powder and adding water." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The paste is then applied to the affected area and left to dry for several hours." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "This process is repeated twice a day for seven days." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The results have been nothing short of remarkable." + textSuffixDialogAll, snd_TextScroll_Nerd );	 	
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "In all of my trials, the application of the mushroom paste has led to significant reductions in inflammation and pain associated with Pedal Malanoidosis." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The patient who received this treatment - my grandmother of course - has experienced a marked improvement in their ability to move and walk." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "And many have reported a complete recovery from the disorder." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "But while these results are certainly encouraging, I must not become complacent." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Further studies are needed to fully understand the mechanisms by which these mushrooms work and to ensure their safety and efficacy." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I must also continue to explore the medicinal properties of other exotic mushrooms, which may hold the key to curing other debilitating disorders that currently elude medical science." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "In conclusion, the discovery of the potential cure for Pedal Malanoidosis is an exciting development that holds enormous promise for the medical community and my grandmother in particular." + textSuffixDialogAll, snd_TextScroll_Nerd );	 		 
	 dialog_I++;
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The study of exotic mushrooms and their medicinal properties is an ongoing process, one that requires continued dedication and research to unlock its full potential." + textSuffixDialogAll, snd_TextScroll_Nerd );	 	
	 dialog_I++;		 
	 
	 
	 arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "But with trial and commitment, I am confident that I can continue to make groundbreaking discoveries that improve the health and well-being of people around the world, but mostly my grandmother." + textSuffixDialogAll, snd_TextScroll_Nerd );	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Thanks for listening to me sir. I'd love to tell you more about it, but I've got to get dinner ready. It's spaghetti night." + textSuffixDialogAll, snd_TextScroll_Nerd );	 	
	 dialog_I++;		 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Thank god it's over.)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "See you next time sir." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_550;	 	 
	 dialog_I++;	 
	 	 

    #endregion
	   
	   
	#region wife
	
	 dialog_I = 550;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh and look at the time, I think I'll get to leave soon.)" + textSuffixDialogAll, snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_GivenPresentD4_Wife_Day5;	 		 
	 dialog_I++;		
	
	
	 
	// #1 if not given a present last day, the split if chosen nerd/jez
		
	 dialog_I = 551;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "You son of a witch..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Hey you know I hate when you say that." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "I saw her walking out of here!" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(DAMMIT. That woman is going to cost me.)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "I came to the mall today to get that new Brazillian Wax thing done, and here you are talking to other women!" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_JezOrNerd_Wife_Day5;		 	 
	 dialog_I++;
     
	 // if chosen nerd
	 dialog_I = 560;		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Look, I actually kicked her out of here so that nerdy guy could stay." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Wait, you did that?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes, I'm not lying. You should have seen him too." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + " I did and I'm glad to hear that. I... I take back what I said." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Well thank you dear." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Well, I've got to get home anyways. I have to get up early for blah blah blah blah blah." + textSuffixDialogAll, snd_TextScroll_WifeBlah );	 	
	 dialog_I++;	
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I... That sounds wonderful." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I have no clue what she's talking about.)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;		 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Bye dear, see you at home!" + textSuffixDialogAll, snd_TextScroll_WifeBlah );	 	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Bye bye." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_650;	 
	 dialog_I++;	
	 
	 // if chosen jez
	 dialog_I = 580;		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I'm sorry dear, she wouldn't leave. She even made me kick out a nerdy guy." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Ohhhh.... She 'made you'..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dammit, I shouldn't have said it that way.)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;		 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "So now she's got some kind of power over you?" + textSuffixDialogAll, snd_TextScroll_WifeBlah );	 	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "blah blah blah blah blah blah blah" + textSuffixDialogAll, snd_TextScroll_WifeBlah );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Don't just stand there with that stupid look on your face. If I ever see her here again blah blah blah blah blah blah?" + textSuffixDialogAll, snd_TextScroll_WifeBlah );	 	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes... dear. I guess I'll see you at home then?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;		 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Don't count on a warm dinner waiting for you..." + textSuffixDialogAll, snd_TextScroll_WifeBlah );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Since when am I getting warm dinners any more?)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Sheesh, I can't catch a break. And now here comes that cop again, surprise surprise he's here.)" + textSuffixDialogAll, snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_650;	 
	 dialog_I++;


	 /// premade choise from day 4
	// #2 if  given a present last day, the split if chosen nerd/jez	 
	 dialog_I = 600;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Oh my dear husband. Thank you so much for the gift last night." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You're welcome. It made me think of you." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;		 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Hehe, aren't you just so sweet." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Well, I was down at the salon getting this new wax job done. It's Brazillian!" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "(Wax job? Is she making candles?)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Just wait until you see it." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Anyways, as I was saying, I saw Jezebelle walking by and I just know she was in here." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "But I've got to say, I trust you and I know you wouldn't dare let her sweet talk you. Right dear?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Right dear?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer+ "Of course dear. I definitely kicked her out anyway. Told her to hit the road..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Oh my, of course you would, hehehe." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Well dear, I'm going to get home and get you a nice dinner ready, then later I'll teach you about Brazil." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Hahaha, sounds great. Oh my, hun it looks like I have customer headed this way." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Wife, textPrefix + "Oh well don't let me keep you from business. Love you!" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Love you too!" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_650;	 
	 dialog_I++;


	#endregion   
	
	
	#region cop
	dialog_I = 650;
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  ,  "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "**WHEEZE**  **WHEEZE** **WHEEZE** " + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Are you ok?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Huff, I... Huff, ran... Huff, from across town..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ran? Why didn't you drive your car?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Keys..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Lost my keys... Huff..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh no, I hope that clown didn't steal those too, but it wouldn't surprise me if this guy lost them either.)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "There, I think I got my breath.. Whoo..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Good deal, so what can I do for you sir?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Lost my pistol. Can't believe I left it somewhere." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "No kidding, how on earth does that happen?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "You got me. I had a short break downtown, got in my car and drove a few blocks before I realized I didn't have my gun belt. " + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Then when I went back to see if it was where I left it, it was gone! " + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ok then, the clown's story checks out.)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "I remembered I saw some in your stock last time and I knew I could count on you to help me out." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Always here to serve." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Damn, he knows I have them, I don't think I can turn this guy down this time.)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "I gotta have one, bare bones, so as not to attract any attention, what do you say?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Sorry Bam Bam, feels like there's no way I can refuse him this time.)" + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Cop_Day5;		 
	 dialog_I++;


    // choise -> sell pistol to him back
	dialog_I = 680;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Actually sir, the only ones we have left have a recall. They basically fall apart when you try to do anything with them and they misfire a LOT." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "That's not good. It would never pass inspection when I turn it in and the last time I turned in a defective weapon they said tear up another one and you're outta here." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "I don't even know how that pistol got filled with balloons." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "That's a really strange problem." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Better to be safe and not risk it I suppose. I'll figure this one out. Might cost me some pay too." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	 
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Maybe it'll turn up out of nowhere the same way it mysteriously disappeared." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "That's a good outlook." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;		 
	 dialog_I++;		 


    // choise -> sell pistol to him back
	dialog_I = 690;
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "You're the best." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;		 
	 dialog_I++;


    // continue 700
	dialog_I = 700;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Oh and, about those permits. It's not really a law anymore ya know." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "So I have come to learn..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Sorry about all that." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "It's no bother, really..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  4, text_Name_Unknown, textPrefix + "**RING RING**" + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_ScreenShake_TelephoneRing;	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Oh well, looks like you've got a call. I've got a long walk ahead of me so I'll let you be." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk ,  "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Thanks officer, always good doing business with you." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;
	 
	#endregion 


    #region kyle nun ransome  720

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Who the heck is calling? I don't think this phone has rang in years.)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Hello." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "Bossman! I need help!" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Kyle? What the hell happened? Where are you?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "I got myself into some trouble bossman." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh great, are you at the police station? That cop from the other day just left and maybe..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "NO NO NO! No cops, PLEASE!" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh Kyle... What kind of trouble are you in?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "I got kidnapped." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "KIDNAPPED!? BY WHO!?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "The nuns. After what happened the other day I thought I could try to scare them off, but they don't mess around bossman." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "Bossman, can you save me? PLEASE!?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Kyle, you idiot.)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Unknown, textPrefix + "(Click sound)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Unknown, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Unknown, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Nun, textPrefix + "Your employee tried to harass one of our holy members, that is sacrilegious." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Nun, textPrefix + "But we are not without mercy, the sheep shall come back to the herd." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Nun, textPrefix + "You have to pay up to attain absolution." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "What!? How much are you asking for him?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Nun, textPrefix + "$500. The price for sheep gone the wrong way is usually much more steep." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Nun, textPrefix + "Declining our very generous offer will have unfortunate consequences." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Nun, textPrefix + "(Click sound)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Unknown, textPrefix + "..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "They said to come to the old warehouse on Main Street." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Dammit Kyle. I guess $500 isn't too much, but it's not like business has been booming..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "Bossman, can you save me? PLEASE!?" + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_NunRansom_Day5;		 
	 dialog_I++;


    // if yes
     dialog_I = 750;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Of course Kyle, why would I say no! I'll be there soon." + textSuffixDialogAll, snd_TextScroll_Default );
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day5;	 
	 dialog_I++;



   // if no
     dialog_I = 760;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Kyle, I just can't, you know money is tight around here." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;
	 
	 	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "What are you saying bossman?" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Kyle, I'm sure they'll let you go if you apologize." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

	 	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "But bossman..." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++; 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Goodbye Kyle, I know you'll be ok." + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Nobody, textPrefix + "(Click sound)" + textSuffixDialogAll, snd_TextScroll_Default );	 	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "He'll be ok, surely they won't hurt him. I bet I'll see him first thing tomorrow." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2Start_Day5;	 
	 dialog_I++;


     #endregion

    #region random sale 2   781 - 820


	 dialog_I = 780;	   
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 dialog_I++;	
	 
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Random1_IdleStatic, spr_Dialog_Random1_Idle,  spr_Dialog_Random1_TalkStatic,   spr_Dialog_Random1_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day3;		// overide and setup  
	 dialog_I++;		
	
	
	// begin random sale 1
	 
	 dialog_I = 800;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;	 
	 dialog_I++;


	 dialog_I = 810;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;	 	 
	 dialog_I++;


	 dialog_I = 820;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogAll, snd_TextScroll_Default );			 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;	 	 
	 dialog_I++;	
	
	
	
#endregion // end of random sale 2	   

// extro
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing ,  "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Welp, it's  been a day, better pack up and get home." + textSuffixDialogAll, snd_TextScroll_Default );	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_DayEnd_Day5;	 
	 dialog_I++;
	   
#endregion end of day 5