/// @description audio clean up!

if(room == Room_Workspace){
   if ( audio_is_playing( snd_StartTheme_Mokka__Spicy_Cream )){
    audio_stop_sound(snd_StartTheme_Mokka__Spicy_Cream);

}}

if(room == room_StartScreen){
   if ( audio_is_playing( snd_Music_ncalib_Mokka_EarlyMorning )){
        audio_stop_sound(snd_Music_ncalib_Mokka_EarlyMorning);

}}


