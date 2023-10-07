/// @description camera moving


//window_center(); delete if not needed, lets the window always stick to the middle
camera_set_view_size(view_camera[0], camera_Show_Width, camera_Show_Height   );  // Zoom, change width and height of camera


// moving of the camera according to the target set and the level border
if (instance_exists(target)) { 
	
	// get x and y position of target and don't show anything outside of room
	var cameraX =  clamp  (target.x - camera_Show_Width/2,  0, room_width  - camera_Show_Width   );
	
	var addCameraYY = 0;

	
	var cameraY =  clamp  (target.y - addCameraYY - (camera_Show_Height/2), 0, room_height - camera_Show_Height );	



	
	// get current value of camera to get smooth value between old position and target position
	if(jumpToTargetInstantly == false){
		var current_x = camera_get_view_x (view_camera[0]);
		var current_y = camera_get_view_y (view_camera[0]);	
	} 
	  else { jumpToTargetInstantly = false;
		var current_x = cameraX;
		var current_y = cameraY;	
	
	}
	
	
	
	var SmoothScrollSpeed = 0.1;  // 

	// Smooth scrollspeed and set new positon of camera
	camera_set_view_pos(view_camera[0], 
			lerp( current_x, cameraX, SmoothScrollSpeed  ),
			lerp( current_y, cameraY, SmoothScrollSpeed  ) );	
		
	} // end of target exists
	
	
/// Zoom	with keyboard up and down, change here for other input
if(zoomEnabled == true){
    // zoom out//	if(cameraMode_ == false){
	if ( keyboard_check(vk_pageup) and zoomMax_Width > (camera_Show_Width + Aspect_Ratio_Width)  ) {
	camera_Show_Width  += Aspect_Ratio_Width;
    camera_Show_Height += Aspect_Ratio_Height;

	}
	
    // zoom in
	if ( keyboard_check(vk_pagedown)  and zoomMin_Width < (camera_Show_Width - Aspect_Ratio_Width)  ) {
	camera_Show_Width  -= Aspect_Ratio_Width;
    camera_Show_Height -= Aspect_Ratio_Height;
	  }	
//	} // end of no Camera mode running



	
	
}





// disable gui when too close
//var factor_ = 		camera_Show_Width/Aspect_Ratio_Width;
 




#region parallax
/*
var close  = layer_get_id("Backgrounds_Parallax_Close");
var medium = layer_get_id("Backgrounds_Parallax_Medium");
var far    = layer_get_id("Backgrounds_Parallax_Far");


layer_x(close,  lerp(0, camera_get_view_x(view_camera[0]), 0.5  ) );
layer_x(medium, lerp(0, camera_get_view_x(view_camera[0]), 0.7  ) );
layer_x(far,    lerp(0, camera_get_view_x(view_camera[0]), 0.9  ) );
*/
#endregion

