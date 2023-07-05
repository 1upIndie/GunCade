/// @description 
event_inherited();
save_Index_Weapon = 81;

cost = obj_Control_All.array_DetailWeaponText[81].cost;

state = "blink";

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



  sizeX = obj_MiniGame_Parent.button_ResultSelectedAttach_XSize;
  sizeY = obj_MiniGame_Parent.button_ResultSelectedAttach_YSize; 

image_xscale = sizeX;
image_yscale = sizeY;

image_speed = 0;
 image_index = 1;
 image_alpha_Set = 0.6;
 image_alpha     = image_alpha_Set;
 
 