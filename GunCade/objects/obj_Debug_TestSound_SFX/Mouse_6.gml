
if (audio_is_playing( snd_StartScreen_LogoPopup ) == 1){ 
	
	audio_stop_sound( snd_StartScreen_LogoPopup);
	} else {
	
	scr_PlaySound( snd_StartScreen_LogoPopup, 1 );
	}