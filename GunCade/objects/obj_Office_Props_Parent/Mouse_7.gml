/// @description 

if ( isBaught == true){ exit; }


// buy -> unlock + reduce cash!
if ( obj_Control_All.cashTotalInSave_Office >= hoverOver_Price){
     obj_Control_All.cashTotalInSave_Office -= hoverOver_Price;
	 isBaught = true;
     image_alpha = alphaBaught_True;
	 scr_PlaySound(snd_PopUp__Sale,0);
	 
	 
     	scr_particle_create( particleSys_OfficeBuy,  mouse_x, mouse_y )
}