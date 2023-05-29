/// @description center

var display_Width__  = display_get_width()/2;
var display_Height__ = display_get_height()/2;

var camCenterX = display_Width__  - ( window_get_width()/2  ); 
var camCenterY = display_Height__ - ( window_get_height()/2 ); 



window_set_position(camCenterX, camCenterY );

