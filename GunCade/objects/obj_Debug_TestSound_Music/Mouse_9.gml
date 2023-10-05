/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


if (audio_is_playing( snd_StartTheme_Mokka__Spicy_Cream ) == 1){ 
	
	audio_stop_sound( snd_StartTheme_Mokka__Spicy_Cream);
	} else {
	
	scr_PlaySound( snd_StartTheme_Mokka__Spicy_Cream, 1 );
	}