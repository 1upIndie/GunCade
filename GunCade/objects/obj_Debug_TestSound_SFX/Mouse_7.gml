

var getValue = obj_Control_All.volume_Sfx;

if ( getValue < 1){ obj_Control_All.volume_Sfx += subAdd; } 



audio_group_set_gain( audiogroup_SFX,    obj_Control_All.volume_Sfx, 0 );
