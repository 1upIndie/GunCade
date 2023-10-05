
var getValue = obj_Control_All.volume_Sfx;

if ( getValue > 0){ obj_Control_All.volume_Sfx -= subAdd; } 


audio_group_set_gain( audiogroup_Music,  obj_Control_All.volume_Sfx, 0 );