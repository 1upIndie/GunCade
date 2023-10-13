/// @description 

if ( isBaught == true){ exit; }
if( obj_Office_Control.blockAll == true ){ exit; }

// buy -> unlock + reduce cash!
if ( obj_Control_All.cashTotalInSave_Office >= hoverOver_Price){
     obj_Control_All.cashTotalInSave_Office -= hoverOver_Price;
	 isBaught = true;
	 obj_Control_All.array_OfficeProp[office_Index].prop_isUnlocked = true; // unlocked!
	 
     image_alpha = alphaBaught_True;
	 scr_PlaySound(snd_Sfx_PayUnlock, 0);
	 
        scr_ShakeIt( obj_Control_All.screenShakeTime_PressButton, obj_Control_All.screenShakeAmount_PressButton );	 
     	scr_particle_create( particleSys_OfficeBuy,  mouse_x, mouse_y );
		animate = true;
}
// play deny sound!
else {

	 scr_PlaySound(snd_MenueSfx_CantAlarm, 0);
}