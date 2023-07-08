/// @description programm


// failsave
if (instance_exists(programmID) ){  instance_destroy(programmID); programmID = noone; }

scr_PlaySound(snd_TvSwitchProgramm);

// get id of new programm to load in
if(currentProgrammIndex < getArrayLength-1){ currentProgrammIndex++;  }
 else { currentProgrammIndex = 0; }

var instTvProgramm = programmArray[currentProgrammIndex];

// override at start!
if(showSecurityCamAtStart == true){  instTvProgramm = obj_TvProgramm_SecurityCam; showSecurityCamAtStart = false; }


    programmID = instance_create_layer(x,y, "Instances", instTvProgramm);
    programmID.image_xscale = image_xscale;
    programmID.image_yscale = image_yscale;  

    programmID.tvScaleX = image_xscale;
    programmID.tvScaleY = image_yscale;  
	
	programmID.isMain = isMain; // pass in so text gets correctly scaled!


// disable instant toggling
canSwitchProgramm = false;
alarm[1] = coolDownTime;
