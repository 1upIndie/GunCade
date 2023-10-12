/// @description 

var camX        = camera_get_view_x( view_camera[0] );
var camY        = camera_get_view_y( view_camera[0] );
var camWidth    = camera_get_view_width( view_camera[0] );
var camHeight   = camera_get_view_height( view_camera[0] );
var buffer = 15;

//draw_self();

draw_sprite_stretched_ext(sprite_index, 0, camX-buffer, camY-buffer, camWidth + (2*buffer), camHeight + (2*buffer) , c_white, image_alpha );

