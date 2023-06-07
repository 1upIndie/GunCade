/// @description 


if (!instance_exists(obj_Temp_Drag) and obj_MiniGame_Parent.inputCoolDown == false and save_Index_Weapon != -999){
   state = "blink";
   image_alpha  = 0.6;
   //sprite_index = spr_MiniGame_Pistol_Empty;
   whatisIt = "";
   //update = true; // if weapon removed,
  // obj_MiniGame_Parent.costsTotal = 0;
   
   
   // refund!
   obj_MiniGame_Parent.current_Costs  -= obj_Control_All.array_DetailWeaponText[save_Index_Weapon].cost;
   save_Index_Weapon = -999; // null!
}