/// @description 


obj_Workspace_Control.dialogIndex++;

// jump to plus unblock
obj_Workspace_Control.blockInput = false;

scr_SetWeaponUnlocks(7);
scr_PlaySound_Sfx(snd_Sfx_PayUnlock,0, 1,1);

instance_destroy();