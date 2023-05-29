/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
debug = true;

roomToJump = Room_Workspace;
roomToJump = room_Debug;


room_goto(roomToJump);


#region text prefix/suffixes
 textPrefix = "[font_Cutscene][scale, 0.8]";
 textSuffix = "[/scale]"; 
 
 textPrefixPlayer = "[font_Cutscene][scale, 0.8][#F9CE7B]";
 textSuffixPlayer = "[/scale][/c]";  
 
 textPrefix_Tab = "[font_Cutscene][scale, 1]";
 textSuffix_Tab = "[/scale]";


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


#region Cutscenes

currentCutscene = 0;

function Createcutscene(day_) constructor {
  
 // sprBgr      = bgrSpr_; // default!
  totalBlocks = 0; // added up in each function
 
 #region all vars 0- 99

	  // blocks!
	  dialogBlock_SprIdleStatic_1_[0]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[0]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[0]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[0]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[0]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[0]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[0]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[0]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[0]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[0]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[0]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[0]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[0]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[0]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[0]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[0]      = "";	  
	  dialogBlock_Txt[0]       = ""; 	  
	  dialogBlock_Txt_PersonActive[0]       = 1; 	  // who is talking	  
	  dialogBlock_LoadIn[0]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[1]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[1]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[1]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[1]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[1]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[1]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[1]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[1]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[1]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[1]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[1]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[1]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[1]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[1]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[1]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[1]      = "";	  
	  dialogBlock_Txt[1]       = ""; 	
	  dialogBlock_Txt_PersonActive[1]       = 1; 	 	  
	  dialogBlock_LoadIn[1]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[2]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[2]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[2]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[2]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[2]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[2]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[2]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[2]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[2]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[2]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[2]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[2]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[2]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[2]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[2]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[2]      = "";	  
	  dialogBlock_Txt[2]       = ""; 
	  dialogBlock_Txt_PersonActive[2]       = 1; 	 	  
	  dialogBlock_LoadIn[2]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[3]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[3]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[3]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[3]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[3]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[3]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[3]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[3]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[3]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[3]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[3]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[3]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[3]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[3]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[3]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[3]      = "";	  
	  dialogBlock_Txt[3]       = ""; 
	  dialogBlock_Txt_PersonActive[3]       = 1; 	 	  
	  dialogBlock_LoadIn[3]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[4]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[4]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[4]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[4]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[4]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[4]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[4]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[4]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[4]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[4]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[4]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[4]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[4]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[4]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[4]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[4]      = "";	  
	  dialogBlock_Txt[4]       = ""; 	
	  dialogBlock_Txt_PersonActive[4]       = 1; 	 	  
	  dialogBlock_LoadIn[4]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[5]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[5]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[5]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[5]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[5]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[5]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[5]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[5]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[5]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[5]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[5]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[5]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[5]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[5]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[5]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[5]      = "";	  
	  dialogBlock_Txt[5]       = ""; 
	  dialogBlock_Txt_PersonActive[5]       = 1; 	 	  
	  dialogBlock_LoadIn[5]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[6]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[6]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[6]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[6]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[6]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[6]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[6]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[6]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[6]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[6]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[6]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[6]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[6]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[6]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[6]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[6]      = "";	  
	  dialogBlock_Txt[6]       = ""; 
	  dialogBlock_Txt_PersonActive[6]       = 1; 	 	  
	  dialogBlock_LoadIn[6]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[7]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[7]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[7]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[7]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[7]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[7]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[7]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[7]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[7]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[7]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[7]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[7]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[7]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[7]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[7]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[7]      = "";	  
	  dialogBlock_Txt[7]       = ""; 	 
	  dialogBlock_Txt_PersonActive[7]       = 1; 	 	  
	  dialogBlock_LoadIn[7]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[8]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[8]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[8]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[8]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[8]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[8]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[8]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[8]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[8]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[8]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[8]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[8]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[8]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[8]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[8]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[8]      = "";	  
	  dialogBlock_Txt[8]       = ""; 
	  dialogBlock_Txt_PersonActive[8]       = 1; 	 	  
	  dialogBlock_LoadIn[8]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[9]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[9]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[9]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[9]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[9]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[9]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[9]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[9]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[9]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[9]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[9]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[9]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[9]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[9]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[9]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[9]      = "";	  
	  dialogBlock_Txt[9]       = ""; 	
	  dialogBlock_Txt_PersonActive[9]       = 1; 	 	  
	  dialogBlock_LoadIn[9]	   = noone;	  // used for minigame loading




	  dialogBlock_SprIdleStatic_1_[10]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[10]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[10]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[10]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[10]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[10]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[10]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[10]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[10]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[10]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[10]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[10]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[10]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[10]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[10]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[10]      = "";	  
	  dialogBlock_Txt[10]       = ""; 	
	  dialogBlock_Txt_PersonActive[10]      = 1; 	 	  
	  dialogBlock_LoadIn[10]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[11]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[11]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[11]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[11]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[11]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[11]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[11]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[11]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[11]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[11]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[11]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[11]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[11]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[11]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[11]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[11]      = "";	  
	  dialogBlock_Txt[11]       = ""; 	 
	  dialogBlock_Txt_PersonActive[11]      = 1; 	  
	  dialogBlock_LoadIn[11]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[12]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[12]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[12]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[12]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[12]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[12]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[12]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[12]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[12]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[12]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[12]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[12]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[12]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[12]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[12]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[12]      = "";	  
	  dialogBlock_Txt[12]       = ""; 	
	  dialogBlock_Txt_PersonActive[12]      = 1; 		  
	  dialogBlock_LoadIn[12]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[13]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[13]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[13]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[13]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[13]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[13]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[13]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[13]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[13]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[13]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[13]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[13]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[13]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[13]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[13]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[13]      = "";	  
	  dialogBlock_Txt[13]       = ""; 	
	  dialogBlock_Txt_PersonActive[13]      = 1; 		  
	  dialogBlock_LoadIn[13]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[14]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[14]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[14]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[14]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[14]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[14]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[14]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[14]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[14]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[14]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[14]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[14]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[14]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[14]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[14]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[14]      = "";	  
	  dialogBlock_Txt[14]       = ""; 	
	  dialogBlock_Txt_PersonActive[14]      = 1; 		  
	  dialogBlock_LoadIn[14]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[15]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[15]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[15]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[15]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[15]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[15]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[15]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[15]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[15]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[15]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[15]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[15]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[15]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[15]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[15]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[15]      = "";	  
	  dialogBlock_Txt[15]       = ""; 	  
	  dialogBlock_Txt_PersonActive[15]      = 1; 		  
	  dialogBlock_LoadIn[15]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[16]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[16]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[16]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[16]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[16]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[16]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[16]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[16]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[16]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[16]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[16]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[16]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[16]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[16]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[16]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[16]      = "";	  
	  dialogBlock_Txt[16]       = ""; 	
	  dialogBlock_Txt_PersonActive[16]      = 1; 		  
	  dialogBlock_LoadIn[16]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[17]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[17]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[17]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[17]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[17]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[17]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[17]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[17]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[17]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[17]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[17]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[17]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[17]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[17]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[17]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[17]      = "";	  
	  dialogBlock_Txt[17]       = ""; 
	  dialogBlock_Txt_PersonActive[17]      = 1; 		  
	  dialogBlock_LoadIn[17]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[18]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[18]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[18]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[18]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[18]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[18]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[18]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[18]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[18]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[18]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[18]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[18]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[18]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[18]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[18]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[18]      = "";	  
	  dialogBlock_Txt[18]       = ""; 	
	  dialogBlock_Txt_PersonActive[18]      = 1; 		  
	  dialogBlock_LoadIn[18]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[19]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[19]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[19]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[19]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[19]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[19]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[19]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[19]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[19]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[19]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[19]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[19]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[19]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[19]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[19]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[19]      = "";	  
	  dialogBlock_Txt[19]       = ""; 
	  dialogBlock_Txt_PersonActive[19]      = 1; 		  
	  dialogBlock_LoadIn[19]	   = noone;	  // used for minigame loading




	  dialogBlock_SprIdleStatic_1_[20]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[20]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[20]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[20]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[20]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[20]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[20]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[20]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[20]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[20]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[20]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[20]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[20]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[20]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[20]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[20]      = "";	  
	  dialogBlock_Txt[20]       = ""; 
	  dialogBlock_Txt_PersonActive[20]      = 1; 		  
	  dialogBlock_LoadIn[20]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[21]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[21]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[21]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[21]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[21]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[21]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[21]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[21]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[21]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[21]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[21]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[21]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[21]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[21]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[21]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[21]      = "";	  
	  dialogBlock_Txt[21]       = ""; 
	  dialogBlock_Txt_PersonActive[21]      = 1; 	  
	  dialogBlock_LoadIn[21]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[22]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[22]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[22]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[22]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[22]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[22]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[22]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[22]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[22]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[22]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[22]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[22]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[22]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[22]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[22]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[22]      = "";	  
	  dialogBlock_Txt[22]       = ""; 	 
	  dialogBlock_Txt_PersonActive[22]      = 1; 	  
	  dialogBlock_LoadIn[22]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[23]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[23]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[23]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[23]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[23]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[23]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[23]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[23]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[23]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[23]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[23]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[23]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[23]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[23]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[23]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[23]      = "";	  
	  dialogBlock_Txt[23]       = ""; 
	  dialogBlock_Txt_PersonActive[23]      = 1; 	  
	  dialogBlock_LoadIn[23]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[24]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[24]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[24]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[24]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[24]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[24]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[24]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[24]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[24]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[24]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[24]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[24]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[24]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[24]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[24]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[24]      = "";	  
	  dialogBlock_Txt[24]       = ""; 	
	  dialogBlock_Txt_PersonActive[24]      = 1; 	  
	  dialogBlock_LoadIn[24]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[25]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[25]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[25]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[25]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[25]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[25]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[25]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[25]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[25]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[25]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[25]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[25]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[25]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[25]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[25]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[25]      = "";	  
	  dialogBlock_Txt[25]       = ""; 
	  dialogBlock_Txt_PersonActive[25]      = 1; 	  
	  dialogBlock_LoadIn[25]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[26]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[26]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[26]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[26]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[26]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[26]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[26]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[26]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[26]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[26]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[26]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[26]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[26]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[26]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[26]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[26]      = "";	  
	  dialogBlock_Txt[26]       = ""; 	 
	  dialogBlock_Txt_PersonActive[26]      = 1; 	  
	  dialogBlock_LoadIn[26]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[27]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[27]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[27]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[27]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[27]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[27]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[27]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[27]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[27]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[27]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[27]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[27]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[27]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[27]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[27]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[27]      = "";	  
	  dialogBlock_Txt[27]       = ""; 	
	  dialogBlock_Txt_PersonActive[27]      = 1; 	  
	  dialogBlock_LoadIn[27]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[28]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[28]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[28]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[28]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[28]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[28]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[28]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[28]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[28]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[28]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[28]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[28]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[28]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[28]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[28]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[28]      = "";	  
	  dialogBlock_Txt[28]       = ""; 
	  dialogBlock_Txt_PersonActive[28]      = 1; 	  
	  dialogBlock_LoadIn[28]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[29]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[29]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[29]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[29]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[29]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[29]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[29]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[29]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[29]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[29]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[29]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[29]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[29]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[29]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[29]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[29]      = "";	  
	  dialogBlock_Txt[29]       = ""; 	 
	  dialogBlock_Txt_PersonActive[29]      = 1; 	  
	  dialogBlock_LoadIn[29]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[30]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[30]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[30]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[30]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[30]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[30]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[30]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[30]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[30]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[30]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[30]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[30]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[30]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[30]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[30]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[30]      = "";	  
	  dialogBlock_Txt[30]       = ""; 	
	  dialogBlock_Txt_PersonActive[30]      = 1; 	  
	  dialogBlock_LoadIn[30]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[31]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[31]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[31]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[31]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[31]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[31]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[31]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[31]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[31]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[31]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[31]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[31]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[31]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[31]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[31]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[31]      = "";	  
	  dialogBlock_Txt[31]       = ""; 	
	  dialogBlock_Txt_PersonActive[31]      = 1; 	  
	  dialogBlock_LoadIn[31]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[32]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[32]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[32]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[32]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[32]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[32]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[32]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[32]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[32]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[32]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[32]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[32]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[32]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[32]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[32]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[32]      = "";	  
	  dialogBlock_Txt[32]       = ""; 
	  dialogBlock_Txt_PersonActive[32]      = 1; 	  
	  dialogBlock_LoadIn[32]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[33]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[33]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[33]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[33]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[33]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[33]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[33]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[33]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[33]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[33]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[33]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[33]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[33]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[33]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[33]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[33]      = "";	  
	  dialogBlock_Txt[33]       = ""; 	
	  dialogBlock_Txt_PersonActive[33]      = 1; 	  
	  dialogBlock_LoadIn[33]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[34]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[34]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[34]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[34]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[34]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[34]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[34]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[34]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[34]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[34]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[34]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[34]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[34]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[34]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[34]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[34]      = "";	  
	  dialogBlock_Txt[34]       = ""; 
	  dialogBlock_Txt_PersonActive[34]      = 1; 	  
	  dialogBlock_LoadIn[34]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[35]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[35]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[35]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[35]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[35]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[35]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[35]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[35]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[35]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[35]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[35]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[35]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[35]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[35]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[35]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[35]      = "";	  
	  dialogBlock_Txt[35]       = ""; 	
	  dialogBlock_Txt_PersonActive[35]      = 1; 	  
	  dialogBlock_LoadIn[35]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[36]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[36]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[36]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[36]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[36]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[36]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[36]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[36]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[36]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[36]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[36]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[36]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[36]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[36]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[36]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[36]      = "";	  
	  dialogBlock_Txt[36]       = ""; 	  
	  dialogBlock_Txt_PersonActive[36]      = 1; 	  
	  dialogBlock_LoadIn[36]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[37]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[37]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[37]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[37]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[37]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[37]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[37]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[37]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[37]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[37]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[37]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[37]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[37]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[37]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[37]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[37]      = "";	  
	  dialogBlock_Txt[37]       = ""; 	
	  dialogBlock_Txt_PersonActive[37]      = 1; 	  
	  dialogBlock_LoadIn[37]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[38]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[38]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[38]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[38]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[38]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[38]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[38]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[38]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[38]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[38]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[38]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[38]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[38]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[38]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[38]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[38]      = "";	  
	  dialogBlock_Txt[38]       = ""; 	
	  dialogBlock_Txt_PersonActive[38]      = 1; 	  
	  dialogBlock_LoadIn[38]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[39]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[39]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[39]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[39]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[39]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[39]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[39]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[39]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[39]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[39]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[39]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[39]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[39]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[39]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[39]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[39]      = "";	  
	  dialogBlock_Txt[39]       = ""; 
	  dialogBlock_Txt_PersonActive[39]      = 1; 	  
	  dialogBlock_LoadIn[39]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[40]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[40]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[40]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[40]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[40]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[40]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[40]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[40]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[40]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[40]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[40]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[40]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[40]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[40]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[40]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[40]      = "";	  
	  dialogBlock_Txt[40]       = ""; 	 
	  dialogBlock_Txt_PersonActive[40]      = 1; 	  
	  dialogBlock_LoadIn[40]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[41]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[41]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[41]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[41]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[41]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[41]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[41]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[41]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[41]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[41]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[41]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[41]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[41]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[41]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[41]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[41]      = "";	  
	  dialogBlock_Txt[41]       = ""; 
	  dialogBlock_Txt_PersonActive[41]      = 1; 	  
	  dialogBlock_LoadIn[41]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[42]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[42]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[42]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[42]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[42]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[42]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[42]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[42]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[42]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[42]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[42]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[42]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[42]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[42]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[42]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[42]      = "";	  
	  dialogBlock_Txt[42]       = ""; 	 
	  dialogBlock_Txt_PersonActive[42]      = 1; 	  
	  dialogBlock_LoadIn[42]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[43]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[43]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[43]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[43]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[43]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[43]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[43]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[43]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[43]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[43]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[43]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[43]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[43]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[43]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[43]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[43]      = "";	  
	  dialogBlock_Txt[43]       = ""; 	
	  dialogBlock_Txt_PersonActive[43]      = 1; 	  
	  dialogBlock_LoadIn[43]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[44]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[44]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[44]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[44]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[44]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[44]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[44]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[44]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[44]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[44]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[44]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[44]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[44]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[44]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[44]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[44]      = "";	  
	  dialogBlock_Txt[44]       = ""; 
	  dialogBlock_Txt_PersonActive[44]      = 1; 	  
	  dialogBlock_LoadIn[44]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[45]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[45]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[45]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[45]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[45]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[45]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[45]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[45]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[45]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[45]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[45]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[45]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[45]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[45]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[45]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[45]      = "";	  
	  dialogBlock_Txt[45]       = ""; 
	  dialogBlock_Txt_PersonActive[45]      = 1; 	  
	  dialogBlock_LoadIn[45]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[46]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[46]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[46]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[46]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[46]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[46]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[46]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[46]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[46]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[46]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[46]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[46]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[46]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[46]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[46]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[46]      = "";	  
	  dialogBlock_Txt[46]       = ""; 
	  dialogBlock_Txt_PersonActive[46]      = 1; 	  
	  dialogBlock_LoadIn[46]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[47]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[47]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[47]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[47]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[47]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[47]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[47]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[47]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[47]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[47]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[47]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[47]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[47]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[47]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[47]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[47]      = "";	  
	  dialogBlock_Txt[47]       = ""; 	
	  dialogBlock_Txt_PersonActive[47]      = 1; 	  
	  dialogBlock_LoadIn[47]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[48]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[48]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[48]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[48]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[48]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[48]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[48]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[48]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[48]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[48]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[48]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[48]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[48]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[48]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[48]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[48]      = "";	  
	  dialogBlock_Txt[48]       = ""; 	
	  dialogBlock_Txt_PersonActive[48]      = 1; 	  
	  dialogBlock_LoadIn[48]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[49]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[49]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[49]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[49]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[49]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[49]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[49]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[49]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[49]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[49]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[49]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[49]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[49]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[49]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[49]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[49]      = "";	  
	  dialogBlock_Txt[49]       = ""; 	
	  dialogBlock_Txt_PersonActive[49]      = 1; 	  
	  dialogBlock_LoadIn[49]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[50]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[50]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[50]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[50]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[50]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[50]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[50]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[50]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[50]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[50]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[50]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[50]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[50]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[50]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[50]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[50]      = "";	  
	  dialogBlock_Txt[50]       = ""; 	 
	  dialogBlock_Txt_PersonActive[50]      = 1; 	  
	  dialogBlock_LoadIn[50]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[51]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[51]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[51]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[51]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[51]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[51]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[51]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[51]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[51]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[51]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[51]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[51]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[51]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[51]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[51]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[51]      = "";	  
	  dialogBlock_Txt[51]       = ""; 	
	  dialogBlock_Txt_PersonActive[51]      = 1; 	  
	  dialogBlock_LoadIn[51]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[52]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[52]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[52]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[52]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[52]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[52]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[52]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[52]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[52]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[52]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[52]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[52]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[52]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[52]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[52]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[52]      = "";	  
	  dialogBlock_Txt[52]       = ""; 	
	  dialogBlock_Txt_PersonActive[52]      = 1; 	  
	  dialogBlock_LoadIn[52]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[53]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[53]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[53]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[53]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[53]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[53]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[53]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[53]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[53]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[53]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[53]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[53]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[53]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[53]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[53]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[53]      = "";	  
	  dialogBlock_Txt[53]       = "";
	  dialogBlock_Txt_PersonActive[53]      = 1; 	  
	  dialogBlock_LoadIn[53]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[54]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[54]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[54]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[54]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[54]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[54]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[54]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[54]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[54]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[54]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[54]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[54]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[54]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[54]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[54]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[54]      = "";	  
	  dialogBlock_Txt[54]       = ""; 	 
	  dialogBlock_Txt_PersonActive[54]      = 1; 	  
	  dialogBlock_LoadIn[54]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[55]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[55]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[55]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[55]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[55]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[55]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[55]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[55]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[55]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[55]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[55]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[55]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[55]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[55]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[55]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[55]      = "";	  
	  dialogBlock_Txt[55]       = ""; 
	  dialogBlock_Txt_PersonActive[55]      = 1; 	  
	  dialogBlock_LoadIn[55]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[56]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[56]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[56]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[56]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[56]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[56]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[56]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[56]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[56]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[56]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[56]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[56]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[56]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[56]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[56]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[56]      = "";	  
	  dialogBlock_Txt[56]       = ""; 
	  dialogBlock_Txt_PersonActive[56]      = 1; 	  
	  dialogBlock_LoadIn[56]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[57]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[57]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[57]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[57]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[57]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[57]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[57]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[57]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[57]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[57]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[57]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[57]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[57]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[57]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[57]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[57]      = "";	  
	  dialogBlock_Txt[57]       = ""; 	 
	  dialogBlock_Txt_PersonActive[57]      = 1; 	  
	  dialogBlock_LoadIn[57]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[58]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[58]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[58]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[58]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[58]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[58]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[58]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[58]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[58]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[58]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[58]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[58]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[58]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[58]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[58]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[58]      = "";	  
	  dialogBlock_Txt[58]       = ""; 	
	  dialogBlock_Txt_PersonActive[58]      = 1; 	  
	  dialogBlock_LoadIn[58]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[59]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[59]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[59]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[59]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[59]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[59]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[59]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[59]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[59]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[59]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[59]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[59]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[59]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[59]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[59]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[59]      = "";	  
	  dialogBlock_Txt[59]       = ""; 	  
	  dialogBlock_Txt_PersonActive[59]      = 1; 	  
	  dialogBlock_LoadIn[59]	   = noone;	  // used for minigame loading




	  dialogBlock_SprIdleStatic_1_[60]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[60]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[60]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[60]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[60]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[60]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[60]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[60]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[60]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[60]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[60]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[60]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[60]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[60]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[60]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[60]      = "";	  
	  dialogBlock_Txt[60]       = ""; 	
	  dialogBlock_Txt_PersonActive[60]      = 1; 	  
	  dialogBlock_LoadIn[60]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[61]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[61]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[61]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[61]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[61]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[61]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[61]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[61]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[61]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[61]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[61]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[61]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[61]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[61]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[61]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[61]      = "";	  
	  dialogBlock_Txt[61]       = ""; 	 
	  dialogBlock_Txt_PersonActive[61]      = 1; 	  
	  dialogBlock_LoadIn[61]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[62]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[62]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[62]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[62]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[62]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[62]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[62]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[62]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[62]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[62]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[62]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[62]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[62]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[62]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[62]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[62]      = "";	  
	  dialogBlock_Txt[62]       = ""; 
	  dialogBlock_Txt_PersonActive[62]      = 1; 	  
	  dialogBlock_LoadIn[62]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[63]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[63]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[63]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[63]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[63]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[63]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[63]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[63]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[63]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[63]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[63]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[63]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[63]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[63]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[63]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[63]      = "";	  
	  dialogBlock_Txt[63]       = ""; 
	  dialogBlock_Txt_PersonActive[63]      = 1; 	  
	  dialogBlock_LoadIn[63]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[64]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[64]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[64]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[64]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[64]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[64]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[64]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[64]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[64]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[64]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[64]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[64]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[64]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[64]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[64]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[64]      = "";	  
	  dialogBlock_Txt[64]       = ""; 	 
	  dialogBlock_Txt_PersonActive[64]      = 1; 	  
	  dialogBlock_LoadIn[64]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[65]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[65]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[65]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[65]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[65]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[65]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[65]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[65]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[65]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[65]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[65]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[65]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[65]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[65]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[65]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[65]      = "";	  
	  dialogBlock_Txt[65]       = ""; 
	  dialogBlock_Txt_PersonActive[65]      = 1; 	  
	  dialogBlock_LoadIn[65]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[66]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[66]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[66]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[66]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[66]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[66]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[66]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[66]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[66]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[66]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[66]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[66]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[66]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[66]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[66]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[66]      = "";	  
	  dialogBlock_Txt[66]       = ""; 
	  dialogBlock_Txt_PersonActive[66]      = 1; 	  
	  dialogBlock_LoadIn[66]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[67]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[67]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[67]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[67]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[67]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[67]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[67]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[67]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[67]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[67]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[67]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[67]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[67]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[67]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[67]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[67]      = "";	  
	  dialogBlock_Txt[67]       = ""; 
	  dialogBlock_Txt_PersonActive[67]      = 1; 	  
	  dialogBlock_LoadIn[67]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[68]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[68]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[68]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[68]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[68]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[68]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[68]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[68]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[68]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[68]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[68]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[68]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[68]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[68]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[68]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[68]      = "";	  
	  dialogBlock_Txt[68]       = ""; 
	  dialogBlock_Txt_PersonActive[68]      = 1; 	  
	  dialogBlock_LoadIn[68]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[69]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[69]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[69]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[69]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[69]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[69]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[69]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[69]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[69]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[69]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[69]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[69]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[69]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[69]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[69]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[69]      = "";	  
	  dialogBlock_Txt[69]       = ""; 	
	  dialogBlock_Txt_PersonActive[69]      = 1; 	  
	  dialogBlock_LoadIn[69]	   = noone;	  // used for minigame loading




	  dialogBlock_SprIdleStatic_1_[70]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[70]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[70]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[70]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[70]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[70]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[70]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[70]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[70]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[70]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[70]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[70]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[70]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[70]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[70]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[70]      = "";	  
	  dialogBlock_Txt[70]       = ""; 	
	  dialogBlock_Txt_PersonActive[70]      = 1; 	  
	  dialogBlock_LoadIn[70]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[71]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[71]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[71]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[71]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[71]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[71]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[71]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[71]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[71]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[71]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[71]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[71]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[71]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[71]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[71]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[71]      = "";	  
	  dialogBlock_Txt[71]       = ""; 	 
	  dialogBlock_Txt_PersonActive[71]      = 1; 		  
	  dialogBlock_LoadIn[71]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[72]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[72]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[72]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[72]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[72]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[72]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[72]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[72]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[72]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[72]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[72]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[72]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[72]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[72]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[72]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[72]      = "";	  
	  dialogBlock_Txt[72]       = ""; 	  
	  dialogBlock_Txt_PersonActive[72]      = 1; 		  
	  dialogBlock_LoadIn[72]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[73]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[73]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[73]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[73]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[73]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[73]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[73]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[73]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[73]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[73]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[73]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[73]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[73]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[73]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[73]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[73]      = "";	  
	  dialogBlock_Txt[73]       = ""; 	
	  dialogBlock_Txt_PersonActive[73]      = 1; 		  
	  dialogBlock_LoadIn[73]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[74]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[74]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[74]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[74]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[74]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[74]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[74]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[74]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[74]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[74]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[74]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[74]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[74]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[74]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[74]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[74]      = "";	  
	  dialogBlock_Txt[74]       = ""; 	
	  dialogBlock_Txt_PersonActive[74]      = 1; 		  
	  dialogBlock_LoadIn[74]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[75]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[75]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[75]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[75]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[75]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[75]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[75]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[75]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[75]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[75]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[75]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[75]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[75]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[75]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[75]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[75]      = "";	  
	  dialogBlock_Txt[75]       = ""; 	  
	  dialogBlock_Txt_PersonActive[75]      = 1; 		  
	  dialogBlock_LoadIn[75]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[76]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[76]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[76]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[76]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[76]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[76]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[76]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[76]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[76]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[76]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[76]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[76]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[76]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[76]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[76]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[76]      = "";	  
	  dialogBlock_Txt[76]       = ""; 	
	  dialogBlock_Txt_PersonActive[76]      = 1; 		  
	  dialogBlock_LoadIn[76]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[77]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[77]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[77]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[77]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[77]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[77]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[77]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[77]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[77]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[77]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[77]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[77]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[77]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[77]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[77]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[77]      = "";	  
	  dialogBlock_Txt[77]       = ""; 
	  dialogBlock_Txt_PersonActive[77]      = 1; 		  
	  dialogBlock_LoadIn[77]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[78]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[78]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[78]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[78]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[78]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[78]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[78]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[78]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[78]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[78]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[78]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[78]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[78]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[78]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[78]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[78]      = "";	  
	  dialogBlock_Txt[78]       = ""; 	
	  dialogBlock_Txt_PersonActive[78]      = 1; 		  
	  dialogBlock_LoadIn[78]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[79]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[79]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[79]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[79]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[79]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[79]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[79]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[79]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[79]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[79]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[79]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[79]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[79]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[79]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[79]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[79]      = "";	  
	  dialogBlock_Txt[79]       = ""; 
	  dialogBlock_Txt_PersonActive[79]      = 1; 		  
	  dialogBlock_LoadIn[79]	   = noone;	  // used for minigame loading





	  dialogBlock_SprIdleStatic_1_[80]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[80]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[80]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[80]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[80]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[80]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[80]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[80]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[80]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[80]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[80]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[80]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[80]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[80]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[80]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[80]      = "";	  
	  dialogBlock_Txt[80]       = ""; 
	  dialogBlock_Txt_PersonActive[80]      = 1; 		  
	  dialogBlock_LoadIn[80]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[81]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[81]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[81]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[81]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[81]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[81]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[81]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[81]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[81]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[81]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[81]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[81]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[81]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[81]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[81]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[81]      = "";	  
	  dialogBlock_Txt[81]       = ""; 
	  dialogBlock_Txt_PersonActive[81]      = 1; 	  
	  dialogBlock_LoadIn[81]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[82]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[82]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[82]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[82]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[82]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[82]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[82]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[82]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[82]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[82]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[82]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[82]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[82]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[82]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[82]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[82]      = "";	  
	  dialogBlock_Txt[82]       = "";
	  dialogBlock_Txt_PersonActive[82]      = 1; 	  
	  dialogBlock_LoadIn[82]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[83]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[83]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[83]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[83]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[83]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[83]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[83]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[83]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[83]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[83]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[83]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[83]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[83]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[83]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[83]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[83]      = "";	  
	  dialogBlock_Txt[83]       = ""; 	
	  dialogBlock_Txt_PersonActive[83]      = 1; 	  
	  dialogBlock_LoadIn[83]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[84]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[84]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[84]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[84]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[84]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[84]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[84]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[84]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[84]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[84]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[84]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[84]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[84]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[84]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[84]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[84]      = "";	  
	  dialogBlock_Txt[84]       = ""; 
	  dialogBlock_Txt_PersonActive[84]      = 1; 	  
	  dialogBlock_LoadIn[84]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[85]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[85]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[85]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[85]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[85]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[85]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[85]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[85]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[85]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[85]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[85]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[85]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[85]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[85]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[85]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[85]      = "";	  
	  dialogBlock_Txt[85]       = ""; 	
	  dialogBlock_Txt_PersonActive[85]      = 1; 	  
	  dialogBlock_LoadIn[85]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[86]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[86]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[86]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[86]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[86]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[86]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[86]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[86]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[86]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[86]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[86]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[86]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[86]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[86]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[86]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[86]      = "";	  
	  dialogBlock_Txt[86]       = ""; 	
	  dialogBlock_Txt_PersonActive[86]      = 1; 	  
	  dialogBlock_LoadIn[86]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[87]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[87]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[87]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[87]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[87]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[87]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[87]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[87]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[87]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[87]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[87]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[87]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[87]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[87]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[87]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[87]      = "";	  
	  dialogBlock_Txt[87]       = ""; 	
	  dialogBlock_Txt_PersonActive[87]      = 1; 	  
	  dialogBlock_LoadIn[87]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[88]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[88]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[88]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[88]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[88]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[88]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[88]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[88]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[88]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[88]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[88]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[88]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[88]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[88]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[88]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[88]      = "";	  
	  dialogBlock_Txt[88]       = ""; 
	  dialogBlock_Txt_PersonActive[88]      = 1; 	  
	  dialogBlock_LoadIn[88]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[89]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[89]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[89]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[89]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[89]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[89]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[89]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[89]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[89]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[89]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[89]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[89]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[89]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[89]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[89]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[89]      = "";	  
	  dialogBlock_Txt[89]       = ""; 	
	  dialogBlock_Txt_PersonActive[89]      = 1; 	  
	  dialogBlock_LoadIn[89]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[90]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[90]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[90]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[90]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[90]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[90]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[90]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[90]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[90]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[90]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[90]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[90]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[90]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[90]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[90]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[90]      = "";	  
	  dialogBlock_Txt[90]       = ""; 
	  dialogBlock_Txt_PersonActive[90]      = 1; 	  
	  dialogBlock_LoadIn[90]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[91]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[91]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[91]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[91]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[91]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[91]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[91]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[91]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[91]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[91]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[91]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[91]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[91]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[91]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[91]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[91]      = "";	  
	  dialogBlock_Txt[91]       = ""; 
	  dialogBlock_Txt_PersonActive[91]      = 1; 	  
	  dialogBlock_LoadIn[91]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[92]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[92]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[92]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[92]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[92]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[92]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[92]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[92]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[92]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[92]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[92]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[92]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[92]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[92]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[92]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[92]      = "";	  
	  dialogBlock_Txt[92]       = ""; 	  
	  dialogBlock_Txt_PersonActive[92]      = 1; 	  
	  dialogBlock_LoadIn[92]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[93]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[93]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[93]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[93]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[93]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[93]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[93]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[93]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[93]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[93]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[93]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[93]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[93]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[93]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[93]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[93]      = "";	  
	  dialogBlock_Txt[93]       = ""; 
	  dialogBlock_Txt_PersonActive[93]      = 1; 	  
	  dialogBlock_LoadIn[93]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[94]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[94]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[94]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[94]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[94]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[94]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[94]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[94]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[94]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[94]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[94]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[94]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[94]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[94]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[94]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[94]      = "";	  
	  dialogBlock_Txt[94]       = ""; 
	  dialogBlock_Txt_PersonActive[94]      = 1; 	  
	  dialogBlock_LoadIn[94]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[95]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[95]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[95]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[95]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[95]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[95]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[95]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[95]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[95]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[95]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[95]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[95]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[95]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[95]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[95]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[95]      = "";	  
	  dialogBlock_Txt[95]       = ""; 
	  dialogBlock_Txt_PersonActive[95]      = 1; 	  
	  dialogBlock_LoadIn[95]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[96]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[96]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[96]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[96]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[96]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[96]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[96]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[96]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[96]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[96]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[96]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[96]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[96]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[96]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[96]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[96]      = "";	  
	  dialogBlock_Txt[96]       = ""; 	
	  dialogBlock_Txt_PersonActive[96]      = 1; 	  
	  dialogBlock_LoadIn[96]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[97]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[97]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[97]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[97]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[97]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[97]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[97]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[97]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[97]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[97]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[97]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[97]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[97]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[97]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[97]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[97]      = "";	  
	  dialogBlock_Txt[97]       = ""; 
	  dialogBlock_Txt_PersonActive[97]      = 1; 	  
	  dialogBlock_LoadIn[97]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[98]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[98]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[98]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[98]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[98]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[98]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[98]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[98]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[98]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[98]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[98]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[98]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[98]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[98]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[98]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[98]      = "";	  
	  dialogBlock_Txt[98]       = ""; 	
	  dialogBlock_Txt_PersonActive[98]      = 1; 	  
	  dialogBlock_LoadIn[98]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[99]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[99]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[99]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[99]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[99]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[99]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[99]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[99]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[99]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[99]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[99]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[99]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[99]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[99]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[99]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[99]      = "";	  
	  dialogBlock_Txt[99]       = ""; 
	  dialogBlock_Txt_PersonActive[99]      = 1; 	  
	  dialogBlock_LoadIn[99]	   = noone;	  // used for minigame loading




 #endregion

 #region all vars 100- 199

	  // blocks!
	  dialogBlock_SprIdleStatic_1_[100]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[100]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[100]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[100]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[100]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[100]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[100]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[100]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[100]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[100]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[100]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[100]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[100]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[100]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[100]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[100]      = "";	  
	  dialogBlock_Txt[100]       = ""; 	  
	  dialogBlock_Txt_PersonActive[100]       = 1; 	  // who is talking	  
	  dialogBlock_LoadIn[100]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[101]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[101]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[101]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[101]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[101]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[101]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[101]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[101]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[101]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[101]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[101]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[101]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[101]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[101]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[101]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[101]      = "";	  
	  dialogBlock_Txt[101]       = ""; 	
	  dialogBlock_Txt_PersonActive[101]       = 1; 	 	  
	  dialogBlock_LoadIn[101]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[102]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[102]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[102]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[102]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[12]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[102]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[102]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[102]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[102]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[102]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[102]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[102]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[102]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[102]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[102]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[102]      = "";	  
	  dialogBlock_Txt[102]       = ""; 
	  dialogBlock_Txt_PersonActive[102]       = 1; 	 	  
	  dialogBlock_LoadIn[102]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[103]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[103]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[103]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[103]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[103]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[103]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[103]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[103]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[103]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[103]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[103]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[103]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[103]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[103]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[103]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[103]      = "";	  
	  dialogBlock_Txt[103]       = ""; 
	  dialogBlock_Txt_PersonActive[103]       = 1; 	 	  
	  dialogBlock_LoadIn[103]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[104]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[104]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[104]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[104]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[104]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[104]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[104]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[104]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[104]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[104]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[104]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[104]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[104]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[104]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[104]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[104]      = "";	  
	  dialogBlock_Txt[104]       = ""; 	
	  dialogBlock_Txt_PersonActive[104]       = 1; 	 	  
	  dialogBlock_LoadIn[104]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[105]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[105]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[105]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[105]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[105]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[105]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[105]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[105]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[105]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[105]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[105]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[105]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[105]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[105]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[105]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[105]      = "";	  
	  dialogBlock_Txt[105]       = ""; 
	  dialogBlock_Txt_PersonActive[105]       = 1; 	 	  
	  dialogBlock_LoadIn[105]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[106]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[106]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[106]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[106]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[106]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[106]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[106]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[106]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[106]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[106]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[106]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[106]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[106]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[106]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[106]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[106]      = "";	  
	  dialogBlock_Txt[106]       = ""; 
	  dialogBlock_Txt_PersonActive[106]       = 1; 	 	  
	  dialogBlock_LoadIn[106]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[107]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[107]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[107]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[107]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[107]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[107]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[107]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[107]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[107]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[107]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[107]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[107]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[107]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[107]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[107]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[107]      = "";	  
	  dialogBlock_Txt[107]       = ""; 	 
	  dialogBlock_Txt_PersonActive[107]       = 1; 	 	  
	  dialogBlock_LoadIn[107]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[108]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[108]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[108]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[108]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[108]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[108]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[108]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[108]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[108]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[108]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[108]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[108]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[108]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[108]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[108]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[108]      = "";	  
	  dialogBlock_Txt[108]       = ""; 
	  dialogBlock_Txt_PersonActive[108]       = 1; 	 	  
	  dialogBlock_LoadIn[108]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[109]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[109]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[109]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[109]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[109]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[109]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[109]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[109]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[109]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[109]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[109]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[109]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[109]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[109]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[109]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[109]      = "";	  
	  dialogBlock_Txt[109]       = ""; 	
	  dialogBlock_Txt_PersonActive[19]       = 1; 	 	  
	  dialogBlock_LoadIn[109]	   = noone;	  // used for minigame loading




	  dialogBlock_SprIdleStatic_1_[110]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[110]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[110]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[110]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[110]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[110]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[110]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[110]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[110]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[110]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[110]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[110]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[110]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[110]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[110]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[110]      = "";	  
	  dialogBlock_Txt[110]       = ""; 	
	  dialogBlock_Txt_PersonActive[110]      = 1; 	 	  
	  dialogBlock_LoadIn[110]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[111]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[111]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[111]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[111]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[111]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[111]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[111]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[111]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[111]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[111]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[111]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[111]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[111]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[111]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[111]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[111]      = "";	  
	  dialogBlock_Txt[111]       = ""; 	 
	  dialogBlock_Txt_PersonActive[111]      = 1; 	  
	  dialogBlock_LoadIn[111]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[112]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[112]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[112]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[112]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[112]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[112]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[112]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[112]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[112]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[112]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[112]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[112]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[112]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[112]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[112]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[112]      = "";	  
	  dialogBlock_Txt[112]       = ""; 	
	  dialogBlock_Txt_PersonActive[112]      = 1; 		  
	  dialogBlock_LoadIn[112]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[113]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[113]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[113]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[113]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[113]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[113]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[113]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[113]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[113]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[113]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[113]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[113]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[113]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[113]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[113]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[113]      = "";	  
	  dialogBlock_Txt[113]       = ""; 	
	  dialogBlock_Txt_PersonActive[113]      = 1; 		  
	  dialogBlock_LoadIn[113]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[114]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[114]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[114]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[114]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[114]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[114]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[114]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[114]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[114]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[114]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[114]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[114]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[114]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[114]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[114]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[114]      = "";	  
	  dialogBlock_Txt[114]       = ""; 	
	  dialogBlock_Txt_PersonActive[114]      = 1; 		  
	  dialogBlock_LoadIn[114]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[115]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[115]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[115]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[115]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[115]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[115]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[115]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[115]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[115]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[115]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[115]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[115]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[115]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[115]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[115]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[115]      = "";	  
	  dialogBlock_Txt[115]       = ""; 	  
	  dialogBlock_Txt_PersonActive[115]      = 1; 		  
	  dialogBlock_LoadIn[115]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[116]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[116]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[116]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[116]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[116]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[116]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[116]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[116]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[116]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[116]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[116]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[116]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[116]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[116]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[116]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[116]      = "";	  
	  dialogBlock_Txt[116]       = ""; 	
	  dialogBlock_Txt_PersonActive[116]      = 1; 		  
	  dialogBlock_LoadIn[116]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[117]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[117]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[117]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[117]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[117]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[117]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[117]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[117]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[117]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[117]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[117]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[117]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[117]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[117]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[117]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[117]      = "";	  
	  dialogBlock_Txt[117]       = ""; 
	  dialogBlock_Txt_PersonActive[117]      = 1; 		  
	  dialogBlock_LoadIn[117]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[118]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[118]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[118]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[118]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[118]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[118]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[118]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[118]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[118]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[118]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[118]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[118]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[118]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[118]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[118]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[118]      = "";	  
	  dialogBlock_Txt[118]       = ""; 	
	  dialogBlock_Txt_PersonActive[118]      = 1; 		  
	  dialogBlock_LoadIn[118]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[119]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[119]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[119]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[119]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[119]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[119]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[119]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[119]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[119]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[119]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[119]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[119]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[119]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[119]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[119]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[119]      = "";	  
	  dialogBlock_Txt[119]       = ""; 
	  dialogBlock_Txt_PersonActive[119]      = 1; 		  
	  dialogBlock_LoadIn[119]	   = noone;	  // used for minigame loading




	  dialogBlock_SprIdleStatic_1_[120]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[120]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[120]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[120]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[120]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[120]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[120]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[120]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[120]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[120]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[120]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[120]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[120]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[120]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[120]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[120]      = "";	  
	  dialogBlock_Txt[120]       = ""; 
	  dialogBlock_Txt_PersonActive[120]      = 1; 		  
	  dialogBlock_LoadIn[120]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[121]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[121]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[121]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[121]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[121]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[121]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[121]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[121]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[121]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[121]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[121]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[121]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[121]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[121]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[121]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[121]      = "";	  
	  dialogBlock_Txt[121]       = ""; 
	  dialogBlock_Txt_PersonActive[121]      = 1; 	  
	  dialogBlock_LoadIn[121]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[122]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[122]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[122]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[122]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[122]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[122]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[122]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[122]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[122]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[122]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[122]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[122]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[122]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[122]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[122]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[122]      = "";	  
	  dialogBlock_Txt[122]       = ""; 	 
	  dialogBlock_Txt_PersonActive[122]      = 1; 	  
	  dialogBlock_LoadIn[122]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[123]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[123]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[123]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[123]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[123]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[123]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[123]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[123]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[123]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[123]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[123]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[123]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[123]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[123]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[123]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[123]      = "";	  
	  dialogBlock_Txt[123]       = ""; 
	  dialogBlock_Txt_PersonActive[123]      = 1; 	  
	  dialogBlock_LoadIn[123]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[124]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[124]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[124]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[124]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[124]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[124]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[124]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[124]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[124]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[124]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[124]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[124]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[124]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[124]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[124]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[124]      = "";	  
	  dialogBlock_Txt[124]       = ""; 	
	  dialogBlock_Txt_PersonActive[124]      = 1; 	  
	  dialogBlock_LoadIn[124]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[125]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[125]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[125]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[125]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[125]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[125]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[125]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[125]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[125]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[125]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[125]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[125]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[125]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[125]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[125]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[125]      = "";	  
	  dialogBlock_Txt[125]       = ""; 
	  dialogBlock_Txt_PersonActive[125]      = 1; 	  
	  dialogBlock_LoadIn[125]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[126]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[126]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[126]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[126]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[126]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[126]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[126]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[126]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[126]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[126]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[126]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[126]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[126]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[126]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[126]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[126]      = "";	  
	  dialogBlock_Txt[126]       = ""; 	 
	  dialogBlock_Txt_PersonActive[126]      = 1; 	  
	  dialogBlock_LoadIn[126]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[127]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[127]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[127]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[127]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[127]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[127]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[127]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[127]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[127]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[127]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[127]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[127]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[127]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[127]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[127]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[127]      = "";	  
	  dialogBlock_Txt[127]       = ""; 	
	  dialogBlock_Txt_PersonActive[127]      = 1; 	  
	  dialogBlock_LoadIn[127]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[128]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[128]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[128]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[128]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[128]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[128]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[128]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[128]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[128]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[128]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[128]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[128]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[128]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[128]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[128]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[128]      = "";	  
	  dialogBlock_Txt[128]       = ""; 
	  dialogBlock_Txt_PersonActive[128]      = 1; 	  
	  dialogBlock_LoadIn[128]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[129]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[129]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[129]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[129]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[129]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[129]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[129]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[129]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[129]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[129]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[129]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[129]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[129]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[129]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[129]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[129]      = "";	  
	  dialogBlock_Txt[129]       = ""; 	 
	  dialogBlock_Txt_PersonActive[129]      = 1; 	  
	  dialogBlock_LoadIn[129]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[130]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[130]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[130]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[130]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[130]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[130]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[130]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[130]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[130]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[130]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[130]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[130]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[130]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[130]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[130]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[130]      = "";	  
	  dialogBlock_Txt[130]       = ""; 	
	  dialogBlock_Txt_PersonActive[130]      = 1; 	  
	  dialogBlock_LoadIn[130]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[131]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[131]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[131]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[131]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[131]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[131]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[131]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[131]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[131]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[131]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[131]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[131]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[131]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[131]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[131]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[131]      = "";	  
	  dialogBlock_Txt[131]       = ""; 	
	  dialogBlock_Txt_PersonActive[131]      = 1; 	  
	  dialogBlock_LoadIn[131]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[132]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[132]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[132]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[132]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[132]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[132]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[132]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[132]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[132]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[132]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[132]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[132]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[132]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[132]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[132]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[132]      = "";	  
	  dialogBlock_Txt[132]       = ""; 
	  dialogBlock_Txt_PersonActive[132]      = 1; 	  
	  dialogBlock_LoadIn[132]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[133]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[133]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[133]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[133]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[133]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[133]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[133]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[133]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[133]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[133]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[133]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[133]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[133]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[133]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[133]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[133]      = "";	  
	  dialogBlock_Txt[133]       = ""; 	
	  dialogBlock_Txt_PersonActive[133]      = 1; 	  
	  dialogBlock_LoadIn[133]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[134]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[134]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[134]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[134]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[134]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[134]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[134]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[134]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[134]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[134]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[134]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[134]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[134]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[134]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[134]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[134]      = "";	  
	  dialogBlock_Txt[134]       = ""; 
	  dialogBlock_Txt_PersonActive[134]      = 1; 	  
	  dialogBlock_LoadIn[134]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[135]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[135]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[135]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[135]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[135]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[135]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[135]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[135]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[135]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[135]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[135]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[135]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[135]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[135]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[135]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[135]      = "";	  
	  dialogBlock_Txt[135]       = ""; 	
	  dialogBlock_Txt_PersonActive[135]      = 1; 	  
	  dialogBlock_LoadIn[135]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[136]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[136]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[136]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[136]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[136]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[136]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[136]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[136]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[136]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[136]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[136]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[136]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[136]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[136]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[136]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[136]      = "";	  
	  dialogBlock_Txt[136]       = ""; 	  
	  dialogBlock_Txt_PersonActive[136]      = 1; 	  
	  dialogBlock_LoadIn[136]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[137]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[137]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[137]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[137]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[137]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[137]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[137]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[137]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[137]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[137]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[137]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[137]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[137]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[137]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[137]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[137]      = "";	  
	  dialogBlock_Txt[137]       = ""; 	
	  dialogBlock_Txt_PersonActive[137]      = 1; 	  
	  dialogBlock_LoadIn[137]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[138]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[138]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[138]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[138]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[138]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[138]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[138]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[138]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[138]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[138]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[138]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[138]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[138]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[138]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[138]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[138]      = "";	  
	  dialogBlock_Txt[138]       = ""; 	
	  dialogBlock_Txt_PersonActive[138]      = 1; 	  
	  dialogBlock_LoadIn[138]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[139]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[139]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[139]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[139]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[139]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[139]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[139]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[139]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[139]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[139]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[139]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[139]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[139]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[139]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[139]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[139]      = "";	  
	  dialogBlock_Txt[139]       = ""; 
	  dialogBlock_Txt_PersonActive[139]      = 1; 	  
	  dialogBlock_LoadIn[139]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[140]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[140]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[140]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[140]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[140]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[140]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[140]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[140]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[140]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[140]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[140]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[140]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[140]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[140]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[140]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[140]      = "";	  
	  dialogBlock_Txt[140]       = ""; 	 
	  dialogBlock_Txt_PersonActive[140]      = 1; 	  
	  dialogBlock_LoadIn[140]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[141]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[141]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[141]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[141]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[141]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[141]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[141]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[141]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[141]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[141]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[141]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[141]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[141]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[141]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[141]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[141]      = "";	  
	  dialogBlock_Txt[141]       = ""; 
	  dialogBlock_Txt_PersonActive[141]      = 1; 	  
	  dialogBlock_LoadIn[141]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[142]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[142]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[142]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[142]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[142]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[142]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[142]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[142]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[142]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[142]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[142]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[142]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[142]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[142]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[142]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[142]      = "";	  
	  dialogBlock_Txt[142]       = ""; 	 
	  dialogBlock_Txt_PersonActive[142]      = 1; 	  
	  dialogBlock_LoadIn[142]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[143]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[143]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[143]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[143]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[143]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[143]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[143]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[143]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[143]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[143]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[143]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[143]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[143]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[143]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[143]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[143]      = "";	  
	  dialogBlock_Txt[143]       = ""; 	
	  dialogBlock_Txt_PersonActive[143]      = 1; 	  
	  dialogBlock_LoadIn[143]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[144]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[144]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[144]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[144]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[144]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[144]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[144]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[144]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[144]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[144]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[144]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[144]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[144]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[144]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[144]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[144]      = "";	  
	  dialogBlock_Txt[144]       = ""; 
	  dialogBlock_Txt_PersonActive[144]      = 1; 	  
	  dialogBlock_LoadIn[144]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[145]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[145]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[145]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[145]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[145]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[145]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[145]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[145]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[145]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[145]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[145]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[145]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[145]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[145]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[145]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[145]      = "";	  
	  dialogBlock_Txt[145]       = ""; 
	  dialogBlock_Txt_PersonActive[145]      = 1; 	  
	  dialogBlock_LoadIn[145]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[146]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[146]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[146]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[146]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[146]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[146]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[146]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[146]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[146]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[146]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[146]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[146]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[146]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[146]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[146]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[146]      = "";	  
	  dialogBlock_Txt[146]       = ""; 
	  dialogBlock_Txt_PersonActive[146]      = 1; 	  
	  dialogBlock_LoadIn[146]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[147]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[147]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[147]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[147]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[147]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[147]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[147]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[147]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[147]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[147]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[147]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[147]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[147]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[147]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[147]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[147]      = "";	  
	  dialogBlock_Txt[147]       = ""; 	
	  dialogBlock_Txt_PersonActive[147]      = 1; 	  
	  dialogBlock_LoadIn[147]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[148]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[148]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[148]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[148]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[148]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[148]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[148]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[148]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[148]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[148]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[148]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[148]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[148]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[148]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[148]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[148]      = "";	  
	  dialogBlock_Txt[148]       = ""; 	
	  dialogBlock_Txt_PersonActive[148]      = 1; 	  
	  dialogBlock_LoadIn[148]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[149]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[149]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[149]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[149]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[149]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[149]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[149]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[149]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[149]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[149]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[149]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[149]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[149]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[149]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[149]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[149]      = "";	  
	  dialogBlock_Txt[149]       = ""; 	
	  dialogBlock_Txt_PersonActive[149]      = 1; 	  
	  dialogBlock_LoadIn[149]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[150]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[150]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[150]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[150]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[150]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[150]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[150]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[150]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[150]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[150]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[150]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[150]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[150]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[150]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[150]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[150]      = "";	  
	  dialogBlock_Txt[150]       = ""; 	 
	  dialogBlock_Txt_PersonActive[150]      = 1; 	  
	  dialogBlock_LoadIn[150]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[151]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[151]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[151]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[151]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[151]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[151]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[151]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[151]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[151]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[151]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[151]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[151]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[151]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[151]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[151]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[151]      = "";	  
	  dialogBlock_Txt[151]       = ""; 	
	  dialogBlock_Txt_PersonActive[151]      = 1; 	  
	  dialogBlock_LoadIn[151]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[152]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[152]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[152]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[152]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[152]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[152]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[152]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[152]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[152]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[152]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[152]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[152]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[152]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[152]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[152]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[152]      = "";	  
	  dialogBlock_Txt[152]       = ""; 	
	  dialogBlock_Txt_PersonActive[152]      = 1; 	  
	  dialogBlock_LoadIn[152]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[153]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[153]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[153]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[153]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[153]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[153]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[153]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[153]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[153]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[153]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[153]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[153]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[153]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[153]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[153]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[153]      = "";	  
	  dialogBlock_Txt[153]       = "";
	  dialogBlock_Txt_PersonActive[153]      = 1; 	  
	  dialogBlock_LoadIn[153]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[154]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[154]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[154]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[154]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[154]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[154]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[154]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[154]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[154]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[154]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[154]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[154]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[154]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[154]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[154]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[154]      = "";	  
	  dialogBlock_Txt[154]       = ""; 	 
	  dialogBlock_Txt_PersonActive[154]      = 1; 	  
	  dialogBlock_LoadIn[154]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[155]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[155]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[155]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[155]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[155]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[155]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[155]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[155]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[155]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[155]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[155]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[155]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[155]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[155]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[155]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[155]      = "";	  
	  dialogBlock_Txt[155]       = ""; 
	  dialogBlock_Txt_PersonActive[155]      = 1; 	  
	  dialogBlock_LoadIn[155]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[156]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[156]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[156]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[156]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[156]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[156]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[156]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[156]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[156]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[156]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[156]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[156]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[156]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[156]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[156]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[156]      = "";	  
	  dialogBlock_Txt[156]       = ""; 
	  dialogBlock_Txt_PersonActive[156]      = 1; 	  
	  dialogBlock_LoadIn[156]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[157]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[157]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[157]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[157]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[157]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[157]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[157]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[157]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[157]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[157]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[157]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[157]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[157]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[157]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[157]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[157]      = "";	  
	  dialogBlock_Txt[157]       = ""; 	 
	  dialogBlock_Txt_PersonActive[157]      = 1; 	  
	  dialogBlock_LoadIn[157]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[158]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[158]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[158]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[158]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[158]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[158]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[158]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[158]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[158]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[158]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[158]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[158]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[158]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[158]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[158]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[158]      = "";	  
	  dialogBlock_Txt[158]       = ""; 	
	  dialogBlock_Txt_PersonActive[158]      = 1; 	  
	  dialogBlock_LoadIn[158]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[159]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[159]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[159]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[159]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[159]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[159]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[159]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[159]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[159]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[159]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[159]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[159]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[159]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[159]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[159]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[159]      = "";	  
	  dialogBlock_Txt[159]       = ""; 	  
	  dialogBlock_Txt_PersonActive[159]      = 1; 	  
	  dialogBlock_LoadIn[159]	   = noone;	  // used for minigame loading




	  dialogBlock_SprIdleStatic_1_[160]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[160]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[160]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[160]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[160]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[160]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[160]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[160]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[160]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[160]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[160]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[160]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[160]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[160]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[160]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[160]      = "";	  
	  dialogBlock_Txt[160]       = ""; 	
	  dialogBlock_Txt_PersonActive[160]      = 1; 	  
	  dialogBlock_LoadIn[160]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[161]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[161]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[161]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[161]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[161]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[161]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[161]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[161]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[161]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[161]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[161]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[161]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[161]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[161]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[161]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[161]      = "";	  
	  dialogBlock_Txt[161]       = ""; 	 
	  dialogBlock_Txt_PersonActive[161]      = 1; 	  
	  dialogBlock_LoadIn[161]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[162]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[162]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[162]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[162]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[162]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[162]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[162]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[162]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[162]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[162]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[162]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[162]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[162]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[162]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[162]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[162]      = "";	  
	  dialogBlock_Txt[162]       = ""; 
	  dialogBlock_Txt_PersonActive[162]      = 1; 	  
	  dialogBlock_LoadIn[162]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[163]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[163]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[163]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[163]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[163]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[163]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[163]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[163]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[163]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[163]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[163]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[163]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[163]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[163]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[163]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[163]      = "";	  
	  dialogBlock_Txt[163]       = ""; 
	  dialogBlock_Txt_PersonActive[163]      = 1; 	  
	  dialogBlock_LoadIn[163]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[164]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[164]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[164]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[164]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[164]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[164]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[164]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[164]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[164]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[164]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[164]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[164]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[164]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[164]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[164]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[164]      = "";	  
	  dialogBlock_Txt[164]       = ""; 	 
	  dialogBlock_Txt_PersonActive[164]      = 1; 	  
	  dialogBlock_LoadIn[164]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[165]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[165]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[165]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[165]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[165]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[165]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[165]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[165]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[165]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[165]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[165]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[165]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[165]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[165]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[165]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[165]      = "";	  
	  dialogBlock_Txt[165]       = ""; 
	  dialogBlock_Txt_PersonActive[165]      = 1; 	  
	  dialogBlock_LoadIn[165]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[166]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[166]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[166]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[166]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[166]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[166]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[166]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[166]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[166]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[166]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[166]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[166]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[166]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[166]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[166]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[166]      = "";	  
	  dialogBlock_Txt[166]       = ""; 
	  dialogBlock_Txt_PersonActive[166]      = 1; 	  
	  dialogBlock_LoadIn[166]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[167]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[167]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[167]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[167]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[167]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[167]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[167]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[167]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[167]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[167]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[167]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[167]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[167]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[167]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[167]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[167]      = "";	  
	  dialogBlock_Txt[167]       = ""; 
	  dialogBlock_Txt_PersonActive[167]      = 1; 	  
	  dialogBlock_LoadIn[167]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[168]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[168]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[168]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[168]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[168]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[168]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[168]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[168]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[168]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[168]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[168]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[168]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[168]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[168]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[168]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[168]      = "";	  
	  dialogBlock_Txt[168]       = ""; 
	  dialogBlock_Txt_PersonActive[168]      = 1; 	  
	  dialogBlock_LoadIn[168]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[169]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[169]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[169]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[169]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[169]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[169]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[169]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[169]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[169]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[169]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[169]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[169]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[169]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[169]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[169]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[169]      = "";	  
	  dialogBlock_Txt[169]       = ""; 	
	  dialogBlock_Txt_PersonActive[169]      = 1; 	  
	  dialogBlock_LoadIn[169]	   = noone;	  // used for minigame loading




	  dialogBlock_SprIdleStatic_1_[170]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[170]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[170]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[170]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[170]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[170]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[170]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[170]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[170]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[170]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[170]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[170]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[170]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[170]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[170]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[170]      = "";	  
	  dialogBlock_Txt[170]       = ""; 	
	  dialogBlock_Txt_PersonActive[170]      = 1; 	  
	  dialogBlock_LoadIn[170]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[171]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[171]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[171]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[171]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[171]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[171]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[171]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[171]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[171]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[171]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[171]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[171]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[171]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[171]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[171]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[171]      = "";	  
	  dialogBlock_Txt[171]       = ""; 	 
	  dialogBlock_Txt_PersonActive[171]      = 1; 		  
	  dialogBlock_LoadIn[171]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[172]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[172]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[172]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[172]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[172]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[172]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[172]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[172]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[172]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[172]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[172]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[172]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[172]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[172]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[172]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[172]      = "";	  
	  dialogBlock_Txt[172]       = ""; 	  
	  dialogBlock_Txt_PersonActive[172]      = 1; 		  
	  dialogBlock_LoadIn[172]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[173]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[173]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[173]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[173]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[173]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[173]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[173]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[173]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[173]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[173]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[173]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[173]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[173]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[173]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[173]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[173]      = "";	  
	  dialogBlock_Txt[173]       = ""; 	
	  dialogBlock_Txt_PersonActive[173]      = 1; 		  
	  dialogBlock_LoadIn[173]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[174]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[174]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[174]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[174]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[174]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[174]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[174]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[174]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[174]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[174]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[174]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[174]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[174]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[174]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[174]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[174]      = "";	  
	  dialogBlock_Txt[174]       = ""; 	
	  dialogBlock_Txt_PersonActive[174]      = 1; 		  
	  dialogBlock_LoadIn[174]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[175]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[175]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[175]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[175]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[175]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[175]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[175]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[175]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[175]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[175]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[175]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[175]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[175]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[175]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[175]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[175]      = "";	  
	  dialogBlock_Txt[175]       = ""; 	  
	  dialogBlock_Txt_PersonActive[175]      = 1; 		  
	  dialogBlock_LoadIn[175]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[176]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[176]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[176]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[176]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[176]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[176]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[176]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[176]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[176]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[176]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[176]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[176]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[176]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[176]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[176]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[176]      = "";	  
	  dialogBlock_Txt[176]       = ""; 	
	  dialogBlock_Txt_PersonActive[176]      = 1; 		  
	  dialogBlock_LoadIn[176]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[177]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[177]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[177]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[177]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[177]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[177]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[177]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[177]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[177]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[177]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[177]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[177]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[177]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[177]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[177]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[177]      = "";	  
	  dialogBlock_Txt[177]       = ""; 
	  dialogBlock_Txt_PersonActive[177]      = 1; 		  
	  dialogBlock_LoadIn[177]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[178]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[178]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[178]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[178]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[178]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[178]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[178]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[178]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[178]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[178]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[178]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[178]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[178]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[178]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[178]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[178]      = "";	  
	  dialogBlock_Txt[178]       = ""; 	
	  dialogBlock_Txt_PersonActive[178]      = 1; 		  
	  dialogBlock_LoadIn[178]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[179]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[179]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[179]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[179]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[179]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[179]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[179]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[179]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[179]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[179]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[179]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[179]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[179]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[179]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[179]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[179]      = "";	  
	  dialogBlock_Txt[179]       = ""; 
	  dialogBlock_Txt_PersonActive[179]      = 1; 		  
	  dialogBlock_LoadIn[179]	   = noone;	  // used for minigame loading





	  dialogBlock_SprIdleStatic_1_[180]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[180]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[180]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[180]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[180]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[180]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[180]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[180]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[180]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[180]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[180]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[180]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[180]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[180]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[180]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[180]      = "";	  
	  dialogBlock_Txt[180]       = ""; 
	  dialogBlock_Txt_PersonActive[180]      = 1; 		  
	  dialogBlock_LoadIn[180]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[181]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[181]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[181]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[181]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[181]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[181]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[181]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[181]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[181]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[181]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[181]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[181]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[181]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[181]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[181]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[181]      = "";	  
	  dialogBlock_Txt[181]       = ""; 
	  dialogBlock_Txt_PersonActive[181]      = 1; 	  
	  dialogBlock_LoadIn[181]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[182]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[182]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[182]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[182]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[182]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[182]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[182]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[182]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[182]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[182]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[182]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[182]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[182]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[182]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[182]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[182]      = "";	  
	  dialogBlock_Txt[182]       = "";
	  dialogBlock_Txt_PersonActive[182]      = 1; 	  
	  dialogBlock_LoadIn[182]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[183]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[183]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[183]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[183]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[183]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[183]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[183]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[183]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[183]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[183]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[183]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[183]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[183]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[183]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[183]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[183]      = "";	  
	  dialogBlock_Txt[183]       = ""; 	
	  dialogBlock_Txt_PersonActive[183]      = 1; 	  
	  dialogBlock_LoadIn[183]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[184]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[184]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[184]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[184]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[184]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[184]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[184]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[184]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[184]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[184]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[184]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[184]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[184]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[184]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[184]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[184]      = "";	  
	  dialogBlock_Txt[184]       = ""; 
	  dialogBlock_Txt_PersonActive[184]      = 1; 	  
	  dialogBlock_LoadIn[184]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[185]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[185]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[185]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[185]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[185]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[185]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[185]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[185]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[185]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[185]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[185]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[185]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[185]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[185]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[185]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[185]      = "";	  
	  dialogBlock_Txt[185]       = ""; 	
	  dialogBlock_Txt_PersonActive[185]      = 1; 	  
	  dialogBlock_LoadIn[185]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[186]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[186]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[186]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[186]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[186]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[186]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[186]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[186]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[186]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[186]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[186]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[186]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[186]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[186]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[186]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[186]      = "";	  
	  dialogBlock_Txt[186]       = ""; 	
	  dialogBlock_Txt_PersonActive[186]      = 1; 	  
	  dialogBlock_LoadIn[186]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[187]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[187]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[187]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[187]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[187]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[187]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[187]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[187]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[187]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[187]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[187]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[187]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[187]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[187]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[187]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[187]      = "";	  
	  dialogBlock_Txt[187]       = ""; 	
	  dialogBlock_Txt_PersonActive[187]      = 1; 	  
	  dialogBlock_LoadIn[187]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[188]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[188]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[188]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[188]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[188]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[188]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[188]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[188]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[188]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[188]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[188]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[188]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[188]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[188]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[188]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[188]      = "";	  
	  dialogBlock_Txt[188]       = ""; 
	  dialogBlock_Txt_PersonActive[188]      = 1; 	  
	  dialogBlock_LoadIn[188]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[189]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[189]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[189]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[189]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[189]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[189]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[189]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[189]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[189]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[189]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[189]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[189]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[189]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[189]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[189]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[189]      = "";	  
	  dialogBlock_Txt[189]       = ""; 	
	  dialogBlock_Txt_PersonActive[189]      = 1; 	  
	  dialogBlock_LoadIn[189]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[190]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[190]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[190]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[190]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[190]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[190]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[190]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[190]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[190]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[190]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[190]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[190]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[190]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[190]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[190]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[190]      = "";	  
	  dialogBlock_Txt[190]       = ""; 
	  dialogBlock_Txt_PersonActive[190]      = 1; 	  
	  dialogBlock_LoadIn[190]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[191]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[191]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[191]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[191]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[191]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[191]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[191]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[191]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[191]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[191]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[191]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[191]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[191]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[191]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[191]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[191]      = "";	  
	  dialogBlock_Txt[191]       = ""; 
	  dialogBlock_Txt_PersonActive[191]      = 1; 	  
	  dialogBlock_LoadIn[191]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[192]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[192]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[192]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[192]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[192]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[192]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[192]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[192]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[192]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[192]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[192]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[192]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[192]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[192]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[192]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[192]      = "";	  
	  dialogBlock_Txt[192]       = ""; 	  
	  dialogBlock_Txt_PersonActive[192]      = 1; 	  
	  dialogBlock_LoadIn[192]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[193]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[193]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[193]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[193]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[193]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[193]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[193]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[193]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[193]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[193]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[193]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[193]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[193]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[193]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[193]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[193]      = "";	  
	  dialogBlock_Txt[193]       = ""; 
	  dialogBlock_Txt_PersonActive[193]      = 1; 	  
	  dialogBlock_LoadIn[193]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[194]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[194]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[194]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[194]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[194]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[194]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[194]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[194]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[194]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[194]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[194]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[194]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[194]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[194]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[194]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[194]      = "";	  
	  dialogBlock_Txt[194]       = ""; 
	  dialogBlock_Txt_PersonActive[194]      = 1; 	  
	  dialogBlock_LoadIn[194]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[195]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[195]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[195]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[195]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[195]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[195]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[195]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[195]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[195]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[195]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[195]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[195]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[195]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[195]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[195]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[195]      = "";	  
	  dialogBlock_Txt[195]       = ""; 
	  dialogBlock_Txt_PersonActive[195]      = 1; 	  
	  dialogBlock_LoadIn[195]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[196]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[196]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[196]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[196]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[196]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[196]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[196]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[196]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[196]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[196]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[196]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[196]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[196]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[196]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[196]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[196]      = "";	  
	  dialogBlock_Txt[196]       = ""; 	
	  dialogBlock_Txt_PersonActive[196]      = 1; 	  
	  dialogBlock_LoadIn[196]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[197]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[197]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[197]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[197]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[197]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[197]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[197]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[197]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[197]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[197]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[197]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[197]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[197]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[197]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[197]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[197]      = "";	  
	  dialogBlock_Txt[197]       = ""; 
	  dialogBlock_Txt_PersonActive[197]      = 1; 	  
	  dialogBlock_LoadIn[197]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[198]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[198]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[198]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[198]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[198]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[198]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[198]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[198]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[198]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[198]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[198]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[198]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[198]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[198]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[198]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[198]      = "";	  
	  dialogBlock_Txt[198]       = ""; 	
	  dialogBlock_Txt_PersonActive[198]      = 1; 	  
	  dialogBlock_LoadIn[198]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[199]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[199]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[199]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[199]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[199]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[199]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[199]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[199]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[199]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[199]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[199]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[199]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[199]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[199]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[199]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[199]      = "";	  
	  dialogBlock_Txt[199]       = ""; 
	  dialogBlock_Txt_PersonActive[199]      = 1; 	  
	  dialogBlock_LoadIn[199]	   = noone;	  // used for minigame loading


/// over 100
  dialogBlock_SprIdleStatic_1_[10]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[10]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[10]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[10]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[10]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[10]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[10]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[10]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[10]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[10]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[10]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[10]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[10]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[10]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[10]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[10]      = "";	  
	  dialogBlock_Txt[10]       = ""; 	  
	  dialogBlock_Txt_PersonActive[10]       = 1; 	  // who is talking	  
	  dialogBlock_LoadIn[10]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[11]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[11]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[11]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[11]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[11]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[11]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[11]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[11]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[11]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[11]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[11]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[11]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[11]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[11]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[11]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[11]      = "";	  
	  dialogBlock_Txt[11]       = ""; 	
	  dialogBlock_Txt_PersonActive[11]       = 1; 	 	  
	  dialogBlock_LoadIn[11]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[12]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[12]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[12]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[12]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[12]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[12]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[12]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[12]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[12]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[12]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[12]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[12]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[12]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[12]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[12]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[12]      = "";	  
	  dialogBlock_Txt[12]       = ""; 
	  dialogBlock_Txt_PersonActive[12]       = 1; 	 	  
	  dialogBlock_LoadIn[12]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[13]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[13]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[13]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[13]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[13]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[13]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[13]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[13]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[13]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[13]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[13]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[13]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[13]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[13]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[13]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[13]      = "";	  
	  dialogBlock_Txt[13]       = ""; 
	  dialogBlock_Txt_PersonActive[13]       = 1; 	 	  
	  dialogBlock_LoadIn[13]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[14]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[14]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[14]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[14]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[14]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[14]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[14]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[14]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[14]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[14]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[14]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[14]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[14]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[14]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[14]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[14]      = "";	  
	  dialogBlock_Txt[14]       = ""; 	
	  dialogBlock_Txt_PersonActive[14]       = 1; 	 	  
	  dialogBlock_LoadIn[14]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[15]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[15]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[15]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[15]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[15]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[15]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[15]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[15]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[15]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[15]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[15]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[15]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[15]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[15]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[15]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[15]      = "";	  
	  dialogBlock_Txt[15]       = ""; 
	  dialogBlock_Txt_PersonActive[15]       = 1; 	 	  
	  dialogBlock_LoadIn[15]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[16]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[16]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[16]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[16]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[16]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[16]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[16]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[16]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[16]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[16]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[16]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[16]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[16]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[16]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[16]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[16]      = "";	  
	  dialogBlock_Txt[16]       = ""; 
	  dialogBlock_Txt_PersonActive[16]       = 1; 	 	  
	  dialogBlock_LoadIn[16]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[17]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[17]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[17]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[17]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[17]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[17]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[17]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[17]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[17]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[17]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[17]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[17]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[17]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[17]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[17]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[17]      = "";	  
	  dialogBlock_Txt[17]       = ""; 	 
	  dialogBlock_Txt_PersonActive[17]       = 1; 	 	  
	  dialogBlock_LoadIn[17]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[18]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[18]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[18]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[18]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[18]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[18]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[18]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[18]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[18]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[18]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[18]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[18]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[18]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[18]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[18]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[18]      = "";	  
	  dialogBlock_Txt[18]       = ""; 
	  dialogBlock_Txt_PersonActive[18]       = 1; 	 	  
	  dialogBlock_LoadIn[18]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[19]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[19]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[19]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[19]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[19]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[19]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[19]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[19]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[19]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[19]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[19]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[19]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[19]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[19]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[19]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[19]      = "";	  
	  dialogBlock_Txt[19]       = ""; 	
	  dialogBlock_Txt_PersonActive[19]       = 1; 	 	  
	  dialogBlock_LoadIn[19]	   = noone;	  // used for minigame loading




	  dialogBlock_SprIdleStatic_1_[110]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[110]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[110]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[110]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[110]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[110]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[110]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[110]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[110]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[110]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[110]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[110]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[110]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[110]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[110]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[110]      = "";	  
	  dialogBlock_Txt[110]       = ""; 	
	  dialogBlock_Txt_PersonActive[110]      = 1; 	 	  
	  dialogBlock_LoadIn[110]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[111]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[111]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[111]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[111]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[111]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[111]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[111]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[111]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[111]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[111]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[111]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[111]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[111]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[111]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[111]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[111]      = "";	  
	  dialogBlock_Txt[111]       = ""; 	 
	  dialogBlock_Txt_PersonActive[111]      = 1; 	  
	  dialogBlock_LoadIn[111]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[112]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[112]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[112]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[112]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[112]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[112]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[112]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[112]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[112]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[112]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[112]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[112]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[112]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[112]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[112]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[112]      = "";	  
	  dialogBlock_Txt[112]       = ""; 	
	  dialogBlock_Txt_PersonActive[112]      = 1; 		  
	  dialogBlock_LoadIn[112]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[113]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[113]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[113]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[113]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[113]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[113]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[113]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[113]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[113]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[113]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[113]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[113]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[113]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[113]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[113]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[113]      = "";	  
	  dialogBlock_Txt[113]       = ""; 	
	  dialogBlock_Txt_PersonActive[113]      = 1; 		  
	  dialogBlock_LoadIn[113]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[114]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[114]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[114]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[114]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[114]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[114]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[114]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[114]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[114]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[114]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[114]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[114]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[114]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[114]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[114]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[114]      = "";	  
	  dialogBlock_Txt[114]       = ""; 	
	  dialogBlock_Txt_PersonActive[114]      = 1; 		  
	  dialogBlock_LoadIn[114]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[115]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[115]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[115]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[115]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[115]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[115]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[115]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[115]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[115]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[115]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[115]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[115]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[115]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[115]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[115]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[115]      = "";	  
	  dialogBlock_Txt[115]       = ""; 	  
	  dialogBlock_Txt_PersonActive[115]      = 1; 		  
	  dialogBlock_LoadIn[115]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[116]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[116]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[116]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[116]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[116]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[116]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[116]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[116]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[116]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[116]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[116]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[116]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[116]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[116]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[116]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[116]      = "";	  
	  dialogBlock_Txt[116]       = ""; 	
	  dialogBlock_Txt_PersonActive[116]      = 1; 		  
	  dialogBlock_LoadIn[116]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[117]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[117]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[117]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[117]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[117]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[117]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[117]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[117]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[117]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[117]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[117]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[117]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[117]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[117]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[117]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[117]      = "";	  
	  dialogBlock_Txt[117]       = ""; 
	  dialogBlock_Txt_PersonActive[117]      = 1; 		  
	  dialogBlock_LoadIn[117]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[118]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[118]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[118]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[118]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[118]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[118]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[118]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[118]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[118]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[118]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[118]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[118]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[118]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[118]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[118]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[118]      = "";	  
	  dialogBlock_Txt[118]       = ""; 	
	  dialogBlock_Txt_PersonActive[118]      = 1; 		  
	  dialogBlock_LoadIn[118]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[119]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[119]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[119]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[119]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[119]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[119]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[119]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[119]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[119]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[119]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[119]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[119]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[119]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[119]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[119]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[119]      = "";	  
	  dialogBlock_Txt[119]       = ""; 
	  dialogBlock_Txt_PersonActive[119]      = 1; 		  
	  dialogBlock_LoadIn[119]	   = noone;	  // used for minigame loading




	  dialogBlock_SprIdleStatic_1_[120]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[120]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[120]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[120]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[120]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[120]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[120]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[120]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[120]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[120]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[120]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[120]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[120]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[120]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[120]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[120]      = "";	  
	  dialogBlock_Txt[120]       = ""; 
	  dialogBlock_Txt_PersonActive[120]      = 1; 		  
	  dialogBlock_LoadIn[120]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[121]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[121]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[121]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[121]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[121]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[121]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[121]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[121]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[121]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[121]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[121]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[121]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[121]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[121]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[121]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[121]      = "";	  
	  dialogBlock_Txt[121]       = ""; 
	  dialogBlock_Txt_PersonActive[121]      = 1; 	  
	  dialogBlock_LoadIn[121]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[122]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[122]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[122]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[122]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[122]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[122]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[122]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[122]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[122]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[122]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[122]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[122]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[122]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[122]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[122]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[122]      = "";	  
	  dialogBlock_Txt[122]       = ""; 	 
	  dialogBlock_Txt_PersonActive[122]      = 1; 	  
	  dialogBlock_LoadIn[122]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[123]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[123]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[123]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[123]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[123]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[123]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[123]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[123]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[123]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[123]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[123]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[123]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[123]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[123]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[123]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[123]      = "";	  
	  dialogBlock_Txt[123]       = ""; 
	  dialogBlock_Txt_PersonActive[123]      = 1; 	  
	  dialogBlock_LoadIn[123]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[124]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[124]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[124]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[124]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[124]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[124]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[124]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[124]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[124]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[124]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[124]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[124]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[124]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[124]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[124]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[124]      = "";	  
	  dialogBlock_Txt[124]       = ""; 	
	  dialogBlock_Txt_PersonActive[124]      = 1; 	  
	  dialogBlock_LoadIn[124]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[125]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[125]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[125]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[125]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[125]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[125]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[125]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[125]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[125]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[125]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[125]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[125]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[125]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[125]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[125]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[125]      = "";	  
	  dialogBlock_Txt[125]       = ""; 
	  dialogBlock_Txt_PersonActive[125]      = 1; 	  
	  dialogBlock_LoadIn[125]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[126]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[126]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[126]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[126]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[126]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[126]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[126]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[126]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[126]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[126]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[126]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[126]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[126]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[126]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[126]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[126]      = "";	  
	  dialogBlock_Txt[126]       = ""; 	 
	  dialogBlock_Txt_PersonActive[126]      = 1; 	  
	  dialogBlock_LoadIn[126]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[127]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[127]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[127]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[127]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[127]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[127]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[127]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[127]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[127]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[127]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[127]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[127]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[127]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[127]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[127]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[127]      = "";	  
	  dialogBlock_Txt[127]       = ""; 	
	  dialogBlock_Txt_PersonActive[127]      = 1; 	  
	  dialogBlock_LoadIn[127]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[128]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[128]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[128]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[128]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[128]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[128]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[128]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[128]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[128]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[128]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[128]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[128]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[128]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[128]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[128]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[128]      = "";	  
	  dialogBlock_Txt[128]       = ""; 
	  dialogBlock_Txt_PersonActive[128]      = 1; 	  
	  dialogBlock_LoadIn[128]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[129]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[129]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[129]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[129]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[129]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[129]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[129]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[129]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[129]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[129]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[129]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[129]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[129]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[129]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[129]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[129]      = "";	  
	  dialogBlock_Txt[129]       = ""; 	 
	  dialogBlock_Txt_PersonActive[129]      = 1; 	  
	  dialogBlock_LoadIn[129]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[130]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[130]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[130]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[130]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[130]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[130]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[130]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[130]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[130]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[130]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[130]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[130]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[130]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[130]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[130]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[130]      = "";	  
	  dialogBlock_Txt[130]       = ""; 	
	  dialogBlock_Txt_PersonActive[130]      = 1; 	  
	  dialogBlock_LoadIn[130]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[131]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[131]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[131]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[131]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[131]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[131]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[131]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[131]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[131]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[131]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[131]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[131]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[131]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[131]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[131]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[131]      = "";	  
	  dialogBlock_Txt[131]       = ""; 	
	  dialogBlock_Txt_PersonActive[131]      = 1; 	  
	  dialogBlock_LoadIn[131]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[132]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[132]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[132]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[132]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[132]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[132]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[132]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[132]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[132]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[132]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[132]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[132]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[132]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[132]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[132]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[132]      = "";	  
	  dialogBlock_Txt[132]       = ""; 
	  dialogBlock_Txt_PersonActive[132]      = 1; 	  
	  dialogBlock_LoadIn[132]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[133]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[133]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[133]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[133]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[133]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[133]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[133]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[133]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[133]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[133]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[133]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[133]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[133]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[133]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[133]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[133]      = "";	  
	  dialogBlock_Txt[133]       = ""; 	
	  dialogBlock_Txt_PersonActive[133]      = 1; 	  
	  dialogBlock_LoadIn[133]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[134]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[134]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[134]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[134]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[134]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[134]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[134]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[134]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[134]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[134]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[134]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[134]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[134]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[134]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[134]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[134]      = "";	  
	  dialogBlock_Txt[134]       = ""; 
	  dialogBlock_Txt_PersonActive[134]      = 1; 	  
	  dialogBlock_LoadIn[134]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[135]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[135]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[135]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[135]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[135]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[135]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[135]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[135]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[135]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[135]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[135]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[135]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[135]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[135]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[135]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[135]      = "";	  
	  dialogBlock_Txt[135]       = ""; 	
	  dialogBlock_Txt_PersonActive[135]      = 1; 	  
	  dialogBlock_LoadIn[135]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[136]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[136]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[136]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[136]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[136]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[136]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[136]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[136]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[136]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[136]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[136]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[136]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[136]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[136]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[136]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[136]      = "";	  
	  dialogBlock_Txt[136]       = ""; 	  
	  dialogBlock_Txt_PersonActive[136]      = 1; 	  
	  dialogBlock_LoadIn[136]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[137]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[137]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[137]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[137]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[137]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[137]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[137]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[137]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[137]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[137]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[137]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[137]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[137]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[137]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[137]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[137]      = "";	  
	  dialogBlock_Txt[137]       = ""; 	
	  dialogBlock_Txt_PersonActive[137]      = 1; 	  
	  dialogBlock_LoadIn[137]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[138]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[138]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[138]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[138]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[138]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[138]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[138]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[138]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[138]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[138]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[138]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[138]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[138]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[138]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[138]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[138]      = "";	  
	  dialogBlock_Txt[138]       = ""; 	
	  dialogBlock_Txt_PersonActive[138]      = 1; 	  
	  dialogBlock_LoadIn[138]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[139]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[139]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[139]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[139]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[139]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[139]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[139]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[139]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[139]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[139]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[139]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[139]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[139]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[139]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[139]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[139]      = "";	  
	  dialogBlock_Txt[139]       = ""; 
	  dialogBlock_Txt_PersonActive[139]      = 1; 	  
	  dialogBlock_LoadIn[139]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[140]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[140]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[140]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[140]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[140]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[140]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[140]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[140]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[140]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[140]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[140]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[140]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[140]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[140]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[140]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[140]      = "";	  
	  dialogBlock_Txt[140]       = ""; 	 
	  dialogBlock_Txt_PersonActive[140]      = 1; 	  
	  dialogBlock_LoadIn[140]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[141]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[141]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[141]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[141]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[141]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[141]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[141]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[141]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[141]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[141]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[141]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[141]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[141]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[141]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[141]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[141]      = "";	  
	  dialogBlock_Txt[141]       = ""; 
	  dialogBlock_Txt_PersonActive[141]      = 1; 	  
	  dialogBlock_LoadIn[141]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[142]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[142]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[142]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[142]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[142]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[142]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[142]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[142]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[142]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[142]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[142]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[142]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[142]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[142]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[142]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[142]      = "";	  
	  dialogBlock_Txt[142]       = ""; 	 
	  dialogBlock_Txt_PersonActive[142]      = 1; 	  
	  dialogBlock_LoadIn[142]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[143]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[143]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[143]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[143]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[143]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[143]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[143]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[143]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[143]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[143]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[143]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[143]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[143]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[143]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[143]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[143]      = "";	  
	  dialogBlock_Txt[143]       = ""; 	
	  dialogBlock_Txt_PersonActive[143]      = 1; 	  
	  dialogBlock_LoadIn[143]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[144]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[144]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[144]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[144]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[144]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[144]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[144]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[144]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[144]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[144]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[144]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[144]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[144]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[144]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[144]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[144]      = "";	  
	  dialogBlock_Txt[144]       = ""; 
	  dialogBlock_Txt_PersonActive[144]      = 1; 	  
	  dialogBlock_LoadIn[144]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[145]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[145]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[145]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[145]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[145]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[145]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[145]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[145]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[145]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[145]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[145]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[145]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[145]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[145]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[145]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[145]      = "";	  
	  dialogBlock_Txt[145]       = ""; 
	  dialogBlock_Txt_PersonActive[145]      = 1; 	  
	  dialogBlock_LoadIn[145]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[146]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[146]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[146]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[146]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[146]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[146]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[146]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[146]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[146]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[146]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[146]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[146]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[146]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[146]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[146]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[146]      = "";	  
	  dialogBlock_Txt[146]       = ""; 
	  dialogBlock_Txt_PersonActive[146]      = 1; 	  
	  dialogBlock_LoadIn[146]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[147]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[147]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[147]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[147]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[147]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[147]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[147]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[147]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[147]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[147]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[147]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[147]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[147]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[147]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[147]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[147]      = "";	  
	  dialogBlock_Txt[147]       = ""; 	
	  dialogBlock_Txt_PersonActive[147]      = 1; 	  
	  dialogBlock_LoadIn[147]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[148]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[148]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[148]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[148]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[148]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[148]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[148]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[148]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[148]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[148]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[148]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[148]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[148]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[148]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[148]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[148]      = "";	  
	  dialogBlock_Txt[148]       = ""; 	
	  dialogBlock_Txt_PersonActive[148]      = 1; 	  
	  dialogBlock_LoadIn[148]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[149]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[149]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[149]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[149]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[149]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[149]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[149]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[149]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[149]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[149]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[149]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[149]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[149]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[149]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[149]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[149]      = "";	  
	  dialogBlock_Txt[149]       = ""; 	
	  dialogBlock_Txt_PersonActive[149]      = 1; 	  
	  dialogBlock_LoadIn[149]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[150]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[150]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[150]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[150]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[150]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[150]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[150]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[150]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[150]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[150]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[150]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[150]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[150]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[150]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[150]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[150]      = "";	  
	  dialogBlock_Txt[150]       = ""; 	 
	  dialogBlock_Txt_PersonActive[150]      = 1; 	  
	  dialogBlock_LoadIn[150]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[151]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[151]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[151]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[151]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[151]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[151]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[151]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[151]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[151]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[151]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[151]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[151]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[151]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[151]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[151]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[151]      = "";	  
	  dialogBlock_Txt[151]       = ""; 	
	  dialogBlock_Txt_PersonActive[151]      = 1; 	  
	  dialogBlock_LoadIn[151]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[152]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[152]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[152]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[152]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[152]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[152]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[152]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[152]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[152]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[152]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[152]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[152]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[152]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[152]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[152]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[152]      = "";	  
	  dialogBlock_Txt[152]       = ""; 	
	  dialogBlock_Txt_PersonActive[152]      = 1; 	  
	  dialogBlock_LoadIn[152]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[153]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[153]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[153]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[153]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[153]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[153]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[153]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[153]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[153]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[153]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[153]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[153]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[153]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[153]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[153]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[153]      = "";	  
	  dialogBlock_Txt[153]       = "";
	  dialogBlock_Txt_PersonActive[153]      = 1; 	  
	  dialogBlock_LoadIn[153]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[154]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[154]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[154]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[154]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[154]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[154]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[154]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[154]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[154]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[154]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[154]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[154]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[154]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[154]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[154]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[154]      = "";	  
	  dialogBlock_Txt[154]       = ""; 	 
	  dialogBlock_Txt_PersonActive[154]      = 1; 	  
	  dialogBlock_LoadIn[154]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[155]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[155]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[155]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[155]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[155]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[155]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[155]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[155]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[155]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[155]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[155]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[155]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[155]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[155]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[155]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[155]      = "";	  
	  dialogBlock_Txt[155]       = ""; 
	  dialogBlock_Txt_PersonActive[155]      = 1; 	  
	  dialogBlock_LoadIn[155]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[156]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[156]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[156]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[156]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[156]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[156]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[156]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[156]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[156]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[156]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[156]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[156]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[156]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[156]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[156]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[156]      = "";	  
	  dialogBlock_Txt[156]       = ""; 
	  dialogBlock_Txt_PersonActive[156]      = 1; 	  
	  dialogBlock_LoadIn[156]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[157]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[157]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[157]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[157]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[157]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[157]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[157]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[157]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[157]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[157]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[157]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[157]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[157]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[157]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[157]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[157]      = "";	  
	  dialogBlock_Txt[157]       = ""; 	 
	  dialogBlock_Txt_PersonActive[157]      = 1; 	  
	  dialogBlock_LoadIn[157]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[158]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[158]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[158]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[158]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[158]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[158]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[158]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[158]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[158]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[158]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[158]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[158]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[158]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[158]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[158]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[158]      = "";	  
	  dialogBlock_Txt[158]       = ""; 	
	  dialogBlock_Txt_PersonActive[158]      = 1; 	  
	  dialogBlock_LoadIn[158]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[159]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[159]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[159]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[159]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[159]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[159]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[159]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[159]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[159]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[159]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[159]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[159]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[159]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[159]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[159]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[159]      = "";	  
	  dialogBlock_Txt[159]       = ""; 	  
	  dialogBlock_Txt_PersonActive[159]      = 1; 	  
	  dialogBlock_LoadIn[159]	   = noone;	  // used for minigame loading




	  dialogBlock_SprIdleStatic_1_[160]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[160]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[160]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[160]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[160]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[160]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[160]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[160]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[160]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[160]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[160]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[160]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[160]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[160]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[160]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[160]      = "";	  
	  dialogBlock_Txt[160]       = ""; 	
	  dialogBlock_Txt_PersonActive[160]      = 1; 	  
	  dialogBlock_LoadIn[160]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[161]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[161]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[161]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[161]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[161]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[161]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[161]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[161]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[161]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[161]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[161]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[161]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[161]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[161]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[161]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[161]      = "";	  
	  dialogBlock_Txt[161]       = ""; 	 
	  dialogBlock_Txt_PersonActive[161]      = 1; 	  
	  dialogBlock_LoadIn[161]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[162]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[162]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[162]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[162]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[162]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[162]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[162]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[162]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[162]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[162]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[162]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[162]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[162]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[162]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[162]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[162]      = "";	  
	  dialogBlock_Txt[162]       = ""; 
	  dialogBlock_Txt_PersonActive[162]      = 1; 	  
	  dialogBlock_LoadIn[162]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[163]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[163]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[163]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[163]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[163]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[163]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[163]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[163]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[163]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[163]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[163]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[163]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[163]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[163]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[163]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[163]      = "";	  
	  dialogBlock_Txt[163]       = ""; 
	  dialogBlock_Txt_PersonActive[163]      = 1; 	  
	  dialogBlock_LoadIn[163]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[164]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[164]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[164]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[164]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[164]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[164]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[164]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[164]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[164]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[164]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[164]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[164]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[164]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[164]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[164]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[164]      = "";	  
	  dialogBlock_Txt[164]       = ""; 	 
	  dialogBlock_Txt_PersonActive[164]      = 1; 	  
	  dialogBlock_LoadIn[164]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[165]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[165]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[165]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[165]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[165]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[165]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[165]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[165]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[165]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[165]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[165]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[165]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[165]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[165]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[165]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[165]      = "";	  
	  dialogBlock_Txt[165]       = ""; 
	  dialogBlock_Txt_PersonActive[165]      = 1; 	  
	  dialogBlock_LoadIn[165]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[166]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[166]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[166]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[166]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[166]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[166]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[166]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[166]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[166]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[166]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[166]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[166]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[166]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[166]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[166]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[166]      = "";	  
	  dialogBlock_Txt[166]       = ""; 
	  dialogBlock_Txt_PersonActive[166]      = 1; 	  
	  dialogBlock_LoadIn[166]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[167]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[167]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[167]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[167]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[167]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[167]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[167]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[167]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[167]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[167]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[167]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[167]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[167]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[167]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[167]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[167]      = "";	  
	  dialogBlock_Txt[167]       = ""; 
	  dialogBlock_Txt_PersonActive[167]      = 1; 	  
	  dialogBlock_LoadIn[167]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[168]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[168]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[168]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[168]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[168]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[168]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[168]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[168]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[168]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[168]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[168]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[168]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[168]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[168]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[168]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[168]      = "";	  
	  dialogBlock_Txt[168]       = ""; 
	  dialogBlock_Txt_PersonActive[168]      = 1; 	  
	  dialogBlock_LoadIn[168]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[169]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[169]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[169]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[169]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[169]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[169]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[169]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[169]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[169]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[169]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[169]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[169]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[169]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[169]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[169]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[169]      = "";	  
	  dialogBlock_Txt[169]       = ""; 	
	  dialogBlock_Txt_PersonActive[169]      = 1; 	  
	  dialogBlock_LoadIn[169]	   = noone;	  // used for minigame loading




	  dialogBlock_SprIdleStatic_1_[170]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[170]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[170]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[170]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[170]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[170]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[170]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[170]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[170]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[170]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[170]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[170]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[170]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[170]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[170]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[170]      = "";	  
	  dialogBlock_Txt[170]       = ""; 	
	  dialogBlock_Txt_PersonActive[170]      = 1; 	  
	  dialogBlock_LoadIn[170]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[171]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[171]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[171]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[171]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[171]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[171]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[171]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[171]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[171]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[171]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[171]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[171]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[171]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[171]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[171]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[171]      = "";	  
	  dialogBlock_Txt[171]       = ""; 	 
	  dialogBlock_Txt_PersonActive[171]      = 1; 		  
	  dialogBlock_LoadIn[171]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[172]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[172]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[172]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[172]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[172]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[172]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[172]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[172]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[172]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[172]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[172]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[172]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[172]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[172]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[172]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[172]      = "";	  
	  dialogBlock_Txt[172]       = ""; 	  
	  dialogBlock_Txt_PersonActive[172]      = 1; 		  
	  dialogBlock_LoadIn[172]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[173]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[173]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[173]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[173]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[173]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[173]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[173]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[173]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[173]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[173]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[173]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[173]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[173]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[173]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[173]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[173]      = "";	  
	  dialogBlock_Txt[173]       = ""; 	
	  dialogBlock_Txt_PersonActive[173]      = 1; 		  
	  dialogBlock_LoadIn[173]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[174]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[174]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[174]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[174]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[174]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[174]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[174]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[174]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[174]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[174]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[174]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[174]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[174]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[174]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[174]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[174]      = "";	  
	  dialogBlock_Txt[174]       = ""; 	
	  dialogBlock_Txt_PersonActive[174]      = 1; 		  
	  dialogBlock_LoadIn[174]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[175]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[175]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[175]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[175]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[175]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[175]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[175]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[175]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[175]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[175]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[175]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[175]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[175]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[175]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[175]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[175]      = "";	  
	  dialogBlock_Txt[175]       = ""; 	  
	  dialogBlock_Txt_PersonActive[175]      = 1; 		  
	  dialogBlock_LoadIn[175]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[176]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[176]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[176]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[176]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[176]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[176]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[176]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[176]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[176]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[176]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[176]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[176]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[176]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[176]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[176]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[176]      = "";	  
	  dialogBlock_Txt[176]       = ""; 	
	  dialogBlock_Txt_PersonActive[176]      = 1; 		  
	  dialogBlock_LoadIn[176]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[177]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[177]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[177]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[177]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[177]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[177]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[177]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[177]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[177]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[177]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[177]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[177]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[177]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[177]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[177]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[177]      = "";	  
	  dialogBlock_Txt[177]       = ""; 
	  dialogBlock_Txt_PersonActive[177]      = 1; 		  
	  dialogBlock_LoadIn[177]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[178]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[178]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[178]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[178]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[178]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[178]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[178]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[178]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[178]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[178]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[178]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[178]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[178]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[178]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[178]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[178]      = "";	  
	  dialogBlock_Txt[178]       = ""; 	
	  dialogBlock_Txt_PersonActive[178]      = 1; 		  
	  dialogBlock_LoadIn[178]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[179]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[179]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[179]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[179]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[179]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[179]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[179]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[179]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[179]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[179]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[179]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[179]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[179]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[179]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[179]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[179]      = "";	  
	  dialogBlock_Txt[179]       = ""; 
	  dialogBlock_Txt_PersonActive[179]      = 1; 		  
	  dialogBlock_LoadIn[179]	   = noone;	  // used for minigame loading





	  dialogBlock_SprIdleStatic_1_[180]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[180]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[180]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[180]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[180]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[180]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[180]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[180]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[180]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[180]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[180]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[180]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[180]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[180]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[180]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[180]      = "";	  
	  dialogBlock_Txt[180]       = ""; 
	  dialogBlock_Txt_PersonActive[180]      = 1; 		  
	  dialogBlock_LoadIn[180]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[181]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[181]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[181]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[181]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[181]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[181]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[181]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[181]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[181]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[181]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[181]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[181]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[181]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[181]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[181]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[181]      = "";	  
	  dialogBlock_Txt[181]       = ""; 
	  dialogBlock_Txt_PersonActive[181]      = 1; 	  
	  dialogBlock_LoadIn[181]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[182]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[182]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[182]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[182]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[182]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[182]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[182]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[182]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[182]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[182]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[182]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[182]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[182]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[182]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[182]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[182]      = "";	  
	  dialogBlock_Txt[182]       = "";
	  dialogBlock_Txt_PersonActive[182]      = 1; 	  
	  dialogBlock_LoadIn[182]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[183]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[183]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[183]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[183]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[183]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[183]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[183]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[183]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[183]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[183]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[183]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[183]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[183]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[183]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[183]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[183]      = "";	  
	  dialogBlock_Txt[183]       = ""; 	
	  dialogBlock_Txt_PersonActive[183]      = 1; 	  
	  dialogBlock_LoadIn[183]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[184]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[184]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[184]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[184]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[184]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[184]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[184]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[184]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[184]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[184]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[184]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[184]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[184]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[184]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[184]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[184]      = "";	  
	  dialogBlock_Txt[184]       = ""; 
	  dialogBlock_Txt_PersonActive[184]      = 1; 	  
	  dialogBlock_LoadIn[184]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[185]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[185]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[185]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[185]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[185]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[185]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[185]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[185]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[185]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[185]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[185]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[185]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[185]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[185]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[185]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[185]      = "";	  
	  dialogBlock_Txt[185]       = ""; 	
	  dialogBlock_Txt_PersonActive[185]      = 1; 	  
	  dialogBlock_LoadIn[185]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[186]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[186]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[186]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[186]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[186]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[186]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[186]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[186]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[186]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[186]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[186]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[186]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[186]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[186]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[186]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[186]      = "";	  
	  dialogBlock_Txt[186]       = ""; 	
	  dialogBlock_Txt_PersonActive[186]      = 1; 	  
	  dialogBlock_LoadIn[186]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[187]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[187]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[187]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[187]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[187]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[187]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[187]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[187]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[187]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[187]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[187]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[187]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[187]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[187]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[187]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[187]      = "";	  
	  dialogBlock_Txt[187]       = ""; 	
	  dialogBlock_Txt_PersonActive[187]      = 1; 	  
	  dialogBlock_LoadIn[187]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[188]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[188]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[188]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[188]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[188]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[188]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[188]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[188]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[188]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[188]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[188]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[188]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[188]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[188]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[188]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[188]      = "";	  
	  dialogBlock_Txt[188]       = ""; 
	  dialogBlock_Txt_PersonActive[188]      = 1; 	  
	  dialogBlock_LoadIn[188]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[189]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[189]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[189]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[189]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[189]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[189]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[189]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[189]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[189]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[189]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[189]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[189]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[189]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[189]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[189]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[189]      = "";	  
	  dialogBlock_Txt[189]       = ""; 	
	  dialogBlock_Txt_PersonActive[189]      = 1; 	  
	  dialogBlock_LoadIn[189]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[190]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[190]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[190]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[190]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[190]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[190]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[190]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[190]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[190]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[190]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[190]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[190]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[190]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[190]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[190]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[190]      = "";	  
	  dialogBlock_Txt[190]       = ""; 
	  dialogBlock_Txt_PersonActive[190]      = 1; 	  
	  dialogBlock_LoadIn[190]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[191]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[191]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[191]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[191]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[191]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[191]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[191]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[191]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[191]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[191]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[191]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[191]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[191]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[191]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[191]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[191]      = "";	  
	  dialogBlock_Txt[191]       = ""; 
	  dialogBlock_Txt_PersonActive[191]      = 1; 	  
	  dialogBlock_LoadIn[191]	   = noone;	  // used for minigame loading	  


	  dialogBlock_SprIdleStatic_1_[192]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[192]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[192]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[192]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[192]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[192]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[192]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[192]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[192]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[192]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[192]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[192]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[192]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[192]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[192]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[192]      = "";	  
	  dialogBlock_Txt[192]       = ""; 	  
	  dialogBlock_Txt_PersonActive[192]      = 1; 	  
	  dialogBlock_LoadIn[192]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[193]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[193]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[193]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[193]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[193]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[193]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[193]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[193]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[193]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[193]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[193]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[193]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[193]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[193]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[193]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[193]      = "";	  
	  dialogBlock_Txt[193]       = ""; 
	  dialogBlock_Txt_PersonActive[193]      = 1; 	  
	  dialogBlock_LoadIn[193]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[194]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[194]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[194]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[194]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[194]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[194]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[194]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[194]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[194]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[194]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[194]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[194]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[194]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[194]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[194]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[194]      = "";	  
	  dialogBlock_Txt[194]       = ""; 
	  dialogBlock_Txt_PersonActive[194]      = 1; 	  
	  dialogBlock_LoadIn[194]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[195]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[195]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[195]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[195]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[195]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[195]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[195]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[195]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[195]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[195]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[195]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[195]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[195]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[195]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[195]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[195]      = "";	  
	  dialogBlock_Txt[195]       = ""; 
	  dialogBlock_Txt_PersonActive[195]      = 1; 	  
	  dialogBlock_LoadIn[195]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[196]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[196]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[196]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[196]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[196]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[196]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[196]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[196]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[196]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[196]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[196]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[196]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[196]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[196]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[196]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[196]      = "";	  
	  dialogBlock_Txt[196]       = ""; 	
	  dialogBlock_Txt_PersonActive[196]      = 1; 	  
	  dialogBlock_LoadIn[196]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[197]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[197]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[197]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[197]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[197]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[197]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[197]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[197]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[197]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[197]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[197]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[197]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[197]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[197]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[197]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[197]      = "";	  
	  dialogBlock_Txt[197]       = ""; 
	  dialogBlock_Txt_PersonActive[197]      = 1; 	  
	  dialogBlock_LoadIn[197]	   = noone;	  // used for minigame loading


	  dialogBlock_SprIdleStatic_1_[198]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[198]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[198]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[198]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[198]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[198]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[198]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[198]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[198]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[198]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[198]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[198]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[198]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[198]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[198]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[198]      = "";	  
	  dialogBlock_Txt[198]       = ""; 	
	  dialogBlock_Txt_PersonActive[198]      = 1; 	  
	  dialogBlock_LoadIn[198]	   = noone;	  // used for minigame loading



	  dialogBlock_SprIdleStatic_1_[199]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[199]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[199]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[199]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[199]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[199]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[199]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[199]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[199]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[199]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[199]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[199]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[199]   = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[199]   = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[199]   = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[199]      = "";	  
	  dialogBlock_Txt[199]       = ""; 
	  dialogBlock_Txt_PersonActive[199]      = 1; 	  
	  dialogBlock_LoadIn[199]	   = noone;	  // used for minigame loading


 #endregion




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


arrayCutscenes = array_create(0);

var day_I = 0; // day 1
 var dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I );  // first cutscene
  
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, "???", textPrefix + "Hey hey, my boy, how are you doing on this glorious day?" + textSuffix);		 
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "Hi Viktor, didn't expect to see you so early." + textSuffixPlayer);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "My only tenant who can't pay rent starts a [#5893FF]side business[/c] inside my mall and he doesn't expect to see me first thing!?" + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Ahhh, I can smell the money already." + textSuffix);	
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "(I wonder if he thinks about anything except money)" + textSuffixPlayer);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Speaking of money..." + textSuffix);	
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "(Nope)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "I had the brilliant idea to add a casino to the mall. I'm going to be filthy stinking rich!" + textSuffix);	
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "(Hey, I wonder if I can get some slot machines in here, might bring in some business…)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Now, has my brother come to see you yet?" + textSuffix);	
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "We spoke yesterday, he said he would come by this morning too." + textSuffixPlayer);	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Oh good, I'd like to see my little bro." + textSuffix);	
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "He doesn't call, he doesn't write, he just travels the country getting into mischief. " + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "Maybe you should call him sometime?" + textSuffixPlayer);	
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Ha, this is why I like you, you're so funny." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "You know, that reminds me of a joke..." + textSuffix);	
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "(I wasn't joking... I never understand this guy.)" + textSuffixPlayer);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "(But I can't say anything after he's let me get so far behind in rent and not kicked me out.)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "(At least he knows there's nothing I can do.)" + textSuffixPlayer);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "(Since they shipped everyone out of the city under the age of 20 after the rebellion, nobody comes to an arcade anymore.)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "(I’m surprised they haven't built a wall yet to keep tourists out, not that any would ever come here.)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefixPlayer + "So the pirate says: ARGH, it's driving me nuts!" + textSuffix);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "HAHAHAHAHAHAHA." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "hehehe (same joke, different day.)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Lad, I gotta tell ya, I think this little side business is gonna be a boon for both of us." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "So don't worry about the legal and moral gray area." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "As long as I can keep my arcade and nobody gets hurt." + textSuffixPlayer);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Look, my brother doesn't exactly sell the highest quality weapons. I doubt anyone could hurt themselves, much less someone else." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "Wait, I'm selling low quality goods?" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Absolutely my boy!" + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Why would anyone want to sell quality? It's bad for business." + textSuffix);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Besides, if you're the only affordable option for weapons in this entire city, of course your supply is shit." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "(Now I gotta worry people will get mad at me)." + textSuffixPlayer);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Look at it this way." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "You sell a little pistol to someone. They go to use it and the whole thing falls apart..." + textSuffix);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Nobody gets hurt AND they gotta come back to you to buy another one." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "That's a lucrative business model if you ask me. I can see the mountains of money pouring in already." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "(Sounds great, until someone comes in and punches me in the face over it.)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "You know what Vik, as long as I get to keep the arcade running, maybe it'll survive long enough to see the rebellion end and the city return to normal." + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Oh lad, you don't just have high hopes, you have wild dreams, but I like that about you." + textSuffix);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Now remember our deal, I may be generous, but you are way late on rent so you owe me interest." + textSuffix);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "If you can't pay $20,000 in the next 14 days, I have to kick you out." + textSuffix);	
	 dialog_I++;
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "I know the deal Vik." + textSuffixPlayer);	
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Don't look so sad, I'll probably open a second strip club in your place." + textSuffix);	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "You wouldn't believe how much money the American Spread Eagle makes." + textSuffix);	
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "(Actually I would. Almost every person I see walk in this place goes there. I wouldn't be caught dead in that place.)" + textSuffixPlayer);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "Vik, you know my wife hasn't let me hear the end of it since that place opened. She thinks I'm there all day, now she drops in to check on me randomly." + textSuffixPlayer);	
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Hahaha, that sounds like a “you” problem." + textSuffix);	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "Tell you what, if you want to stop by some time, I moved my office into the club. Come see me and I'll have one of the girls show you a thing or two." + textSuffix);	
	 dialog_I++;	 
	 
	 
	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "(I've seen those girls, I'd rather not.)" + textSuffixPlayer);	
	 dialog_I++; 
	 
	 
	 
	 /// shadow enters

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "MY BROTHER! HAHAHAHA!" + textSuffix);	
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "???", textPrefix + "Hello... " + textSuffix);	
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Brother" + textSuffix);	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "V, mind if I take care of business here and then I'll stop by your office?" + textSuffix);	
	 dialog_I++;	 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "You haven't changed a bit." + textSuffix);	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "Victor", textPrefix + "..." + textSuffix);	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, "Victor", textPrefix + "..." + textSuffix);	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, "Victor", textPrefix + "I guess I'll let you two get things ready, I've got glitter covered money to count anyways." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Did you do everything just like I told you?" + textSuffix);	
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "PlayerName", textPrefixPlayer + "Yes of course, I even ate the list after so nobody could find it." + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "What the hell! I didn't say to do that..." + textSuffix);	
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "(It was a joke, guess arms dealers don't have a sense of humor)" + textSuffixPlayer);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "(On the flipside, is it a good idea to be super friendly with a shadow figure that supplies guns?)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "(Maybe I should be more serious...) " + textSuffixPlayer);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "(It was a joke, guess arms dealers don't have a sense of humor)" + textSuffixPlayer);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Well, probably for the best you did." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Selling weapons is a real gray area here with all the local government disbanding and the police force making up rules as they go..." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "So you need to be diligent about what you sell and to whom." + textSuffix);	
	 dialog_I++;
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "Right, gotta use my head." + textSuffixPlayer);	
	 dialog_I++;
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Exactly, and I don't plan on hooking you up with an entire arsenal until you prove yourself. Gotta start small and show you know what you're doing first." + textSuffix);	
	 dialog_I++;	 
	 
	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "Understood." + textSuffixPlayer);	
	 dialog_I++;	 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "I usually don't do this, but I think it's a good idea for me to make sure you know exactly what you're doing, so let's have a little practice." + textSuffix);	
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "Oh cool, so this is like my tutorial level." + textSuffixPlayer);	
	 dialog_I++;	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "What? Are you even taking this seriously?" + textSuffix);	
	 dialog_I++;	 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "Yes, sorry, of course." + textSuffixPlayer);	
	 dialog_I++;		 
	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Know what, never mind, you be you, it'll be the greatest front for under the table weapon sales I’ve ever seen." + textSuffix);	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Way better than the guy I had that pretended to be a clown." + textSuffix);	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "(And he says I'm weird? Wait, did he say clown...)" + textSuffixPlayer);	
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "First lesson, don't trust anyone. I don't care if it's a sweet old lady, anyone could be a cop or someone looking to rob you as soon as they have the goods." + textSuffix);	
	 dialog_I++;	 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Selling weapons to the wrong person can get you in real trouble, really fast. You can refuse to sell to anyone for any reason." + textSuffix);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "The most important thing about it is..." + textSuffix);	
	 dialog_I++;	 
	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "The most important thing about it is..." + textSuffix);	
	 dialog_I++;		 
	 
	 
	 // kyle interrupts
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "???", textPrefix + "Hey boss man, I saw Viktor coming and wanted to let you know he was on his way down here." + textSuffix);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,  "PlayerName", textPrefixPlayer + "Yeah, he was already here, bud. Viktor is a lovely fella..." + textSuffixPlayer);	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,  "PlayerName", textPrefixPlayer + "Hey, Kyle, I have some business to tend to, do you mind making sure everything is turned on for me?" + textSuffixPlayer);	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, "Kyle", textPrefix + "Oh yea, sorry about that. I'll chat with you later bossman." + textSuffix);	
	 dialog_I++;	 
	 
		 
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "(I wasn't really listening. I should be. If I want to boost my income. I have to take this a bit more serious)" + textSuffixPlayer);	
	 dialog_I++;	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "Sorry for that, continue." + textSuffixPlayer);	
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "So many weirdos in this town..." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Anyways, where was I? Oh yeah Second lesson..." + textSuffix);	
	 dialog_I++;


	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "(I don't think we finished lesson one. Oh well, I wasn't really listening.)" + textSuffixPlayer);	
	 dialog_I++;	
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Selling is a fine art. Everyone knows what they want, but they rarely know what they need. Some need less than what they want, some need more." + textSuffix);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Most people will accept what you are willing to give them if they can afford it and it fits their needs." + textSuffix);	
	 dialog_I++;	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Pay close attention to what someone asks for. The better you provide them with what they want, the more likely they'll be a return customer." + textSuffix);	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Lesson C..." + textSuffix);	
	 dialog_I++;		 

 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, "PlayerName", textPrefixPlayer + "(wasn't he using numbers before?) " + textSuffixPlayer);	
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Failure is always an option. Everyone has their upper and lower limits on what they're willing to accept." + textSuffix);	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Make a bad offer and they'll bail on you, nobody in this town has the patience to haggle with someone they think is trying to rip them off. " + textSuffix);	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Final lesson, try to sell me something." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, "Shadow", textPrefix + "Let's say I appear to be a garden variety thug and I say I want a light, powerful weapon that lets me keep a little distance, and I have 2000 to spend." + textSuffix);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Shadow;
	 dialog_I++;




#endregion

#region weapon texts + costs

function weaponCreate(name_, spr_)constructor {
  
  nameWeapon        = "";
  weaponSpr         = spr_;
  headLineText      = "";
  descriptionText1  = "";  
  descriptionText2  = ""; 

  costText          = "";
  cost              = 1;
}

array_DetailWeaponText = array_create(0);

      // melee 0-10 pistols 10-20, rifles 20-30,  smg 30-40, shotgun 40-50, ar, 50-60, exotic 60-70, attachment 70-80	
var txtDetail_I = 0;
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("melee 1", spr_MiniGame_Melee_1);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "melee 1"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

  array_DetailWeaponText[txtDetail_I] = new weaponCreate("melee 2", spr_MiniGame_Melee_2);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "melee 1"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  txtDetail_I++;
	  
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("melee 3", spr_MiniGame_Melee_3);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "melee 3"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  	  




txtDetail_I = 10;
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("pistol 1", spr_MiniGame_Pistol_1);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Small pistol"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

  array_DetailWeaponText[txtDetail_I] = new weaponCreate("pistol 2", spr_MiniGame_Pistol_2);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Big pistol"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  txtDetail_I++;
	  
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("pistol 3", spr_MiniGame_Pistol_3);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Other pistol"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  



txtDetail_I = 20;
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("rifle 1", spr_MiniGame_Rifle_1);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Bolt action"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

  array_DetailWeaponText[txtDetail_I] = new weaponCreate("rifle 2", spr_MiniGame_Rifle_2);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Sniper rifle"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  txtDetail_I++;
	  
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("rifle 3", spr_MiniGame_Pistol_3);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Winchester"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  




txtDetail_I = 30;
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("smg 1", spr_MiniGame_Smg_1);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Woozie"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

  array_DetailWeaponText[txtDetail_I] = new weaponCreate("smg 2", spr_MiniGame_Smg_2);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Smg 2"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;
	  
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("smg 3", spr_MiniGame_Smg_3);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Tummy gun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  


txtDetail_I = 40;
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("shotgun 1", spr_MiniGame_Shotgun_1);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Sawed off"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

  array_DetailWeaponText[txtDetail_I] = new weaponCreate("shotgun 2", spr_MiniGame_Shotgun_2);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Tactical shotgun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  txtDetail_I++;
	  
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("shotgun 3", spr_MiniGame_Shotgun_3);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "tripple shotgun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++; 



txtDetail_I = 50;
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("ar 1", spr_MiniGame_Ar_1);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "M 16"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

  array_DetailWeaponText[txtDetail_I] = new weaponCreate("ar 2", spr_MiniGame_Ar_2);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "French ar"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;
	  
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("ar 3", spr_MiniGame_Ar_3);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Ak 47"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;



txtDetail_I = 60;
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("exotic 1", spr_MiniGame_Ar_1);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "M 16"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

  array_DetailWeaponText[txtDetail_I] = new weaponCreate("exotic 2", spr_MiniGame_Ar_2);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "French ar"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;
	  
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("exotic 3", spr_MiniGame_Ar_3);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Ak 47"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;


txtDetail_I = 70;
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("attachment laser", spr_MiniGame_Attachment_LaserPointer);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Laser pointer"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;	  


  array_DetailWeaponText[txtDetail_I] = new weaponCreate("attachment muzzle", spr_MiniGame_Attachment_Muzzle);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Muzzle"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;	  

	  
  array_DetailWeaponText[txtDetail_I] = new weaponCreate("attachment optics", spr_MiniGame_Attachment_Optics);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Optics"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;	  


  array_DetailWeaponText[txtDetail_I] = new weaponCreate("attachment scope", spr_MiniGame_Attachment_Scope);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Scope"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;	  


  array_DetailWeaponText[txtDetail_I] = new weaponCreate("attachment stock", spr_MiniGame_Attachment_Stock);
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