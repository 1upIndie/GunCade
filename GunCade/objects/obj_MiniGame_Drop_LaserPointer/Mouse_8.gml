/// @description 


if (!instance_exists(obj_Temp_Drag) and obj_MiniGame_Parent.inputCoolDown == false and state != "blink" ){

   //save_Index_Weapon = -999;
   
if(isBlocked == false){ 
	
	scr_ShakeIt( obj_Control_All.screenShakeTime_PressButtonSoft, obj_Control_All.screenShakeAmount_PressButtonSoft ); 
	state = "blink"; }
    obj_MiniGame_Parent.updateCosts = true;
}