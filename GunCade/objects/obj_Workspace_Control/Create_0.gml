/// @description

alarm[0] = 35; // start typing




#region daily temp values

dayTemp_Cash     = 0;
dayTemp_Cash_Tip = 0;

// summ up money from previous days

var sumCash = 0;
var cashI = 1;
repeat( obj_Control_All.currentCutscene-1){

  sumCash += obj_Control_All.cashCollectedDay[cashI]; 

}

dayTemp_Cash = sumCash;

#endregion

#region hover over

hoverAlphachannel = animcurve_get_channel(aniCurve_HoverOver, 0);

hoverAlpha = 1;
 hoverAlphaTime    = 100;
 hoverAlphaTimeSET = 0;

#endregion

//instance_create_layer(x,y, "Instances_bgr", obj_Workspace_Bgr );
// apply camera
var factor = 65;

blockInput = false;


saveCameraFactor = obj_Camera.camera_Show_Width/obj_Camera.Aspect_Ratio_Width;
	 		obj_Camera.camera_Show_Width   = obj_Camera.Aspect_Ratio_Width *factor;
            obj_Camera.camera_Show_Height  = obj_Camera.Aspect_Ratio_Height *factor ;	


typist = scribble_typist();
drawOnScreen = false;

/// black box
blackBoxY = -45;
blackBoxScaleX = 500;
blackBoxScaleY = 3;

blackBoxAlpha = 0.95;


// typewriter
typePerStep    = 0.5;
typeSmoothness = 10;

// text
textX = 50;
textY = -135;

textCashX = 50;
textCashY = -135;


textNeuesZeile = 900;

nameY = -170;

regularDialog = false;

// dialog spr
dialogShow_Spr_1_ = spr_Nothing;
dialogShow_Spr_2_ = spr_Nothing;
dialogShow_Spr_3_ = spr_Nothing;

dialogSpr_NpcX_1_    = 250;
dialogSpr_NpcX_2_    = 450;
dialogSpr_NpcX_3_    = 650;

  dialogSpr_X2    = -15;
  dialogSpr_X2Add = 1;
dialogSpr_Y    = -530;
dialogScale[1]    = 0.5;
dialogScale[2]    = 0.5;
dialogScale[3]    = 0.5;
  dialogScale_Passive = 0.5;
  dialogScale_Active  = 0.52;  
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


var oo = obj_Control_All;

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
repeat(600){
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


// set once values -> intro/extro
setOnce_Enter[1] = false;
setOnce_Enter[2] = false;
setOnce_Enter[3] = false;
 
 
 // intro extro X
 introExtroX[1] = 0;
 introExtroX[2] = 0; 
 introExtroX[3] = 0; 
 
 intro_XStart        = -500; // default for all customers
 intro_XStartRight   = 500;  // for kyle/wife 
 intro_XAdd     = 10;
 intro_AlphaAdd = 0.006;

// camera
 camX        = camera_get_view_x( view_camera[0] );
 camY        = camera_get_view_y( view_camera[0] );
 camWidth    = camera_get_view_width( view_camera[0] );
 camHeight   = camera_get_view_height( view_camera[0] );

//obj_Control_All.arrayCutscenes[obj_Control_All.currentCutscene].sprBgr;
