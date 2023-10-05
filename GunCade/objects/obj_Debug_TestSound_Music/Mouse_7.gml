/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


var getValue = obj_Control_All.volume_Music;

if ( getValue < 1){ obj_Control_All.volume_Music += subAdd; } 

audio_group_set_gain( audiogroup_Music,  obj_Control_All.volume_Music, 0 );