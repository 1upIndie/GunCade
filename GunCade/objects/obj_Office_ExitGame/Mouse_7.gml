/// @description 
if( obj_Office_Control.blockAll == true ){ exit; }

if ( canPress == true){
   
   obj_Office_Control.blockAll = true;

  scr_ShakeIt( obj_Control_All.screenShakeTime_PressButton, obj_Control_All.screenShakeAmount_PressButton );
   // set correct day to jump to!
     
	 scr_PlaySound( snd_MenueSfx_Start, 0 );
	 
     obj_Control_All.currentCutscene_DAY = obj_Control_All.currentCutscene_DAY + 100 + 1;
	
     game_end();
   

 }  



  
