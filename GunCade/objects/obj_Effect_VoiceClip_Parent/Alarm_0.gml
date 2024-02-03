/// @description spawn sound and effect!


obj_Workspace_Control.dialogIndex++;

// jump to plus unblock
obj_Workspace_Control.blockInput = false;

var oo = obj_Control_All;

/// apply

// plays sound if there is!
if(playVoiceFile != snd__Nothing){
  scr_PlaySound_Sfx(playVoiceFile, 0, oo.fixed_Voice_PitchMin, oo.fixed_Voice_PitchMax);
}


// play animation if there is



if(instEffect != noone){
	
 // preck where to spawn	
	
var layerSet = "Instances_OverlayPopUp";
var sizeSet  = oo.fixed_EffectEmote_Size;
var setX = emoteX[1];
 instance_create_layer(setX, emoteY,  layerSet, instEffect, {
	 image_xscale : sizeSet,
	 image_yscale : sizeSet
	 });

}


instance_destroy();