/// @description sound control! + clean up particles


var lenghtParticleArray = array_length(garbageCollect_Particles);
var lenghtParticleArray_I = 0;

	repeat(lenghtParticleArray){

   part_system_destroy( garbageCollect_Particles[ lenghtParticleArray_I ] );

     lenghtParticleArray_I++;
	}

// reset
garbageCollect_Particles_Index = 0;
array_resize(garbageCollect_Particles, 0);


// stop all sounds, meh
audio_stop_all();



/*
if(sound_Debug == true) { exit; }  /// debug only for sfx!

if (audio_is_playing(snd_StartTheme_Mokka__Spicy_Cream)){
     audio_sound_gain(snd_StartTheme_Mokka__Spicy_Cream, 0, audioFixed_FadeOut );
}

if (audio_is_playing(snd_Music_ncalib_Mokka_EarlyMorning)){
     audio_sound_gain(snd_Music_ncalib_Mokka_EarlyMorning, 0, audioFixed_FadeOut );
}

var lenghtParticleArray = array_length(garbageCollect_Particles);
var lenghtParticleArray_I = 0;

	repeat(lenghtParticleArray){

   part_type_destroy( garbageCollect_Particles[lenghtParticleArray_I] );

     lenghtParticleArray_I++;
	}

// reset
garbageCollect_Particles_Index = 0;
array_resize(garbageCollect_Particles, 0);
*/
