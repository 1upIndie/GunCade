/// @description
alarm[1] = 6; // reset values once!
alarm[0] = 35; // start typing

blockDraw = false; // blocks draw end to not interfere!

override = false; // when jumping from news to regular day
#region daily temp values

dayTemp_Cash     = 0;
dayTemp_Cash_Tip = 0;

// summ up money from previous days

var sumCash = 0;
var cashI = 1;
repeat( obj_Control_All.currentCutscene - 1){

  sumCash += obj_Control_All.cashCollectedDay[cashI]; 

}

dayTemp_Cash = sumCash;

#endregion

#region hover over 

hoverAlphachannel = animcurve_get_channel(aniCurve_HoverOver, 0);

hoverAlpha = 1;
 hoverAlphaTime    = 100;
 hoverAlphaTimeSET = 0;


hoverOverDialogBox = false;
hoverOverDialogBoxBlink = false; // real hover over
hoverOverDialogBoxBlinkAlpha = 0.035;
hoverOverDialogBoxBlinkColor = c_orange;

#endregion


#region audio control!

audioState = "play";
if(obj_Control_All.currentCutscene_DAY >= 100){ audioState = ""; scr_PlaySound(snd_Solo_Tv, 1); }

#endregion

//instance_create_layer(x,y, "Instances_bgr", obj_Workspace_Bgr );
// apply camera
var factor = 65;

blockInput = false;

/*
saveCameraFactor = obj_Camera.camera_Show_Width/obj_Camera.Aspect_Ratio_Width;
	 		obj_Camera.camera_Show_Width   = obj_Camera.Aspect_Ratio_Width *factor;
            obj_Camera.camera_Show_Height  = obj_Camera.Aspect_Ratio_Height *factor ;	
*/

typist = scribble_typist();
drawOnScreen = false;

/// black box
blackBoxY = -45;
blackBoxScaleX = 500;
blackBoxScaleY = 3;

blackBoxAlpha = 0.95;


// typewriter
typePerStep    = 0.9;
typeSmoothness = 10;

// text
textX = 50;
textY = -170;

textCashX = 50;
textCashY = -135;


textNeueZeile = 1170;

nameY = -250; 

regularDialog = false;

// dialog spr
dialogShow_Spr_1_ = spr_Nothing;
dialogShow_Spr_2_ = spr_Nothing;
dialogShow_Spr_3_ = spr_Nothing;

dialogSpr_NpcX_1_    = 280;
dialogSpr_NpcX_2_    = 480;
dialogSpr_NpcX_3_    = 680;

  dialogSpr_X2    = -15;
  dialogSpr_X2Add = 1;
dialogSpr_Y    = -700;
 var defaultScaleDialog = 0.60;
dialogScale[1]    = defaultScaleDialog;
dialogScale[2]    = defaultScaleDialog;
dialogScale[3]    = defaultScaleDialog;
  dialogScale_Passive = defaultScaleDialog;
  dialogScale_Active  = defaultScaleDialog + 0.02;  
  dialogScale_AddSub  = 0.001;
  
  
dialogSprAlpha[1] = 1;
dialogSprAlpha[2] = 1;
dialogSprAlpha[3] = 1;
 dialogSprAlphaPassive = 0.95; // when other npc or player is talking

  dialogSprAlphaAdd = 0.05;


dialogSpr_State_1_  = "default";
dialogSpr_State_2_  = "default";
dialogSpr_State_3_  = "default";
 dialogSprIndex_1_      = 0;
 dialogSprIndex_2_      = 0;
 dialogSprIndex_3_      = 0; 
 dialogSprIndexMax   = 4; 
 
dialogSpr_State_TimeMin = 4 * 60;
dialogSpr_State_TimeMax = 8 * 60;
dialogSpr_State_Timer_1   = irandom_range(dialogSpr_State_TimeMin, dialogSpr_State_TimeMax );
dialogSpr_State_Timer_2   = irandom_range(dialogSpr_State_TimeMin, dialogSpr_State_TimeMax );
dialogSpr_State_Timer_3   = irandom_range(dialogSpr_State_TimeMin, dialogSpr_State_TimeMax );


dialogSpr_State_Alarm10_BlinkTime = 8;
alarm[8]  = dialogSpr_State_Alarm10_BlinkTime; // constantly update!
alarm[9]  = dialogSpr_State_Alarm10_BlinkTime; // constantly update!
alarm[10] = dialogSpr_State_Alarm10_BlinkTime; // constantly update!


/// load in texts
dialogIndex = 0;
dialogIndex_DelayJump      = false;
dialogIndex_DelayJumpIndex = 0;


var oo = obj_Control_All;

scr_SetWeaponUnlocks( oo.currentCutscene_DAY ); // unlock weapons/types!

array_Spr_Idle_Static_1_     = array_create(0);
array_Spr_Idle_1_            = array_create(0);
array_Spr_Talk_Static_1_     = array_create(0);
array_Spr_Talk_1_            = array_create(0);
array_Spr_Talk_1_IntroExtro  = array_create(0);


array_Spr_Idle_Static_2_     = array_create(0);
array_Spr_Idle_2_            = array_create(0);
array_Spr_Talk_Static_2_     = array_create(0);
array_Spr_Talk_2_            = array_create(0);
array_Spr_Talk_2_IntroExtro  = array_create(0);

array_Spr_Idle_Static_3_     = array_create(0);
array_Spr_Idle_3_            = array_create(0);
array_Spr_Talk_Static_3_     = array_create(0);
array_Spr_Talk_3_            = array_create(0);
array_Spr_Talk_3_IntroExtro  = array_create(0);

array_NpcTalking  = array_create(0);

array_Name = array_create(0);
array_Txt  = array_create(0);

array_InstanceLoadIn  = array_create(0);

var repeat_I = 0;
repeat(900){
  array_Spr_Idle_Static_1_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprIdleStatic_1_[repeat_I];
  array_Spr_Idle_1_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprIdle_1_[repeat_I];  

  array_Spr_Talk_Static_1_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprTalkStatic_1_[repeat_I];
  array_Spr_Talk_1_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprTalk_1_[repeat_I];  


  array_Spr_Idle_Static_2_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprIdleStatic_2_[repeat_I];
  array_Spr_Idle_2_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprIdle_2_[repeat_I];  

  array_Spr_Talk_Static_2_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprTalkStatic_2_[repeat_I];
  array_Spr_Talk_2_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprTalk_2_[repeat_I];  


  array_Spr_Idle_Static_3_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprIdleStatic_3_[repeat_I];
  array_Spr_Idle_3_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprIdle_3_[repeat_I];  

  array_Spr_Talk_Static_3_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprTalkStatic_3_[repeat_I];
  array_Spr_Talk_3_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprTalk_3_[repeat_I];  



  array_NpcTalking[repeat_I]          = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_Txt_PersonActive[repeat_I];


  array_Name[repeat_I]                = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_Name[repeat_I];
  array_Txt[repeat_I]                 = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_Txt[repeat_I];
  
  array_InstanceLoadIn[repeat_I]      = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_LoadIn[repeat_I];

  
  // npc intro/extro
  array_Spr_Talk_1_IntroExtro[repeat_I] = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprSwap_1_[repeat_I];
  array_Spr_Talk_2_IntroExtro[repeat_I] = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprSwap_2_[repeat_I];
  array_Spr_Talk_3_IntroExtro[repeat_I] = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprSwap_3_[repeat_I];


repeat_I++;
}

// set background anew if new cast! also postions
if( oo.arrayCutscenes[oo.currentCutscene_DAY].isNews == true){ 
	obj_Workspace_Bgr.sprite_index = spr_WorkStation_BackgroundNews; 
	
	dialogSpr_NpcX_1_    = 250;
    dialogSpr_NpcX_2_    = 450;
    dialogSpr_NpcX_3_    = 650;
	
	
	}



// set once values -> intro/extro
setOnce_Enter[1] = false;
setOnce_Enter[2] = false;
setOnce_Enter[3] = false;
 
 
 // intro extro X
 introExtroX[1] = 0;
 introExtroX[2] = 0; 
 introExtroX[3] = 0; 
 
 intro_XStart        = -800; // default for all customers
 intro_XStartRight   = 800;  // for kyle/wife 
 intro_XAdd     = 10;
 intro_AlphaAdd = 0.006;

// camera
 camX        = camera_get_view_x( view_camera[0] );
 camY        = camera_get_view_y( view_camera[0] );
 camWidth    = camera_get_view_width( view_camera[0] );
 camHeight   = camera_get_view_height( view_camera[0] );

 camWidth_Half = camWidth/2;

//obj_Control_All.arrayCutscenes[obj_Control_All.currentCutscene].sprBgr;

// ui elements
var colUi = c_black;
 //colUi = c_aqua;
// black boxes for dialog text
ui_trennerToTextY   = 438; // trennlinie
ui_trennerToTextCol = colUi;

var blackBoxNameY = 24;
ui_BlackBoxY = ui_trennerToTextY - blackBoxNameY;
ui_BlackBoxLength = 320;
ui_BlackBoxHeight = blackBoxNameY;
ui_trennerToTextCol = colUi;

// black boxes for right side vertical
ui_BlackBoxVerticalRightX     = 678+15;
ui_BlackBoxVerticalRightWidth = 4;
ui_BlackBoxVerticalRightWidth = 500;
ui_BlackBoxVerticalRightCol   = colUi;


/// ++++++++ NEW +++++++++++++++++++ ///
// new for black boxes, relative setup
ui_BlackBox_DialogText_Y       = -200;
ui_BlackBox_DialogText_ScaleX  =  5000;
ui_BlackBox_DialogText_ScaleY  =  420;

ui_BlackBox_DialogName_Y       = -250;
ui_BlackBox_DialogName_ScaleX  =  320;
ui_BlackBox_DialogName_ScaleY  =  60;



// vertical right side
ui_BlackBox_TV_Radio_X     = -380;
ui_BlackBox_TV_Radio_Scale =  390;

isNews = false;

/// background apply! if news or regular!
//obj_Control_All.currentCutscene = day;
//bj_Control_All.currentCutscene_DAY = day;

// NEWS!
/// set background, set right side


// spawing if not news -> tv main, tv sub, radio
var sprTVW    = sprite_get_width( spr_Tv_RhamenDialog );
var sprTVSubW = sprite_get_width( spr_Tv_RhamenSubNew );


tv_Main_ScaleX = 0.27;
tv_Main_ScaleY = 0.29; 
tv_Main_X      = -(sprTVW * tv_Main_ScaleX) + 47;
tv_Main_Y      =  208;

tv_Sub_ScaleX    = 0.145;
tv_Sub_ScaleY    = 0.145; 
tv_Sub_X         = tv_Main_X - (sprTVSubW * tv_Sub_ScaleX) + 14;
tv_Sub_Y[1]      = tv_Main_Y;
tv_Sub_Y[2]      = tv_Main_Y + 80;

var sprRadioW = sprite_get_width( spr_Radio_Body );
radio_ScaleX =  0.625; // 0.57
radio_ScaleY =  0.625; 
radio_X      = -(sprRadioW * radio_ScaleX) + 47;
radio_Y      =  380;

 //x = camX + camWidth - sprite_width + rightPadding - 2;
 //y = camY + topyPadding;




alarm[11] = 8;

