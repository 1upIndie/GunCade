

toSkipTo_Index = 300;
// obj_Control_All.acceptClownBatton_Day_2 = true; 
	
// jump to plus unblock
obj_Workspace_Control.dialogIndex = toSkipTo_Index;
obj_Workspace_Control.blockInput = false;

scr_PlaySound( snd_MenueSfx_Start, 0);

instance_destroy();