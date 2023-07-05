/// @description 

if( isBlocked == true ){ exit; }

if (!instance_exists(obj_Temp_Drag) and obj_MiniGame_Parent.inputCoolDown == false and state != "blink" ){


   obj_MiniGame_Parent.current_Costs -= obj_Control_All.array_DetailWeaponText[save_Index_Weapon].cost;
   

if(isBlocked == false){ state = "blink"; }
 
}