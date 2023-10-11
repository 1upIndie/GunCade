/// @description 

if( isBlocked == true ){ exit; }

if (!instance_exists(obj_Temp_Drag) and obj_MiniGame_Parent.inputCoolDown == false and state != "blink" ){
   


  // obj_MiniGame_Parent.current_Costs -= obj_Control_All.array_DetailWeaponText[save_Index_Weapon].cost;
  // attachment_Active = false;
   //obj_MiniGame_Parent.AdditionalTxt_Update = true;
   
if(isBlocked == false){ 
	scr_ShakeIt( obj_Control_All.screenShakeTime_PressButtonSoft, obj_Control_All.screenShakeAmount_PressButtonSoft );
	state = "blink"; }


   obj_MiniGame_Parent.updateCosts = true;

}