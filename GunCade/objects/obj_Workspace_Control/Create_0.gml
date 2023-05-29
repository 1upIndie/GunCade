/// @description

alarm[0] = 35; // start typing

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
typePerStep    = 0.3;
typeSmoothness = 10;

// text
textX = 50;
textY = -135;

textNeuesZeile = 900;

nameY = -170;



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
dialogScale    = 0.5;
dialogSprAlpha = 1;
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

array_Spr_Idle_Static_1_  = array_create(0);
array_Spr_Idle_1_         = array_create(0);
array_Spr_Talk_Static_1_  = array_create(0);
array_Spr_Talk_1_         = array_create(0);

array_Spr_Idle_Static_2_  = array_create(0);
array_Spr_Idle_2_         = array_create(0);
array_Spr_Talk_Static_2_  = array_create(0);
array_Spr_Talk_2_         = array_create(0);

array_Spr_Idle_Static_3_  = array_create(0);
array_Spr_Idle_3_         = array_create(0);
array_Spr_Talk_Static_3_  = array_create(0);
array_Spr_Talk_3_         = array_create(0);


array_NpcTalking  = array_create(0);

array_Name = array_create(0);
array_Txt  = array_create(0);

array_InstanceLoadIn  = array_create(0);

var repeat_I = 0;
repeat(oo.arrayCutscenes[oo.currentCutscene].totalBlocks){
  array_Spr_Idle_Static_1_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_SprIdleStatic_1_[repeat_I];
  array_Spr_Idle_1_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_SprIdle_1_[repeat_I];  

  array_Spr_Talk_Static_1_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_SprTalkStatic_1_[repeat_I];
  array_Spr_Talk_1_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_SprTalk_1_[repeat_I];  


  array_Spr_Idle_Static_2_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_SprIdleStatic_2_[repeat_I];
  array_Spr_Idle_2_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_SprIdle_2_[repeat_I];  

  array_Spr_Talk_Static_2_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_SprTalkStatic_2_[repeat_I];
  array_Spr_Talk_2_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_SprTalk_2_[repeat_I];  


  array_Spr_Idle_Static_3_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_SprIdleStatic_3_[repeat_I];
  array_Spr_Idle_3_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_SprIdle_3_[repeat_I];  

  array_Spr_Talk_Static_3_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_SprTalkStatic_3_[repeat_I];
  array_Spr_Talk_3_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_SprTalk_3_[repeat_I];  



  array_NpcTalking[repeat_I]          = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_Txt_PersonActive[repeat_I];


  array_Name[repeat_I] = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_Name[repeat_I];
  array_Txt[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_Txt[repeat_I];
  
  array_InstanceLoadIn[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene].dialogBlock_LoadIn[repeat_I];

repeat_I++;
}




// camera
 camX        = camera_get_view_x( view_camera[0] );
 camY        = camera_get_view_y( view_camera[0] );
 camWidth    = camera_get_view_width( view_camera[0] );
 camHeight   = camera_get_view_height( view_camera[0] );

//obj_Control_All.arrayCutscenes[obj_Control_All.currentCutscene].sprBgr;
