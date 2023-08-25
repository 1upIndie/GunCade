/// @description 
obj_Workspace_Control.blockDraw = true;
// timers
state = "wait";  // wait, character, wait2 name, descritpion

 stateTimer_Wait          = round(1.2*60);

 stateTimer_Character     = 12;
 stateTimer_Wait2         = round(0.8*60); 
 
 stateTimer_Name          = 25;
 stateTimer_Wait3         = round(0.8*60); 

 stateTimer_Description   = 25;
 stateTimer_Wait4         = round(6*60); 


#region Character

character_AniCurve   = animcurve_get_channel( aniCurve_CharPopIn_Bounce, 0 );
character_AniCurve_I = 0;

 character_Spr_YMove    = 1000;
 character_Spr_YMoveMax = character_Spr_YMove; 


character_Spr = spr_Nothing;

character_Spr = spr_Dialog_Betty_Idle;
 character_Spr_X  = 270;
 character_Spr_Y  = 50;
 character_SprScale = 0.75;


 character_SprIndex      = 0;
 character_SprIndexMax   = 4;
 character_SprIndexTime  = 4; 
 character_SprIndexTimer = character_SprIndexTime; 
 
 #endregion
 
 
 #region Name

name_AniCurve   = animcurve_get_channel( aniCurve_CharPopIn_Bounce, 0 );
name_AniCurve_I = 0;

 name_Spr_XMove    = 2000;
 name_Spr_XMoveMax = name_Spr_XMove; 


name_Spr = spr_Nothing;
 name_Spr_X  = 480;
 name_Spr_Y  = 100;
 name_SprScale = 1;

 
 #endregion
 
  #region description

description_AniCurve   = animcurve_get_channel( aniCurve_CharPopIn_Bounce, 0 );
description_AniCurve_I = 0;

 description_Spr_XMove    = 2000;
 description_Spr_XMoveMax = description_Spr_XMove; 


description_Spr = spr_Nothing;
 description_Spr_X  = name_Spr_X;
 description_Spr_Y  = 260;
 description_SprScale = 1;

 
 #endregion
  
  #region black bgr
  blackBgr_Index = 0;

  blackBgr_XScale = 3;
  blackBgr_YScaleTop    = 1; 
  blackBgr_YScaleBottom = -1;   
  
  blackBgr_AngleTop     = 4;
  blackBgr_AngleBottom  = 1;  


  blackBgr_TopY    = 70;
  blackBgr_BottomY = 70;
  
  
  blackBgr_Timer = 4;
  alarm[0] = blackBgr_Timer;
  #endregion