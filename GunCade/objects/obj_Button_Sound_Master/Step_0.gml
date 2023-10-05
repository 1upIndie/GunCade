/// @description 


if(state == "hover"){  event_user(0); }

if(state == "idle" ){  event_user(1); }

// check for hover! -> override
state = "idle";
if ( mouse_x >= bbox_left and mouse_x <= bbox_right  ){
  if ( mouse_y >= bbox_top and mouse_y <= bbox_bottom ){
state = "hover";
}} 


// check mouse click only in hover over // plus AW and keys!


if(state == "hover" and canClick == true){
	
	var inputUp   = mouse_check_button_released(mb_left)  or keyboard_check_released( vk_right) or keyboard_check_released( ord("D"))
	var inputDown = mouse_check_button_released(mb_right) or keyboard_check_released( vk_left)  or keyboard_check_released( ord("A"));	

	if(inputUp == 1 and inputDown == 0){   event_user(2);  } // left
	if(inputUp == 0 and inputDown == 1){   event_user(3);  } // right


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
 
 
 // blinkers
 blinkers_Timer--;
 if( blinkers_Timer <= 0){
    blinkers_Timer = blinkers_Time;
	
	if(blinkers_Alpha == 0){ blinkers_Alpha = 1; } 
	 else { blinkers_Alpha = 0; } 
 
 }
 
 
#endregion








