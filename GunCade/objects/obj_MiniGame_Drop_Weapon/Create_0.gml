/// @description 
event_inherited();


state = "blink";

update = false; // used to reset attachments!

 #region input cooldown
 inputCoolDown_Time  = 15;
 inputCoolDown_Timer = inputCoolDown_Time;
 inputCoolDown       = false;
 
 #endregion


whatisIt = "";
weaponSpr = spr_Nothing;
reset = false;

blink_Pos   = 0;
blink_total = 180;

 _channel = animcurve_get_channel(aniCurve_Blink, 1);

 var size = obj_MiniGame_Parent.button_ResultSelected_Size6;
weapon_XYscale = size;

image_xscale = size;
image_yscale = size;

image_speed = 0;
 image_index = 1;
 image_alpha_Set = 0.6;
 image_alpha     = image_alpha_Set;
 
 