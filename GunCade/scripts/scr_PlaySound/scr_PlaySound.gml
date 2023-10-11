// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_PlaySound(sound_, loop_){
	

	audio_play_sound(sound_, 1, loop_);

}


function scr_PlaySound_Sfx(sound_, loop_,  pitchVar1, pitchVar2){
	

	var sfxGain = obj_Control_All.volume_Sfx;	
	var pitchSet = random_range(pitchVar1, pitchVar2);
	

	audio_play_sound(sound_, 1, loop_, sfxGain, 0, pitchSet);

}