/// @description 

state = "blink";

blink_Pos   = 0;
blink_total = 180;

 _channel = animcurve_get_channel(aniCurve_Blink, 0);

 var size = obj_MiniGame_Parent.button_ResultSelected_Size;
weapon_XYscale = size;

image_xscale = size;
image_yscale = size;

image_speed = 0;
 image_index = 1;
 image_alpha = 0.6;