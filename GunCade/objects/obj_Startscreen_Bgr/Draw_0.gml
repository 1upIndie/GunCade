/// @description 


var camX  = camera_get_view_x(view_camera[0] );
var camY  = camera_get_view_y(view_camera[0] );

var  camWidth  = camera_get_view_width(view_camera[0] );
var  camHeight = camera_get_view_height(view_camera[0] );

x = camX + (camWidth/2);
y = camY -10;

buffer = 10;
//draw_self();

draw_sprite_stretched(sprite_index, 0, camX-buffer, camY-buffer, camWidth + (2*buffer), camHeight + (2*buffer)  );

