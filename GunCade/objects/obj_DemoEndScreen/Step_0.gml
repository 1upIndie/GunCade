/// @description 

 x  = camera_get_view_x(view_camera[0] );
 y  = camera_get_view_y(view_camera[0] );

var size = 0.62;
image_xscale = size;
image_yscale = size;

var any = scr_InputCheck("any key")
if(any == 1){ game_end(); }