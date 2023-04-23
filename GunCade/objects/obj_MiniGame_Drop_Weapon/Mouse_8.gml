/// @description 


if (!instance_exists(obj_Temp_Drag) and obj_MiniGame_Parent.inputCoolDown == false){
   state = "blink";
   image_alpha  = 0.6;
   sprite_index = spr_MiniGame_Pistol_Empty;
   whatisIt = "";
   update = true;
   
}