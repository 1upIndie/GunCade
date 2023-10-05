/// @description spawn one news off button!
	var camX        = camera_get_view_x( view_camera[0] );
	var camY        = camera_get_view_y( view_camera[0] );
	var camWidth    = camera_get_view_width( view_camera[0] );
	var camHeight   = camera_get_view_height( view_camera[0] );	
	
	x = camX + (camWidth/2);
	
	
if ( isNews == true ){
    
	instance_create_depth(camX+ camWidth + buttonX, camY + buttonY, -16000, obj_NewsTv_Button );
}
	// instance_create_depth(camX+ buttonX, camY + buttonY, -17000, obj_NewsTv_Button );