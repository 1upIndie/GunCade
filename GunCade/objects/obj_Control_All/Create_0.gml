/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


roomToJump = Room_Workspace;
room_goto(roomToJump);


#region Cutscenes

currentCutscene = 0;

function Createcutscene(day_) constructor {
  
 // sprBgr      = bgrSpr_; // default!
  totalBlocks = 0; // added up in each function
  
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
 
 
	  function setText(index_,  slotActive_, name_, txt_ ){ 
		 dialogBlock_Txt_PersonActive[index_]  = slotActive_;  
         dialogBlock_Name[index_]              = name_;	  
	     dialogBlock_Txt[index_]               = txt_;  	  
	  
		 totalBlocks++;		  
	  }

} // end of constructor


arrayCutscenes = array_create(0);

var day_I = 0; // day 1
 var dialog_I = 0; // zeiger
  arrayCutscenes[day_I] = new Createcutscene(day_I );  // first cutscene
  
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "Granny", "[font_Cutscene][scale, 2]Heinrich! You and the black hand have a mission. [/scale]");	  dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic, spr_Dialog_Granny_Talk , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, "King", "[font_Cutscene][scale, 2]Heinrich! You and the black hand have a mission. [/scale]");	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Granny;
	 dialog_I++;



#endregion

#region particle collection!

garbageCollect_Particles_Index = 0;
garbageCollect_Particles       = array_create(0);

#endregion