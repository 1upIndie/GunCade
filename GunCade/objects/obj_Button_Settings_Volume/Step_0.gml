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
	
	var inputL = mouse_check_button_released(mb_left)  or keyboard_check_released( vk_left)  or keyboard_check_released( ord("A"))
	var inputR = mouse_check_button_released(mb_right) or keyboard_check_released( vk_right) or keyboard_check_released( ord("D"));	

	if(inputL == 1 and inputR == 0){   event_user(2);  } // left
	if(inputL == 0 and inputR == 1){   event_user(3);  } // right


}










