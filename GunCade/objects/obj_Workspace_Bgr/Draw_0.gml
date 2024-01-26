/// @description 
	var camX        = camera_get_view_x( view_camera[0] );
	var camY        = camera_get_view_y( view_camera[0] );
	var camWidth    = camera_get_view_width( view_camera[0] );
	var camHeight   = camera_get_view_height( view_camera[0] );	

if ( isNews == false ){ 
	 //draw_rectangle_color(bbox_left,bbox_top, bbox_right, bbox_bottom, c_black, c_black, c_black, c_black, 0);	
	 draw_self();
	 
	 //draw_sprite_ext(spr_WorkStation_Background_Flicker,0, x,y, image_xscale, image_yscale, 0, flickerColor, flickerAlpha );
	 
	 }

if ( isNews == true ){ 
	 

	 
	 draw_self();
/*	 
	var camX        = camera_get_view_x( view_camera[0] );
	var camY        = camera_get_view_y( view_camera[0] );
	var camWidth    = camera_get_view_width( view_camera[0] );
	var camHeight   = camera_get_view_height( view_camera[0] );	
	 camWidth    = 200;
	 camHeight   = 200;		 
	 
	 //draw_sprite_stretched_ext(spr_Tv_RhamenMain, 0, camX,camY, camWidth, camHeight-tvHeight, c_white, 1  );
	 //draw_sprite_stretched(spr_Tv_RhamenMain, 0,     camX,camY, camWidth, camHeight-tvHeight);
*/

// draw scan lines

}



if (obj_Control_All.debug == true){
var txt = "is News: " + string(isNews);
draw_text(camX+300,camY+100,txt );
}
	
	
	