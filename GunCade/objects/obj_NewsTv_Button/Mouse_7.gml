/// @description 
if( canPress == false){ exit; }


canPress = false;
image_alpha = 0;


var oo = obj_Control_All;
// block!
obj_Workspace_Control.blockInput = true;

scr_PlaySound( snd_TvSwitchProgramm ,0);

var jump = instance_create_depth(x,y, -15000, obj_Transition_GotoLevel_AfterNews );
    jump.levelJumpTo = Room_Workspace;

// jump to correct room!
switch(oo.currentCutscene_DAY){
	case 101: oo.currentCutscene_DAY = 0; break;
	case 102: oo.currentCutscene_DAY = 1; break;	
	case 103: oo.currentCutscene_DAY = 2; break;
	case 104: oo.currentCutscene_DAY = 3; break;
	case 105: oo.currentCutscene_DAY = 4; break;	
	case 106: oo.currentCutscene_DAY = 5; break;
	case 107: oo.currentCutscene_DAY = 6; break;	
	case 108: oo.currentCutscene_DAY = 7; break;	
	case 109: oo.currentCutscene_DAY = 8; break;
	case 110: oo.currentCutscene_DAY = 9; break;	
	case 111: oo.currentCutscene_DAY = 10; break;	
	case 112: oo.currentCutscene_DAY = 11; break;		
	
}



