/// @description 

whatisIt = "";
canPlace = false;

impossibleDrop = false;

blink_Pos   = 0;
blink_total = 60;

 _channel = animcurve_get_channel(aniCurve_Blink, 0);
 
 
 image_speed = 0;
 image_index = 1;
 mask_index = spr_TempDrag_Hitbox
