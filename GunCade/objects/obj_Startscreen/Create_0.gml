/// @description 

	audio_play_sound(snd_Music_ncalib_Mokka__Spicy_Cream_Ogg, 1, 1 );


 camX  = camera_get_view_x(view_camera[0] );
 camY  = camera_get_view_y(view_camera[0] );

 camWidth  = camera_get_view_width(view_camera[0] );
 camHeight = camera_get_view_height(view_camera[0] );


alarm[0] = 2;

 state = "wait1";  // wait1, fade vic, fade, women, 2nd, wait2, logo, wait3. move to right
 
 spr_Char[1] = spr_Ui_Startscreen_Vic;
 spr_Char[2] = spr_Ui_Startscreen_Women;
 spr_Char[3] = spr_Ui_Startscreen_2ndRow;
   spr_CharY = -10; 
 spr_Logo    = spr_Ui_Startscreen_Logo; 
  spr_LogoY = 235;
 
  spr_Scale = 0.32;
  
   spr_CharAlpha[1] = 0;
   spr_CharAlpha[2] = 0;   
   spr_CharAlpha[3] = 0; 
   spr_CharAlpha[4] = 0; 
   
   sprMoveX = 0;
   
   
#region states
       var timesDefault  = 0.3;      
	   var timesDefault4 = 1;
	   
       var timesDefault2 = 2.5;	   
	   timerWait[1] = round( timesDefault  * 60);
	   timerWait[2] = round( timesDefault  * 60);   
	   timerWait[3] = round( timesDefault  * 60);   
	   timerWait[4] = round( timesDefault4 * 60);   
	   timerWait[5] = round( timesDefault2 * 60); 
	   
	   
       var fadeDefault = 55;
fadeVic_AniCurve   = animcurve_get_channel( aniCurve_FadeExpo, 0 );
fadeVic_AniCurve_I = 0;
fadeVic_AniCurve_Time = fadeDefault;

fadeWomen_AniCurve   = animcurve_get_channel( aniCurve_FadeExpo, 0 );
fadeWomen_AniCurve_I = 0;
fadeWomen_AniCurve_Time = fadeDefault;

fade2ndRow_AniCurve   = animcurve_get_channel( aniCurve_FadeExpo, 0 );
fade2ndRow_AniCurve_I = 0;
fade2ndRow_AniCurve_Time = fadeDefault;


fadeLogo_AniCurve   = animcurve_get_channel( aniCurve_CharPopIn_Bounce, 0 );
fadeLogo_AniCurve_I = 0;
fadeLogo_AniCurve_Time = 115;



moveRight_AniCurve   = animcurve_get_channel( aniCurve_CharPopIn_Bounce, 0 );
moveRight_AniCurve_I = 0;
moveRight_AniCurve_Time = 20;

moveRightAmount = 80;
 #endregion

// create buttons!
skipToButtons = false;


