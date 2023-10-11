/// @description sound control!


alarm[1] = 5*60; // clean up all songs
if(sound_Debug == true) { exit; }  /// debug only for sfx!



if(room == room_StartScreen){
	
	var sound = audio_play_sound(snd_StartTheme_Mokka__Spicy_Cream, 1, 1 );
	           // audio_sound_gain(sound, 1, audioFixed_FadeIn );

}

if(room == room_Office){
	var sound = audio_play_sound(snd_StartTheme_Mokka__Spicy_Cream, 1, 1 );

	
}



