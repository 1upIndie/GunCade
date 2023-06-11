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
 text_Name_Player     = "[font_Cutscene_Name][scale, 0.7][#F9CE7B]Player[/c][/scale]";
 
 text_Name_Jez        = "[font_Cutscene_Name][scale, 0.7][c_purple]Player[/c][/scale]"; 
 text_Name_Wife       = "[font_Cutscene_Name][scale, 0.7][c_purple]Wife[/c][/scale]"; 
 text_Name_Nerd       = "[font_Cutscene_Name][scale, 0.7][c_white]Nerd[/c][/scale]"; 
 
 text_Name_Kyle       = "[font_Cutscene_Name][scale, 0.7][c_white]Wife[/c][/scale]";  
 text_Name_Granny     = "[font_Cutscene_Name][scale, 0.7][c_white]Granny[/c][/scale]";   
 
 text_Name_AngryDad   = "[font_Cutscene_Name][scale, 0.7][c_white]Angry dad[/c][/scale]";   
 text_Name_Weather    = "[font_Cutscene_Name][scale, 0.7][c_white]Weather woman[/c][/scale]";   

 text_Name_Cop        = "[font_Cutscene_Name][scale, 0.7][c_white]Cop[/c][/scale]"; 
 text_Name_Clown      = "[font_Cutscene_Name][scale, 0.7][c_white]Bam Bam[/c][/scale]";   

 text_Name_Shadow     = "[font_Cutscene_Name][scale, 0.7][c_white]Shadow[/c][/scale]";   
 text_Name_Victor     = "[font_Cutscene_Name][scale, 0.7][c_white]Victor[/c][/scale]";   
 
 text_Name_Nun        = "[font_Cutscene_Name][scale, 0.7][c_white]Nun[/c][/scale]";  
 
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
 
 
	  function setText(index_,  npcTalking_, name_, txt_ ){ 
		 dialogBlock_Txt_PersonActive[index_]  = npcTalking_;  
         dialogBlock_Name[index_]              = name_;	  
	     dialogBlock_Txt[index_]               = txt_;  	  
	  
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
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hey hey, my boy, how are you doing on this glorious day?" + textSuffixDialog);		 
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Hi Viktor, didn't expect to see you so early." + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "My only tenant who can't pay rent starts a [#5893FF]side business[/c] inside my mall and he doesn't expect to see me first thing!?" + textSuffixDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Ahhh, I can smell the money already." + textSuffixDialog);	
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I wonder if he thinks about anything except money)" + textSuffixDialogDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Speaking of money..." + textSuffixDialog);	
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Nope)" + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "I had the brilliant idea to add a casino to the mall. I'm going to be filthy stinking rich!" + textSuffixDialog);	
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Hey, I wonder if I can get some slot machines in here, might bring in some business…)" + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Now, has my brother come to see you yet?" + textSuffixDialog);	
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "We spoke yesterday, he said he would come by this morning too." + textSuffixDialogDialog);	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Oh good, I'd like to see my little bro." + textSuffixDialog);	
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "He doesn't call, he doesn't write, he just travels the country getting into mischief. " + textSuffixDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Maybe you should call him sometime?" + textSuffixDialogDialog);	
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Ha, this is why I like you, you're so funny." + textSuffixDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "You know, that reminds me of a joke..." + textSuffixDialog);	
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I wasn't joking... I never understand this guy.)" + textSuffixDialogDialog);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(But I can't say anything after he's let me get so far behind in rent and not kicked me out.)" + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(At least he knows there's nothing I can do.)" + textSuffixDialogDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Since they shipped everyone out of the city under the age of 20 after the rebellion, nobody comes to an arcade anymore.)" + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I'm surprised they haven't built a wall yet to keep tourists out, not that any would ever come here.)" + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "So the pirate says: ARGH, it's driving me nuts!" + textSuffixDialog);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "HAHAHAHAHAHAHA." + textSuffixDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "hehehe (same joke, different day.)" + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Lad, I gotta tell ya, I think this little side business is gonna be a boon for both of us." + textSuffixDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "So don't worry about the legal and moral gray area." + textSuffixDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "As long as I can keep my arcade and nobody gets hurt." + textSuffixDialogDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Look, my brother doesn't exactly sell the highest quality weapons. I doubt anyone could hurt themselves, much less someone else." + textSuffixDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Wait, I'm selling low quality goods?" + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Absolutely my boy!" + textSuffixDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Why would anyone want to sell quality? It's bad for business." + textSuffixDialog);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Besides, if you're the only affordable option for weapons in this entire city, of course your supply is shit." + textSuffixDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Now I gotta worry people will get mad at me)." + textSuffixDialogDialog);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Look at it this way." + textSuffixDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "You sell a little pistol to someone. They go to use it and the whole thing falls apart..." + textSuffixDialog);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Nobody gets hurt AND they gotta come back to you to buy another one." + textSuffixDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "That's a lucrative business model if you ask me. I can see the mountains of money pouring in already." + textSuffixDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Sounds great, until someone comes in and punches me in the face over it.)" + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You know what Vik." + textSuffixDialogDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "As long as I get to keep the arcade running, maybe it'll survive long enough to see the rebellion end and the city return to normal." + textSuffixDialogDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Oh lad, you don't just have high hopes, you have wild dreams, but I like that about you." + textSuffixDialog);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Now remember our deal, I may be generous, but you are way late on rent so you owe me interest." + textSuffixDialog);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "If you can't pay $20,000 in the next 14 days, I have to kick you out." + textSuffixDialog);	
	 dialog_I++;
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I know the deal Vik." + textSuffixDialogDialog);	
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Don't look so sad, I'll probably open a second strip club in your place." + textSuffixDialog);	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "You wouldn't believe how much money the American Spread Eagle makes." + textSuffixDialog);	
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Actually I would. Almost every person I see walk in this place goes there. I wouldn't be caught dead in that place.)" + textSuffixDialogDialog);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Vik, you know my wife hasn't let me hear the end of it since that place opened. She thinks I'm there all day, now she drops in to check on me randomly." + textSuffixDialogDialog);	
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Hahaha, that sounds like a 'you' problem." + textSuffixDialog);	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Tell you what, if you want to stop by some time, I moved my office into the club. Come see me and I'll have one of the girls show you a thing or two." + textSuffixDialog);	
	 dialog_I++;	 
	 
	 
	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I've seen those girls, I'd rather not.)" + textSuffixDialogDialog);	
	 dialog_I++; 
	 
	 
  #endregion	 
	 /// shadow enters index 51
	 
	 
#region shadow 52 -

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "enter shadow");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "MY BROTHER! HAHAHAHA!" + textSuffixDialog);	
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Unknown, textPrefix + "Hello... " + textSuffixDialog);	
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Brother" + textSuffixDialog);	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "V, mind if I take care of business here and then I'll stop by your office?" + textSuffixDialog);	
	 dialog_I++;	 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "You haven't changed a bit." + textSuffixDialog);	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Victor, textPrefix + "..." + textSuffixDialog);	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Victor, textPrefix + "..." + textSuffixDialog);	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "I guess I'll let you two get things ready, I've got glitter covered money to count anyways." + textSuffixDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "exit default");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Did you do everything just like I told you?" + textSuffixDialog);	
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes of course, I even ate the list after so nobody could find it." + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "What the hell! I didn't say to do that..." + textSuffixDialog);	
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(It was a joke, guess arms dealers don't have a sense of humor)" + textSuffixDialogDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(On the flipside, is it a good idea to be super friendly with a shadow figure that supplies guns?)" + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Maybe I should be more serious...) " + textSuffixDialogDialog);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(It was a joke, guess arms dealers don't have a sense of humor)" + textSuffixDialogDialog);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Well, probably for the best you did." + textSuffixDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Selling weapons is a real gray area here with all the local government disbanding and the police force making up rules as they go..." + textSuffixDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "So you need to be diligent about what you sell and to whom." + textSuffixDialog);	
	 dialog_I++;
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Right, gotta use my head." + textSuffixDialogDialog);	
	 dialog_I++;
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Exactly, and I don't plan on hooking you up with an entire arsenal until you prove yourself. Gotta start small and show you know what you're doing first." + textSuffixDialog);	
	 dialog_I++;	 
	 
	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Understood." + textSuffixDialogDialog);	
	 dialog_I++;	 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "I usually don't do this, but I think it's a good idea for me to make sure you know exactly what you're doing, so let's have a little practice." + textSuffixDialog);	
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh cool, so this is like my tutorial level." + textSuffixDialogDialog);	
	 dialog_I++;	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "What? Are you even taking this seriously?" + textSuffixDialog);	
	 dialog_I++;	 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes, sorry, of course." + textSuffixDialogDialog);	
	 dialog_I++;		 
	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Know what, never mind, you be you, it'll be the greatest front for under the table weapon sales I’ve ever seen." + textSuffixDialog);	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Way better than the guy I had that pretended to be a clown." + textSuffixDialog);	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(And he says I'm weird? Wait, did he say clown...)" + textSuffixDialogDialog);	
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "First lesson, don't trust anyone. I don't care if it's a sweet old lady, anyone could be a cop or someone looking to rob you as soon as they have the goods." + textSuffixDialog);	
	 dialog_I++;	 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Selling weapons to the wrong person can get you in real trouble, really fast. You can refuse to sell to anyone for any reason." + textSuffixDialog);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "The most important thing about it is..." + textSuffixDialog);	
	 dialog_I++;	 
	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "The most important thing about it is..." + textSuffixDialog);	
	 dialog_I++;		 
	 
	 
	 // kyle interrupts
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hey boss man, I saw Viktor coming and wanted to let you know he was on his way down here." + textSuffixDialog);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,  text_Name_Player, textPrefixPlayer + "Yeah, he was already here, bud. Viktor is a lovely fella..." + textSuffixDialogDialog);	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,  text_Name_Player, textPrefixPlayer + "Hey, Kyle, I have some business to tend to, do you mind making sure everything is turned on for me?" + textSuffixDialogDialog);	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Oh yea, sorry about that. I'll chat with you later bossman." + textSuffixDialog);	
	 dialog_I++;	 
	 
		 
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I wasn't really listening. I should be. If I want to boost my income. I have to take this a bit more serious)" + textSuffixDialogDialog);	
	 dialog_I++;	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Sorry for that, continue." + textSuffixDialogDialog);	
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "So many weirdos in this town..." + textSuffixDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Anyways, where was I? Oh yeah Second lesson..." + textSuffixDialog);	
	 dialog_I++;


	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I don't think we finished lesson one. Oh well, I wasn't really listening.)" + textSuffixDialogDialog);	
	 dialog_I++;	
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Selling is a fine art. Everyone knows what they want, but they rarely know what they need. Some need less than what they want, some need more." + textSuffixDialog);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Most people will accept what you are willing to give them if they can afford it and it fits their needs." + textSuffixDialog);	
	 dialog_I++;	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Pay close attention to what someone asks for. The better you provide them with what they want, the more likely they'll be a return customer." + textSuffixDialog);	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Lesson C..." + textSuffixDialog);	
	 dialog_I++;		 

 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(wasn't he using numbers before?)" + textSuffixDialogDialog);	
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Failure is always an option. Everyone has their upper and lower limits on what they're willing to accept." + textSuffixDialog);	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Make a bad offer and they'll bail on you, nobody in this town has the patience to haggle with someone they think is trying to rip them off. " + textSuffixDialog);	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Final lesson, try to sell me something." + textSuffixDialog);	
	 dialog_I++;
	 
	 
     // tutorial begin
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Let's say I appear to be a garden variety thug and I say I want a light, powerful weapon that lets me keep a little distance, and I have 2000 to spend." + textSuffixDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Shadow_Day1_Tutorial;
	 dialog_I++;
     
	 
	 // sale
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Good job, you didn’t screw up! You’re a natural." + textSuffixDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;	 
	 dialog_I++;		 
	 
	 // refuse
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Well, I don't know why you did that, but that’s fine, it doesn’t hurt to practice saying no." + textSuffixDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;
	 dialog_I++;		 

	 // fail
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "You didn't listen at all. Hopefully you get the hang of this because I need to make a profit too." + textSuffixDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;
	 dialog_I++;	
	 
	 
	 
	 // replys, start at 150 , after sale/refuse/fail
	 dialog_I = 150;
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Got it. I’ll do my best " + textSuffixDialogDialog);	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Oh and remember, these are all on consignment so I'll collect my portion later." + textSuffixDialog);	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Don't spend what you owe me before I come back. You do NOT want to be in debt to ME." + textSuffixDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I really should not make this one angry.)" + textSuffixDialogDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Ok then and good luck." + textSuffixDialog);	
	 dialog_I++;

#endregion


#region Granny

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh, here comes someone already.)" + textSuffixDialogDialog);	
	 dialog_I++;	


	 
	 
     // granny enters
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "Hello young man, I was reading the paper and noticed the article advertising your shop." + textSuffixDialog);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "It stated that you got some.. “special offers”. Oh young man, I do love some “specials”!" + textSuffixDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes ma'am, I am here to serve your special needs. How may I be of service?" + textSuffixDialogDialog);	
	 dialog_I++;	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "Oh aren't you just a dear sweet young man." + textSuffixDialog);	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "I am in need of something for protection. My neighborhood has grown really dangerous." + textSuffixDialog);	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I understand, this whole city is nothing but danger." + textSuffixDialogDialog);	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "That it has. Now, I don’t want to hurt anyone, I just want to make a show of force if I have to so that nobody wants to hurt an old granny." + textSuffixDialog);	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + " I think I could go for a small pistol, something that fits in my purse and is very light." + textSuffixDialog);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "That way it can’t really hurt anyone and I can feel safer, and I only have 1000 to spend, it's half my life savings..." + textSuffixDialog);	 
	 dialog_I++;

     // begin granny sale
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(A small pistol for a granny, she probably needs the lightest one I have in stock)" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Granny_Day1;	
	 dialog_I++;	 


	 // jump to 200
	 dialog_I = 200;
	 
	 // sale! 200
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "Thank you sweet dear, I feel like I could rob a... I mean protect myself from a robber. See you later!" + textSuffixDialog);	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_210;		 
	 dialog_I++;

	 // Refuse! 201
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "I see, well, I best be off then." + textSuffixDialog);	 
	 dialog_I++;
	  
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I suppose so, now if you please, I have other customers to tend to..." + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_210;	 
	 dialog_I++;


	 // Fail! 204
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "And I thought my hearing was bad. You know what, I think I'll go see that clown that runs around town selling cheap goods, maybe he'll help a granny out." + textSuffixDialog);	 
	 dialog_I++;	 
	  
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Did she say a clown? Surely she was just calling someone a name and it's not a real clown, but in this city, nothing would surprise me." + textSuffixDialogDialog); 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_210;	 
	 dialog_I++;



	 // random sale after granny	 
	 dialog_I = 210;
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Did she say a clown? Surely she was just calling someone a name and it's not a real clown, but in this city, nothing would surprise me." + textSuffixDialogDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1Start_Day1;	 
	 dialog_I++;    	 


    #endregion


    #region random sale 1   220 to 
	
	
	// begin random sale 1
	 dialog_I = 220;

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day2;		
	 dialog_I++;
     
	 
	 dialog_I = 230;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_250;	 
	 dialog_I++;


	 dialog_I = 240;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_250;	 	 
	 dialog_I++;


	 dialog_I = 250;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_250;	 	 
	 dialog_I++;	
	
	
	
#endregion // end of random sale 1	



   #region jez 250


	 dialog_I = 250;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hey there sugar. Been a while since I got to see your sweet face." + textSuffixDialog);  
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh good, maybe it will be a good day after all.)" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Uhm, eh... I. What can I do for you Jez?" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Well you know I love to come in here just to see you and all, but it seems you may have something more that I need today." + textSuffixDialog);  
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(If she's a tease AND a customer, let's hope my wife does not see her here)" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She always flips out over nothing.)" + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You know what I want. Something long, hard, and ready for me to put my lips on it and blow." + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I..." + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Am I dreaming right now?)" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Are my hands sweating?)" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(The last time that happened I was a teenager.)" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She knows how to get me all worked up.)" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Keep it cool, you can do this. Show her you aren't phased by it.)" + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes.... I mean no, I mean yes." + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "..." + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ok, knock it off buddy, you're married and if she finds out, you're dead.)" + textSuffixDialogDialog);	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Oh dear, did I get you all worked up? I'm sorry sugar." + textSuffixDialog);  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "No, no, no, it's not that. I think I know exactly what you need..." + textSuffixDialogDialog);	 
	 dialog_I++;

     
	 // jez sale
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Long, hard, and easy to blow... wait, she was referring to a weapon, right?)" + textSuffixDialogDialog);	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Jez_Day1;		 
	 dialog_I++;


     // sale! 301
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Oh sugar, you sure know how to please a woman." + textSuffixDialog);  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I hope she can't see me blushing.)" + textSuffixDialogDialog);	 
	 dialog_I++;
    
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "I can't wait to see what else you can do for me. See you round sugar." + textSuffixDialog);  
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Pie... Ugh, I mean bye..." + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Seriously, PIE, I'm such an idiot.)" + textSuffixDialogDialog);	 
	 dialog_I++;



     // refuse! 306
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "I can't believe you would turn me down. Now I don't know if I can ever show my face here again." + textSuffixDialog);  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I'm sorry, but I can't." + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "..." + textSuffixDialog);  
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(wow, she looked pissed.)" + textSuffixDialogDialog);	 
	 dialog_I++;



     // refuse! 310
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "And just why would I want to put my mouth on that?" + textSuffixDialog);  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dammit, she got me so worked up I totally screwed this sale.)" + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "You know, maybe I can forgive you this once, but I'll have to think about it." + textSuffixDialog);  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Please do, I'm so sorry about that. Are you sure you don't want me to see what else I can do for you?" + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Now you're starting to sound desperate. Not a good look. " + textSuffixDialog);  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "We'll see if I want to forgive you and I'll give you another shot in a few days. Maybe by then you'll be cooled off." + textSuffixDialog);  
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(DAAAAMMMMMIIIIIITTTTTT.......)" + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ok, calm down, gotta be ready for the next sale. Oh man, what if my wife finds out she was in here?)" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "( It doesn't matter that nothing happened. Ugh, I can't even refuse a woman without getting in trouble.)" + textSuffixDialogDialog);	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2Start_Day1;	 
	 dialog_I++;


#endregion




    #region random sale 2   350 to 

      dialog_I = 350;
 
     // random sale 2
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh good, another customer)" + textSuffixDialogDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day1;		 
	 dialog_I++;
	
	
	
	// begin random sale 1
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day2;		
	 dialog_I++;
     
	 
	 dialog_I = 360;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;	 
	 dialog_I++;


	 dialog_I = 370;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;	 	 
	 dialog_I++;


	 dialog_I = 380;	 
	 // mess up/!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;	 	 
	 dialog_I++;	
	
	
	
#endregion // end of random sale 2	


    #region wife    380   

	 dialog_I = 380;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Ugh, this place is a real dump today." + textSuffixDialog);	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Please no, not her, not today...)" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Hello, dear..." + textSuffixDialog);	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "What's this I hear about your little side business?" + textSuffixDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "Hunny, please it's nothing." + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "NOTHING!!! What do you mean, nothing? You're trying to make extra money and keep it from me, I know you are." + textSuffixDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(Of course I am, what is this really about?)" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "That's not it and I didn't want to tell you this because I knew you'd be mad, but I'm about to lose the arcade." + textSuffixDialogDialog);	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Oh what a surprise! Nobody ever comes to this dump to spend money except your own dummy employee." + textSuffixDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "So why are you mad I'm trying to make money then?" + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Because, what's yours is mine and I don't want you thinking you're going to make enough to leave here without me." + textSuffixDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "Who said anything about leaving?" + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "I've seen that JEZEBELLE that comes in here and flirts with you. Don't think I don't know what's going on." + textSuffixDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(Ahh, so this is really what is going on. She's jealous over nothing again.)" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(Wait, how does she know her name?)" + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Wipe that stupid grin off your face, it just proves I'm right." + textSuffixDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "So what is it you want me to do then?" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(I know where this is going. She's going to tell me all the things I do wrong again.)" + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(Just gotta pretend to listen until she runs out of steam. Just hope a customer doesn't come in anytime soon.)" + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "blah blah blah I want. Blah blah your fault blah blah. I want you to blah blah blah more money." + textSuffixDialog);	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "blah blah you better blah blah. Blah my psychic told me you blah blah nothing good." + textSuffixDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "blah blah blah I want blah. Blah blah situation also blah blah blah give me." + textSuffixDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Buy me flowers or blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.." + textSuffixDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(What was that last part?)" + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "exit default");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "You better get your priorities straight or you'll regret it. DAMMIT, now I'm going to be late for my hair appointment. Thanks for taking up so much of my time." + textSuffixDialog);	 
	 dialog_I++;

#endregion



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I think that's got to be enough for one day." + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "Kyle, where are you?" + textSuffixDialogDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Kyle, textPrefix + "Right here boss man!" + textSuffixDialog);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + " Kyle, run the store. I'm gonna take a look at the books for today. I'll be in my office if you need me." + textSuffixDialogDialog);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Kyle, textPrefix + "Right on boss man. I got this." + textSuffixDialog);	 





#endregion // end of day 1

#region  day 2   222222222222 
   
 day_I    = 1; // day 2
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I );  // first cutscene   
   
   
	 #region angry dad 0 to 62

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Here's hoping for a better day. Maybe some beautiful lady will come in and want to take me away to..." + textSuffixDialogDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(or not)" + textSuffixDialogDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "..." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "..." + textSuffixDialogDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "..." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(What the hell is going on here)" + textSuffixDialogDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "..." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Uh... Can I help you?" + textSuffixDialogDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "Daughter..." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "Daughter... dating..." + textSuffixDialog);		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Is that a good thing or a bad thing?" + textSuffixDialogDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "BAAAAD..." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Definitely not looking like a good day)" + textSuffixDialogDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "Gimme the dog-gun." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Do I dare ask what you plan to do with it?" + textSuffixDialogDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "DO I ASK YOU HOW TO DO YOUR JOB?" + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ok calm down buddy." + textSuffixDialogDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(If his daughter even lives here she's gotta be at least 20. I've never seen a parent so overprotective of an adult child before.)" + textSuffixDialogDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "DOG GUN. NOW!" + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dammit this guy is a persistent cave-man. Ok, let me think about this one...)" + textSuffixDialogDialog);		 
	 dialog_I++;

     // sale start
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dog-gun? Ah, he means a hunting rifle.)" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_AngryDad_Day2;		 
	 dialog_I++;
 
 
     // end
	 dialog_I = 50;
	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "GIMME GIMME GIMME" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You're wel.... (And he's gone.)" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_70;	 
	 dialog_I++;


	 dialog_I = 55;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "I'M GOING TO CALL MY CONGRESSMAN ABOUT THIS!!" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh sure, now he can talk...) " + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_70;	 	 
	 dialog_I++;


	 dialog_I = 60;	 
	 // mess up!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "WHAT!? I said Beagle, not this crap!" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_AngryDad_IdleStatic, spr_Dialog_AngryDad_Idle,  spr_Dialog_AngryDad_TalkStatic,   spr_Dialog_AngryDad_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ohhhh... Dog gun, now I get it.)" + textSuffixDialogDialog);		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_70;	 	 
	 dialog_I++;

	 #endregion // end of angry dad


    #region random sale 1   70 to 117


	 dialog_I = 70;	   
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Why is my life this way?)" + textSuffixDialogDialog);		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(All I wanted was to settle down, have a family, and live peacefully.)" + textSuffixDialogDialog);		 
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Mom always said I made terrible choices. Tried to tell me what I wanted and didn't want.)" + textSuffixDialogDialog);		 
	 dialog_I++;	
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(If she didn't try to control me though, I wouldn't have made stupid choices.)" + textSuffixDialogDialog);		 
	 dialog_I++;	 
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Random1_IdleStatic, spr_Dialog_Random1_Idle,  spr_Dialog_Random1_TalkStatic,   spr_Dialog_Random1_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh here comes another customer, good, I need a distraction. The stress is killing me)" + textSuffixDialogDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1Start_Day2;		// overide and setup  
	 dialog_I++;		
	
	
	// begin random sale 1
	 dialog_I = 100;

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day2;		
	 dialog_I++;
     
	 dialog_I = 105;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;	 
	 dialog_I++;


	 dialog_I = 110;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;	 	 
	 dialog_I++;


	 dialog_I = 115;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;	 	 
	 dialog_I++;	
	
	
	
#endregion // end of random sale 1	
	
	
	#region  clown enter  150 to
	 dialog_I = 150;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(What... the... hell...)" + textSuffixDialogDialog);		  	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Heyya buddy." + textSuffixDialog);		  	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ummm... Hi. What can I do for you?" + textSuffixDialogDialog);		  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "No time for small talk, I have an offer that you cannot refuse." + textSuffixDialog);		  	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "And that is? I am sorry but I am not really interested in going to clown college." + textSuffixDialogDialog);		  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "You sure? You look like a clown to me." + textSuffixDialog);		  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "And you're a bit of a smart ass for a guy trying to make me an offer." + textSuffixDialogDialog);		  	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Fine, fine. Ya see, I know this guy who is a damn menace, and I've been stealing his weapons to try to keep him from causing more trouble." + textSuffixDialog);		  	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Why are so many weird people coming in here? Starting to really question how smart of an idea this was.)" + textSuffixDialogDialog);		  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "How noble of you..." + textSuffixDialogDialog);		  	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hey, I'm serious. I usually dump his stuff in the river, but now that you're open, I got a deal that is good for both of us." + textSuffixDialog);		  	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(A clown comes in and wants to be taken seriously. The balls on this guy...)" + textSuffixDialogDialog);		  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Fine, let's hear it." + textSuffixDialogDialog);		  	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Anything I pinch off this guy I want to sell to you for cheap." + textSuffixDialog);		  	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "That way, the city is safer, I make some money for my trouble, and you can flip it to make some money for yourself." + textSuffixDialog);		  	 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "This isn't a pawn shop." + textSuffixDialogDialog);		  	 
	 dialog_I++;	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Well it's not really much of an arcade either, now is it?" + textSuffixDialog);		  	 
	 dialog_I++;	 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Bastard has a point, but insulting my business isn't cool.)" + textSuffixDialogDialog);		  	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Hey buddy, watch your mouth, you're not really making a good sales pitch here." + textSuffixDialogDialog);		  	 
	 dialog_I++;		 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Okay, okay, my bad..." + textSuffixDialog);		  	 
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "All I could get this time was his folding baton, so if you want, I'll give you this one for free." + textSuffixDialog);		  	 
	 dialog_I++;		 
	 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "What do you say?" + textSuffixDialog);	
     arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Clown_Day2; /// 
	 dialog_I++;		 


    dialog_I = 200;	 	 
	// choice accepted!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Great, here ya go. Bam Bam the Clown is very happy with your choice!" + textSuffixDialog);	
	 dialog_I++;
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Clown, textPrefix + "Also, one last thing, I pinch this stuff off a cop, so please be discreet and if he ever comes in here you CANNOT sell anything to him." + textSuffixDialog);	
	 dialog_I++;
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Clown, textPrefix + "He's a nice guy but he's just a massive idiot and can't be trusted to use a weapon correctly." + textSuffixDialog);	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Great, what did I just get myself into...)" + textSuffixDialogDialog);		  	 
	 dialog_I++;		 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "exit default");  
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Clown, textPrefix + "Don't worry about it. It's not like laws here are really enforced ya know. I'll see ya next time buddy." + textSuffixDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;	 	 
	 dialog_I++;		 

	// choice declined!
    dialog_I = 210;	 	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Guess you took the arcade comment a little too seriously. Well, maybe I'll try again next time I pinch something buddy." + textSuffixDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "See ya, ugh, clown?" + textSuffixDialogDialog);		  	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Clown_IdleStatic, spr_Dialog_Clown_Idle,  spr_Dialog_Clown_TalkStatic,   spr_Dialog_Clown_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Clown, textPrefix + "Oh, it's Bam Bam the Clown. Bye buddy." + textSuffixDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_220;		 
	 dialog_I++;	 
	 
	 
	 
	#endregion	// end of clown
	
	// short inbetween index 220
    dialog_I = 220;	 	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(And here I thought the guy from earlier was a clown.)" + textSuffixDialogDialog);		  	 
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Time for the next customer already I see." + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2Start_Day2;		 
	 dialog_I++;

	
	


#region random sale 2  250 to 270

	
	// begin random sale 1
	 dialog_I = 250;

      arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);
	 dialog_I++;    

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day2;		 
	 dialog_I++;
     
	 
	 
	 dialog_I = 255;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_270;	 
	 dialog_I++;


	 dialog_I = 260;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_270;	 	 
	 dialog_I++;


	 dialog_I = 265;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_270;	 	 
	 dialog_I++;	
	
	
	
#endregion // end of random sale 2	



#region nerd 270

	 dialog_I = 270;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(Another happy customer...)" + textSuffixDialogDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Hey there, are you here to play?" + textSuffixDialogDialog);		 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hello there, good citizen." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(I can't believe it, an ACTUAL customer.)" + textSuffixDialogDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "I was informed of your um, establishment by a colleague of mine." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "He said you may be able to help me protect myself. " + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Wait, you're not here to play in the arcade." + textSuffixDialogDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Do not get me wrong my fellow bi-pedal." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "I am a connoisseur of fine video games, but you seem to not have any of those available." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(This little shit.)" + textSuffixDialogDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What I am seeking is a little bit more on the... pointy side." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "What does a guy like you want with something like that?" + textSuffixDialogDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "It is not a matter of desire, rather it is a matter of necessity my good sir." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Oh? Just what, uh... necessitates such a need?" + textSuffixDialogDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I arrived early to the park yesterday to prepare for the Friends Adventure Party club when..." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Wait, wait, wait... You're in the FAP group??" + textSuffixDialogDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Yes sir and I am aware of the dubious alter meaning that is quite unfortunately not appropriate nor does it have anything..." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "to do with any other “hobbies” of my colleagues and I." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "HAHAHAHAHAHA...." + textSuffixDialogDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Sir, are you finished." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Yes, hehehe, go on, hehehe..." + textSuffixDialogDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "As I was saying, while I was at the park an elderly female wearing a Kabuki mask approached and pretended to take interest in my costume." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "However, it was all a trick. She soon brandished a weapon and demanded all of my money." + textSuffixDialog);		 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I only had a few dollars, so she demanded my costume and all of my collectible trading cards." + textSuffixDialog);		 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(I'm trying so hard not to laugh, but I don't know if I can keep it in.)" + textSuffixDialogDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(Imagine him being mugged and only having some kind of nerd trading cards, the face of the robber must have been priceless.)" + textSuffixDialogDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I see you find this amusing." + textSuffixDialog);		 
	 dialog_I++;		
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(FUCKING HILIARIOUS!)" + textSuffixDialogDialog);		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "You can always use your natural manly charm, that should repel any lady in the near vicinity!" + textSuffixDialogDialog);		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I'll have you know, my mom says I'm very manly. Now, if we can get back to business." + textSuffixDialog);		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "I'm sorry bud, it's just... Wait, you want something pointy to defend against an old lady with a gun?" + textSuffixDialogDialog);		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "That's right. I don't like the idea of firing a gun or even holding one. Can't trust them not to misfire. One can never be too safe." + textSuffixDialog);		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Ok, but don't you think the granny will, I don't know, shoot you if you try something?" + textSuffixDialogDialog);		 
	 dialog_I++;		

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I dare say, I do not get the impression she had true intentions. If I merely had something to scare her, I believe she would run in fear." + textSuffixDialog);		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "My budget is limited, so anything scary that shoots under 2500 will do." + textSuffixDialog);		 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "(I don't think so. I'm afraid this guy isn't going to make it very far in life.)" + textSuffixDialogDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "Well, I guess I can consider helping you." + textSuffixDialogDialog);		
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefix + "What did he say again? Below 4000 or 2000?" + textSuffixDialogDialog);	
		 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Nerd_Day2;	
	 dialog_I++;



	 dialog_I = 350;
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Thank you kind sir. I shall defend myself with honor." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "For your sake, I sure hope so." + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;	 
	 dialog_I++;


	 dialog_I = 360;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Well, perhaps it is for the best. I do hope to not need your services again." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Good luck friend. (He's gonna need it.)" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_380;	 	 
	 dialog_I++;


	 dialog_I = 370;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Oh, well that is a bit out of my price range." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I suppose I could just point my wand at her and shout spells, she is quite old and will perhaps become frightened and leave." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ya, he's gonna die.)" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Goodbye good sir." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Bye kid, and please don't do anything stupid." + textSuffixDialogDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Ha, never..." + textSuffixDialog);		 
	 dialog_I++;



#endregion end of nerd

	
	#region Kyle  380
	 dialog_I = 380;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ok, no more of this for today.)" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Kyle, can you shut the gate?" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Absolutely bossman. Kind of a weird day huh?" + textSuffixDialog);		 	 	 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "It sure was. Hey, can you make sure not to mention that Jez came in to anyone?" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Player, textPrefix + "Why would I want to mention a totally hot customer lady that seems to be totally in love with you." + textSuffixDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Does she really have the hots for me?)" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I guess I still have what it takes. I mean, I was a total stud back in the day.)" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You mean I have a chance? Like for real? Not that I would do such a thing." + textSuffixDialogDialog);		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Or would I? That woman is dream come true)" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Bossman, I bet you could get any lady you wanted." + textSuffixDialog);		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "And you can count on me. My lips are sealed!" + textSuffixDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Thanks Kyle. My head hurts enough as it is, I don't need to get hit with another frying pan..." + textSuffixDialogDialog);		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(again)" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Oh bossman, your life sure has become more funny recently. " + textSuffixDialog);		 	 	 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I don't find it that funny. I think my life has been more stressful since I decided to try this side venture.)" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "exit right");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Kyle, can you close shop for today. I think I'm done for the day." + textSuffixDialogDialog);		 	 	 
	 dialog_I++;	 
 

	#endregion	
	
	#region cop 450


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "HEY, WAIT. DON'T SHUT THAT GATE." + textSuffixDialog);		 	 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Hey bossman, some guy wants in, he's got a badge and a uniform." + textSuffixDialog);		 	 	 
	 dialog_I++;	



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh crap, maybe a frying pan to the head would be better right now.)" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Should I let him in?" + textSuffixDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "YOU DAMN SURE BETTER LET ME IN." + textSuffixDialog);		 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(That's it, I'm toast)" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes, yes. Let him in..." + textSuffixDialogDialog);		 	 	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "YOU DAMN SURE BETTER LET ME IN." + textSuffixDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes officer, I can break any size bill for change if you would like to play some games while we close shop." + textSuffixDialogDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Cut the shit. I know what goes on here and I would normally care, but right now I have to let it slide." + textSuffixDialog);		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Eh, officer, I can explain... I needed the..." + textSuffixDialogDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "I lost my baton. Can't go back to the station to check out without all my equipment again or I'll have to scrub all the toilets there for a week." + textSuffixDialog);		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "You wouldn't believe the shit that comes out of those guys... nevermind. I sure hope you have some in stock." + textSuffixDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(What?!)" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh, um, I, uh..." + textSuffixDialogDialog);		 	 	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Well, what's the hold up?" + textSuffixDialog);		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Either you got one in stock and you're going to sell it to me, or you don't have one in stock, in which case I may have to see if you got all your papers in order for everything you sell here. So which is it?" + textSuffixDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "enter default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "So which is it?" + textSuffixDialog);		 	 	 
	 dialog_I++;
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "He wants a replacement baton" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Cop_Day2;	 	 
	 dialog_I++;	 
	 
	 
	 //// sale
	 	 dialog_I = 500;
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Man, this looks just like the one I lost..." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "..." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Damn good thing, nobody at the station will notice it's not mine." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Happy to help, sir." + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Sorry about the papers thing. Since you saved my ass, I'll trust you've paid for all your permits." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Absolutely sir, 100%." + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Keep up the good work. Maybe, I'll stop in and play some games sometime. Take care. " + textSuffixDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_560;	 	 
	 dialog_I++;
	 

	 dialog_I = 510;	 
	 // refuse!

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Sorry officer, looks like I don't have any batons in stock." + textSuffixDialogDialog);	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Well that's just a shame you don't have any. Maybe it's for the best." + textSuffixDialog);		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "I've wanted to get out of this hell hole for a while. If I get fired, I'm outta here." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I really am sorry. I know you must do a lot to keep people safe here." + textSuffixDialogDialog);	 	 
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "You bet your ass I do. I'd say I'm one of the best cops on the force, but that may all be over now." + textSuffixDialog);		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "If I was you, I'd get out of the city too. Go some place nice and never look back." + textSuffixDialog);		 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Now there's an idea." + textSuffixDialogDialog);	 	 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Take care of yourself, this city isn't going to be safe without me around." + textSuffixDialog);		 
	 dialog_I++;		 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Not what I heard...)" + textSuffixDialogDialog);	 	 
	 dialog_I++;	 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "Oh and, before I go, make sure you get your permits posted." + textSuffixDialog);		 
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "I don't see them anywhere and the next officer to come around won't be so forgiving." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes officer, sir..." + textSuffixDialogDialog);	 	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_560;	 	 
	 dialog_I++;


	 dialog_I = 530;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Cop, textPrefix + "What the absolute hell is this!? You better have a permit to sell this." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh, uh, yes of course." + textSuffixDialogDialog);		 	 	 
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "You don't sound so sure of it." + textSuffixDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes officer, I mean sir, the permit office said it was in the mail last week." + textSuffixDialogDialog);		 	 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "For your sake you better hope they arrive before I come back..." + textSuffixDialog);		 	 	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "If I don't get fired for losing my baton that is." + textSuffixDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "That sounds like an extreme punishment for losing a baton." + textSuffixDialogDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "It probably would be, but it's not the only thing I've lost. That's not any of your business though." + textSuffixDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "But you know what is your business?" + textSuffixDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "What's that officer?" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "Getting your damn permits." + textSuffixDialog);		 	 	 
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I can't believe this, here I thought it was going to be a good day.)" + textSuffixDialogDialog);		 	 	 
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Cop, textPrefix + "Well I'm off to get my ass chewing. Get your permits or else." + textSuffixDialog);		 	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Cop_IdleStatic, spr_Dialog_Cop_Idle,  spr_Dialog_Cop_TalkStatic,   spr_Dialog_Cop_Talk  , "exit default");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes officer." + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_560;	 	 
	 dialog_I++;

	 
	#endregion	

#region extro kyle 560

	// extro
	dialog_I = 560;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Every time I think I'm getting ahead...)" + textSuffixDialogDialog);	
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Now I gotta pony up for a permit, pay my rent, and hope I have enough left over to eat.)" + textSuffixDialogDialog);	
	 dialog_I++;	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ugh..." + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "Bossman, you look more stressed than ever. Don't worry, everything'll be alright." + textSuffixDialog);		 	 	 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Thanks Kyle." + textSuffixDialogDialog);	
	 dialog_I++;
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I sure hope he's right.)" + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "See ya tomorrow bossman." + textSuffixDialog);		 	 	 
	 dialog_I++;



#endregion




#endregion // end of day 2

#region  day 3   33333333333333 
   
 day_I    = 2; // day 3
 dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I );  // first cutscene  
  
 
 #region kyle + weather girl

 
    
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(What a morning. That rain is something else. The forecast was sunny and I definitely did not prepare for a downpour.)" + textSuffixDialogDialog);	 
	 dialog_I++;
    
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing, spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I guess that's my life in a nutshell though.)" + textSuffixDialogDialog);	 
	 dialog_I++; 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right");	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "Whoa bossman, you're soaked." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,  spr_Dialog_Kyle_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "No kidding, someone should really teach those weathermen how to do their job." + textSuffixDialogDialog);	 
	 dialog_I++; 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , "enter default"); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "How about a weather girl?" + textSuffixDialogDialog);	 
	 dialog_I++; 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	  
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "Hey, I know you! You're that hot weather lady that just joined channel 8." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "KYLE!" + textSuffixDialog);		 
	 dialog_I++;
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I'm sorry about him, miss." + textSuffixDialog);		 
	 dialog_I++;
 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "It's fine, I'm used to it. Guys like this one are everywhere." + textSuffixDialogDialog);	 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Kyle, why don't you finish opening up for me?" + textSuffixDialog);		 
	 dialog_I++;


     // kyle exits
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "exit right"); 	  
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + " Yep, sorry bossman." + textSuffixDialog);		 
	 dialog_I++;


    
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "He's actually kind of cute I suppose." + textSuffixDialogDialog);	 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Don't tell him that, he might explode." + textSuffixDialog);		 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I believe it. Usually the only guys that try to talk to me are meatheads. The rest just drool because they know me from TV. " + textSuffixDialogDialog);	 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Gotta act cool, I can't believe she's here in my arcade.)" + textSuffixDialog);		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Wait a second. Why is she here? No way she wants to play games. That means...)" + textSuffixDialog);		 
	 dialog_I++;
 
 
      arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Ahem. Did I lose you too?" + textSuffixDialogDialog);	 
	 dialog_I++; 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh sorry, I was uh, just thinking about what I should say about this crazy weather and all." + textSuffixDialog);		 
	 dialog_I++; 
 
 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "It is pretty wild out there. We don't exactly get the best tools of the trade here." + textSuffixDialogDialog);	 
	 dialog_I++; 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "A lot of our station equipment has been destroyed since everything fell apart with the government." + textSuffixDialogDialog);	 
	 dialog_I++;  
 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She seems really familiar right now. Do I know her from somewhere?)" + textSuffixDialog);		 
	 dialog_I++;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I guess that makes sense. Sorry about what I said earlier." + textSuffixDialog);		 
	 dialog_I++;	 
	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "It's nothing, I couldn't care less at the moment anyways." + textSuffixDialogDialog);	 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh, why is that?" + textSuffixDialog);		 
	 dialog_I++; 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I have a chance for a promotion to full-time reporter and I was given a story to cover." + textSuffixDialogDialog);	 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(A cover story on what? Arcades or weapon dealers?)" + textSuffixDialog);		 
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(This could be really good, or really bad for me.)" + textSuffixDialog);		 
	 dialog_I++; 

  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "As you know, the city has very few rules on weapon sales and possession. The rules we do have are basically all made up on the fly by the police force." + textSuffixDialogDialog);	 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Yep, not about arcades. Damn, why does nobody care about arcades anymore?)" + textSuffixDialog);		 
	 dialog_I++; 
	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Oh, you look nervous. I'm not trying to hurt your business or you, but I was tasked to report on the semi-legal sale of weapons around here." + textSuffixDialogDialog);	 
	 dialog_I++; 	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "As any good reporter does, I looked high and low to find where sales are coming from and your very poorly disguised ad in the paper stood out to me." + textSuffixDialogDialog);	 
	 dialog_I++; 	 
	 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Poorly disguised? I knew that was a bad idea.)" + textSuffixDialog);		 
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(That's it, I'm really in trouble now.)" + textSuffixDialog);		 
	 dialog_I++; 	 
	 
	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Please understand, at channel 8 we are unbiased in all our reports." + textSuffixDialogDialog);	 
	 dialog_I++; 	 
	 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I'm not sure I believe that, but I never watch the news.)" + textSuffixDialog);		 
	 dialog_I++; 		
	
	
	 
  
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "If you could simply show me how you do business and give me a few insights, I would love to feature you in a story." + textSuffixDialogDialog);	 
	 dialog_I++; 		

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I won't take any pictures or even name your store, it would be 100% secret that you are my source. I promise!" + textSuffixDialogDialog);	 
	 dialog_I++; 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I would never want to ruin a potential source of information." + textSuffixDialogDialog);	 
	 dialog_I++;  
 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "How do I know I can trust that you won't report me?" + textSuffixDialog);		 
	 dialog_I++; 	 
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Report you to who? Like I said, there are no real rules." + textSuffixDialogDialog);	 
	 dialog_I++;   

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Half the permits in this town are just a way the police department extorts people so they can keep paying themselves." + textSuffixDialogDialog);	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_Skip_Decision_PermitDay2;		 
	 dialog_I++;  
 
    
	// permit choise jump!
	 dialog_I = 100;
	 
	 // got the permit
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Are you kidding me!? I could have just not paid for that permit and I would have been just fine.)" + textSuffixDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_110;		 
	 dialog_I++; 


	 dialog_I = 101;
	 
	 // got the permit
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I'm so glad she told me that, I was really thinking I needed to buy that permit.)" + textSuffixDialog);		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_110;		 
	 dialog_I++; 
 

     // continue
	 dialog_I = 110;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Oh and also, my dad was apparently in here yesterday. If I was going to rat you out to anyone, I would have done it already." + textSuffixDialogDialog);	 	 
	 dialog_I++;  	 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Hm, yesterday was a bit wild. I'm sure that clown has some fine offspring.)" + textSuffixDialog);		 
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Or maybe it could have been the short tempered guy?)" + textSuffixDialog);		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Don't tell me your dad was the short, balding lunatic that wanted a dog-gun?" + textSuffixDialog);		 
	 dialog_I++; 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "That's him. He's lost his mind since my mom left him for another man. Any time he sees some meathead hanging around me he goes into a rage." + textSuffixDialogDialog);	 	 
	 dialog_I++;  		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I know he's just afraid I will finally move out..." + textSuffixDialogDialog);	 	 
	 dialog_I++;  		 
	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Wait, you still live at home?" + textSuffixDialog);		 
	 dialog_I++; 		
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Is that any of your business Mr. Arms dealer?" + textSuffixDialogDialog);	 	 
	 dialog_I++;  	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "No, no I suppose it isn't. I didn't mean any offense." + textSuffixDialog);		 
	 dialog_I++; 	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "None taken." + textSuffixDialogDialog);	 	 
	 dialog_I++;  		
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Anyways, let's get down to business." + textSuffixDialogDialog);	 	 
	 dialog_I++;  	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "If you could just show me what you do and also sell me a nice handgun." + textSuffixDialogDialog);	 	 
	 dialog_I++;  	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I would be able to make a report that could make a good impression on my boss and might bring in new business for you." + textSuffixDialogDialog);	 	 
	 dialog_I++; 		
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Do I really have a choice at this point?)" + textSuffixDialog);		 
	 dialog_I++; 	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I need the money and if the police aren't going to do anything maybe I should look at this as my chance to get ahead for once.)" + textSuffixDialog);		 
	 dialog_I++; 	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I'm thinking a really recognizable pistol should work fine. One that you see in a lot of old western movies. Do you have anything like that you can sell me?" + textSuffixDialogDialog);	 	 
	 dialog_I++;	
	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Actually, I think I know just what you mean." + textSuffixDialog);		 
	 dialog_I++; 	
	
	
	 // sales text
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Western pistol, got it.)" + textSuffixDialog);		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Weather_Day3;		 
	 dialog_I++; 	
	



      dialog_I = 150;
	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "This will have to do I suppose. Hopefully we both get something out of this." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I just don't want this story to cause me any trouble, you know." + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Don't you worry. I'll let you know when the story is about to break." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Thanks, I'll be sure to watch." + textSuffixDialogDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "Take care.. Oh, and make sure you bring an umbrella with you tomorrow too." + textSuffixDialog);		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_180;		 
	 dialog_I++;	 
	 


	 dialog_I = 160;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I guess I'll just have to talk to my dad then. Maybe he won't mind paying you another visit, that may encourage you to loosen up a bit." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Geeze, why the sudden hostility. Now I have to deal with him again.)" + textSuffixDialogDialog);	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I'm sorry, I shouldn't threaten, but I will get my report, one way or another." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Still threatening...)" + textSuffixDialogDialog);	 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk , "exit default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I'll be back, and I'll be more convincing." + textSuffixDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_180;			 
	 dialog_I++;



	 dialog_I = 170;	 
	 // mess up!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I'm sorry but that just won't do for the story. I'd love to stay and work something out, but I can't be late for the next weather report." + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Weather, textPrefix + "I'll be back soon and maybe you can have something ready for me then." + textSuffixDialog);		 
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Weather_IdleStatic, spr_Dialog_Weather_Idle,  spr_Dialog_Weather_TalkStatic,   spr_Dialog_Weather_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dangit, I tried too hard to make extra cash on that one.)" + textSuffixDialogDialog);		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_180;	 	 
	 dialog_I++;
	
	
	 
    #endregion 
   
	
	#region nerd 180
	
	 dialog_I = 180;	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Hello again good sir." + textSuffixDialog);		 
	 dialog_I++;
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "It's you again is it?" + textSuffixDialogDialog);		 	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Oh the genuine and heartfelt welcoming of a fellow human being." + textSuffixDialog);		 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Saw right through that did ya?" + textSuffixDialogDialog);		 	 
	 dialog_I++;		
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Good sir, I may not be up to your level of social skills, but I am quite astute I assure you." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes, you are a sharp one indeed." + textSuffixDialogDialog);		 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Speaking of sharp, please tell me you haven't stabbed anyone after you were so hard up for a knife." + textSuffixDialogDialog);		 	 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Well, yes, but only myself. I cut myself using a kitchen knife while trying to surgically open the latest pack of baseball cards my grandmother bought me." + textSuffixDialog);		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I bet he lives with his grandmother.)" + textSuffixDialogDialog);		 	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "The good thing is, I didn't get any blood on the cards after I passed out when I saw the wound." + textSuffixDialog);		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Seriously? You ever think you don't really have what it takes to live here? I'd hate to see you get hurt out there." + textSuffixDialogDialog);		 	 
	 dialog_I++;		
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Nay, good sir. I may not be as rough around the edges as many of the citizens of this city, but I cannot hope to see it change if all the good and intelligent people leave." + textSuffixDialog);		 
	 dialog_I++;		
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "So do you think the rest of us are idiots and you are smart enough to save us?" + textSuffixDialogDialog);		 	 
	 dialog_I++;	
	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Well, I have some ideas..." + textSuffixDialog);		 
	 dialog_I++;		
		
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I can't decide if I hate him or if I want to root for him.)" + textSuffixDialogDialog);		 	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "That is beside the point. I came in today to share a bit of lore with you." + textSuffixDialog);		 
	 dialog_I++;			
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Lore?" + textSuffixDialogDialog);		 	 
	 dialog_I++;	
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Yes, you know what lore means, don't you?" + textSuffixDialog);		 
	 dialog_I++;		
	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Look pal, I don't need you coming in here and talking down to me." + textSuffixDialogDialog);		 	 
	 dialog_I++;		
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "PLEASE DON'T HURT ME!" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Geeze, calm down already. Nobody's going to hurt you." + textSuffixDialogDialog);		 	 
	 dialog_I++;

	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I'm sorry about that, after the attack I suffered the other day I suppose I have been on edge a bit." + textSuffixDialog);		 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Ok, so what is it you want to tell me?" + textSuffixDialogDialog);		 	 
	 dialog_I++;

	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I should leave that up to you I suppose. I have a few interesting topics I thought you might like to hear about." + textSuffixDialog);		 
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Why does he want to tell me anything?)" + textSuffixDialogDialog);		 	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh no, he thinks I've become his new friend because I didn't just instantly kick him out. What have I done!?)" + textSuffixDialogDialog);		 	 
	 dialog_I++;		
	
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialog);		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_Nerd_4Topics_Day3;	 
	 dialog_I++;	
	
	
	//// 4 choises
	dialog_I = 300;
	
	//  Choise 1
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialog);		
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialog);		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;	 
	 dialog_I++;		




	dialog_I = 400;
	
	//  Choise 2
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialog);		
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialog);		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;	 
	 dialog_I++;


	dialog_I = 500;
	
	//  Choise 3
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialog);		
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialog);		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;	 
	 dialog_I++;


	dialog_I = 600;
	
	//  Choise 4
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialog);		
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "What would you like to hear about?" + textSuffixDialog);		
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_700;	 
	 dialog_I++;



	dialog_I = 700;
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "Oh will you look at the time, I don't want to be late for Grandmother's bath." + textSuffixDialog);		
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(That mental image will never leave me.)" + textSuffixDialogDialog);		 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nerd, textPrefix + "I'm going home big guy." + textSuffixDialog);		
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Uhh, ok..." + textSuffixDialogDialog);		 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(He's an odd character.)" + textSuffixDialogDialog);		 	 
	 dialog_I++;
	 
	#endregion
 
  
    #region kyle + wife 705
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "Hey boss, what is with that guy?" + textSuffixDialogDialog);		 	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You got me, my ears start bleeding when he starts talking." + textSuffixDialogDialog);		 	 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "Ha, you're funny! Hey, I meant to ask how things are going by the way. You doing ok?" + textSuffixDialogDialog);		 	 
	 dialog_I++;
 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nerd_IdleStatic, spr_Dialog_Nerd_Idle,  spr_Dialog_Nerd_TalkStatic,   spr_Dialog_Nerd_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I never think things are going to be ok anymore Kyle. At least I'm never disappointed that way." + textSuffixDialogDialog);		 	 
	 dialog_I++;  
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Kyle, textPrefix + "Wow, that's depressing." + textSuffixDialogDialog);		 	 
	 dialog_I++; 
 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "enter default"); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "Agreed!" + textSuffixDialogDialog);		 	 
	 dialog_I++;  

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "exit right"); 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "AH! Don't scare me like that." + textSuffixDialogDialog);		 	 
	 dialog_I++;  
 
 
 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "Why are you so jumpy?" + textSuffixDialogDialog);		 	 
	 dialog_I++;   
 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "N... No reason. What brings you in today my beautiful wife?" + textSuffixDialogDialog);		 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She's going to see right through me.)" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_ChoiseGivenPresent_Wife;	
	 dialog_I++; 


    // if baught wife present
	dialog_I = 750;
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "I just wanted to say thank you so much for the (fill in the blank). You know, maybe my mother was wrong about you." + textSuffixDialogDialog);		 	 
	 dialog_I++;    


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I hate that woman with every fiber of my being.)" + textSuffixDialogDialog);		 	 
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Always pinching my cheek and calling me her “schwuler hund”. I don't even know what that means. Maybe I should learn some German...)" + textSuffixDialogDialog);		 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Wait, did she say thank you???)" + textSuffixDialogDialog);		 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "Oh look at the time. I'm going to be late for my appointment. Me and my psychic are getting our hair volumized together." + textSuffixDialogDialog);		 	 
	 dialog_I++;    


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "They call it a pompadour. Doesn't that sound fancy!" + textSuffixDialogDialog);		 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Do I dare ask how much that will cost?" + textSuffixDialogDialog);		 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "Oh hunny, you're too funny. I'm sure your new business is booming so we can afford for me to get pampered." + textSuffixDialogDialog);		 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "exit default"); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "Bye snookums." + textSuffixDialogDialog);		 	 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Snookums!?)" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_780;	 
	 dialog_I++; 



    // if NOT baught wife present
	dialog_I = 770;
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Wife, textPrefix + "blah blah blah appointment time, blah blah blah $500 blah blah blah... Gotta run." + textSuffixDialogDialog);		 	 
	 dialog_I++;    


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(That was weird, she never runs off that fast. Wait, $500 for what!?!?!?)" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_780;	 
	 dialog_I++; 



    // next
	dialog_I = 780;
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I seriously don't know what just happened. And now I have a line of customers.)" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1Start_Day3;	 
	 dialog_I++; 	


   #endregion
   
   
    #region random sale 1   781 - 820


	 dialog_I = 781;	   
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);		 
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);		 
	 dialog_I++;	
	 
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Random1_IdleStatic, spr_Dialog_Random1_Idle,  spr_Dialog_Random1_TalkStatic,   spr_Dialog_Random1_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day3;		// overide and setup  
	 dialog_I++;		
	
	
	// begin random sale 1
	 
	 dialog_I = 800;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;	 
	 dialog_I++;


	 dialog_I = 810;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;	 	 
	 dialog_I++;


	 dialog_I = 820;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_830;	 	 
	 dialog_I++;	
	
	
	
#endregion // end of random sale 1	   
 
    #region random sale 2   830 - 820

    // next
	dialog_I = 830;
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Next." + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2Start_Day3;	 
	 dialog_I++; 

     
	 
	   
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);		 
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);		 
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);		 
	 dialog_I++;	
	 
		 
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Random1_IdleStatic, spr_Dialog_Random1_Idle,  spr_Dialog_Random1_TalkStatic,   spr_Dialog_Random1_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale1_Day3;		// overide and setup  
	 dialog_I++;		
	
	
	// begin random sale 1
	 
	 dialog_I = 840;	 
	 // sale!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_870;	 
	 dialog_I++;


	 dialog_I = 850;	 
	 // refuse!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_870;	 	 
	 dialog_I++;


	 dialog_I = 860;	 
	 // botch!
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_AngryDad, textPrefix + "?????????" + textSuffixDialog);		 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "?????????" + textSuffixDialogDialog);		 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_870;	 	 
	 dialog_I++;	
	
	
	
	
#endregion // end of random sale 2	   


#region nun  870

    // next
	dialog_I = 870;
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Next!" + textSuffixDialogDialog);	 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , "enter default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Good day my child." + textSuffixDialogDialog);	
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Welcome in, uh, sister?" + textSuffixDialogDialog);		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "You have been blessed today I see." + textSuffixDialogDialog);	
	 dialog_I++; 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I have?" + textSuffixDialogDialog);		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Yes. Many wonderful customers I see you have." + textSuffixDialogDialog);	
	 dialog_I++; 
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "Does the good word not say: the plans of the diligent lead surely to abundance?" + textSuffixDialogDialog);	
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I'm afraid I don't know, sister. I'm sorry." + textSuffixDialogDialog);		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(If this turns into a test I am going to fail.)" + textSuffixDialogDialog);		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "Do not worry my child, for: the reward for humility and fear is riches and honor and life." + textSuffixDialogDialog);	
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I feel like she's trying to say I'm going to be rich. Maybe I am blessed!)" + textSuffixDialogDialog);		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "My child. I see much riches and abundance is bestowed upon your house. This is certainly a blessing for you." + textSuffixDialogDialog);	
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Thank you sister. You sure are making me feel great. Maybe things are getting better for me after all!" + textSuffixDialogDialog);		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "My child, “incline your ear, and hear the words of the wise..." + textSuffixDialogDialog);	
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Words of wisdom on getting rich, come to papa...)" + textSuffixDialogDialog);		 
	 dialog_I++; 

     // point gun upwards and shoot
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "           " + textSuffixDialogDialog);	
	 dialog_I++; 
     
 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "It is more blessed to give than to receive.” Now, get with the giving." + textSuffixDialogDialog);	
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(AHHHHHHH.)" + textSuffixDialogDialog);		 
	 dialog_I++; 

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "The lord demands your penitence... and $500 should be just fine." + textSuffixDialogDialog);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I can't believe this, I'm being robbed by a nun.)" + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Choise_ChoiseNun_Day3;	 
	 dialog_I++; 


    // if played up!
	dialog_I = 900;
    
	// pay up
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "Thank you my child. May mercy, peace, and love be multiplied to you." + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Effect_Txt_PopUp_NunTakes500;	 
	 dialog_I++;	


	dialog_I = 910;
    
	// not pay up

     // point gun toward player and shoot
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "           " + textSuffixDialogDialog);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Nun_FadeBlack;	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Am I dead? Am I in heaven? Please let it be...)" + textSuffixDialogDialog);		 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "            " + textSuffixDialogDialog);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dammit, still getting robbed.)" + textSuffixDialogDialog);		 
	 dialog_I++; 


 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "Did I say $500?" + textSuffixDialogDialog);	
	 dialog_I++;

 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "I meant everything you got in the register. Try to refuse me again and payment for your sins will be much more severe." + textSuffixDialogDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Effect_Txt_PopUp_NunTakesAll;	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Nun_IdleStatic, spr_Dialog_Nun_Idle,  spr_Dialog_Nun_TalkStatic,   spr_Dialog_Nun_Talk  , "exit default"); 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Nun, textPrefix + "Thank you my child of light. May mercy, peace, and love be multiplied to you." + textSuffixDialogDialog);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_920;	 
	 dialog_I++;


    #endregion

#region  kyle 920

	dialog_I = 920;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dammit, still getting robbed.)" + textSuffixDialogDialog);		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "Bossman what happened? I was in the bathroom and heard a shot but I came running as soon as I could. Did a gun misfire?" + textSuffixDialogDialog);		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "No Kyle, we just got robbed." + textSuffixDialogDialog);		 
	 dialog_I++; 



     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "No way man. By who?" + textSuffixDialogDialog);		 
	 dialog_I++; 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "A nun Kyle. A nun." + textSuffixDialogDialog);		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "Are you kidding bossman?" + textSuffixDialogDialog);		 
	 dialog_I++; 

	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "NO KYLE I'M NOT KIDDING! WE JUST GOT ROBBED BY A &$#@!*& NUN!" + textSuffixDialogDialog);		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "Damn bossman I'm sorry. I can chase her down if you want." + textSuffixDialogDialog);		 
	 dialog_I++; 


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "No Kyle, I don't want you getting hurt." + textSuffixDialogDialog);		 
	 dialog_I++; 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I don't think it would be wise to make a police report either. I think I'm just screwed." + textSuffixDialogDialog);		 
	 dialog_I++; 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "enter right"); 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Kyle, textPrefix + "What do you say we call it a day then bossman?" + textSuffixDialogDialog);		 
	 dialog_I++; 


	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , ""); 	 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I think that's wise Kyle. Please, shut everything down. I'm going to my office to cry, then home to shower and change pants." + textSuffixDialogDialog);		 
	 dialog_I++; 


#endregion



  #endregion // end of day 3