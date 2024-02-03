/// @description spawn sound and effect!


obj_Workspace_Control.dialogIndex++;

// jump to plus unblock
obj_Workspace_Control.blockInput = false;


/// apply
if(playVoiceFile != snd__Nothing){

  scr_PlaySound_Sfx(playVoiceFile, 0, )
}
playVoiceFile = snd__Nothing;
instEffect    = noone;


instance_destroy();