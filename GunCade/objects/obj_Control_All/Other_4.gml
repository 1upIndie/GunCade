/// @description sound control!


alarm[1] = 5*60; // clean up all songs

if(room == room_StartScreen){
	
	var sound = audio_play_sound(snd_Music_ncalib_Mokka__Spicy_Cream, 1, 1 );
	           // audio_sound_gain(sound, 1, audioFixed_FadeIn );

}

if(room == Room_Workspace){
	var sound = audio_play_sound(snd_Music_ncalib_Mokka_EarlyMorning, 1, 1 );

	
}



