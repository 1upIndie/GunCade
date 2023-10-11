/// @description 
if( obj_Office_Control.blockAll == true ){ exit; }

if (instance_exists(obj_Office_Result_Pop) == true){
   
   if( obj_Office_Result_Pop.canDraw == false){ 
	   if(delayTimer <= 0){
	      obj_Office_Result_Pop.canDraw = true;
		  
		    scr_PlaySound(snd_MenueSfx_Reduce, 0 );
		    scr_ShakeIt( obj_Control_All.screenShakeTime_PressButton, obj_Control_All.screenShakeAmount_PressButton );
		  }
   
   }
}