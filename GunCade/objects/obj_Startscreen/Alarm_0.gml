/// @description pos set once


var camX  = camera_get_view_x(view_camera[0] );
var camY  = camera_get_view_y(view_camera[0] );

var camWidth  = camera_get_view_width(view_camera[0] );
var camHeight = camera_get_view_height(view_camera[0] );

x = camX + (camWidth/2);
y = camY -10;