/// @description 

if(disable == true){  exit; }


if(state == "hover"){  event_user(0); }

if(state == "idle" ){  event_user(1); }

// check for hover! -> override
state = "idle";
if ( mouse_x >= bbox_left and mouse_x <= bbox_right  ){
  if ( mouse_y >= bbox_top and mouse_y <= bbox_bottom ){
state = "hover";
}} 


// check mouse click only in hover over!


if(state == "hover" and canClick == true){
	
	var mouseL = mouse_check_button_released(mb_left);
	var mouseR = mouse_check_button_released(mb_right);	
	
	if(mouseL == 1 and mouseR == 0){   event_user(2); scr_PlaySound(sound_Left);  } // left
	if(mouseL == 0 and mouseR == 1){   event_user(3); scr_PlaySound(sound_Right); } // right


}
	
#region animate


 bgr_AniCurve_Pulse_I += 1/timer_Pulse;
 bgr_AniCurve_Mask_I  += 1/timer_Mask;
 
 if(bgr_AniCurve_Pulse_I >= 1){ bgr_AniCurve_Pulse_I = 0; }
 if(bgr_AniCurve_Mask_I  >= 1){ bgr_AniCurve_Mask_I = 0;  }
 
var _val_Pulse = animcurve_channel_evaluate(  bgr_AniCurve_Pulse, bgr_AniCurve_Pulse_I  );
var _val_Mask  = animcurve_channel_evaluate(  bgr_AniCurve_Mask,  bgr_AniCurve_Mask_I  );


 backGr_Pulse_Alpha = _val_Pulse;
 backGr_Mask_Alpha  = _val_Mask;
 
 
#endregion










