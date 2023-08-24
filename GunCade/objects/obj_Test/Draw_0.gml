/// @description 
var txt = "nope";
var count = 0;

var calc1 = camera_get_view_width(view_camera[0] );
var calc2 = camera_get_view_height(view_camera[0] );

txt = string(calc1 ) + " : " + string(calc2 );


draw_text(x,y, txt)