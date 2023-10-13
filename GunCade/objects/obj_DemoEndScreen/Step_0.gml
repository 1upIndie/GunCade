/// @description 

 x  = camera_get_view_x(view_camera[0] ) + (camera_get_view_width(view_camera[0] )/2); 
 y  = camera_get_view_y(view_camera[0] ) + camera_get_view_height(view_camera[0] )+2; 

var size = 1.1;
image_xscale = size;
image_yscale = size;

var any = scr_InputCheck("any key")
if(any == 1){ game_end(); }