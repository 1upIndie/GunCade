/// @description position set!

 var camX        = camera_get_view_x( view_camera[0] );
 var camY        = camera_get_view_y( view_camera[0] );
 var camWidth    = camera_get_view_width( view_camera[0] );
 var camHeight   = camera_get_view_height( view_camera[0] );
 var padding =  5;
 x = camX + camWidth - sprite_width - padding;


volumeButtonStartX = x + 38;
volumeButtonStartY = y + 64;

timerDigitX = x + 32;
timerDigitY = y + 21;
 
songNameX = x + 141;
songNameY  = y + 20;
songOwnerY = y + 35;