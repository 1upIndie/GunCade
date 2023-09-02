if ( isNews == true ){ 
	 

	 
	var camX        = camera_get_view_x( view_camera[0] );
	var camY        = camera_get_view_y( view_camera[0] );
	var camWidth    = camera_get_view_width( view_camera[0] );
	var camHeight   = camera_get_view_height( view_camera[0] );	

	 
	 draw_sprite_stretched_ext(spr_Tv_RhamenDialog, 0, camX,camY, camWidth, camHeight-tvHeight, c_white, 1  );


}