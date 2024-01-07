/// @description 

var buffer = 10;
 camX  = camera_get_view_x(view_camera[0] );
 camY  = camera_get_view_y(view_camera[0] );

 camWidth  = camera_get_view_width(view_camera[0] );
 camHeight = camera_get_view_height(view_camera[0] );

x = camX + (camWidth/2);
y = camY -10;
//draw_self();

draw_sprite_stretched(sprite_index, 0, camX-buffer, camY-buffer, camWidth + (2*buffer), camHeight + (2*buffer)  );

/*
if (obj_Control_All.debug == true){
var vv = 50;
var txt = fpsDraw;
draw_text_ext_transformed(camX+vv, camY+vv, txt, 0, 500, 2,2, 0 );
}
*/

