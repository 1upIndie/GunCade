/// @description sound control!

if(sound_Debug == true) { exit; }  /// debug only for sfx!

if (audio_is_playing(snd_StartTheme_Mokka__Spicy_Cream)){
     audio_sound_gain(snd_StartTheme_Mokka__Spicy_Cream, 0, audioFixed_FadeOut );
}

if (audio_is_playing(snd_Music_ncalib_Mokka_EarlyMorning)){
     audio_sound_gain(snd_Music_ncalib_Mokka_EarlyMorning, 0, audioFixed_FadeOut );
}
