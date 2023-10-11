/// @description programm


// failsave
if (instance_exists(programmID) ){  instance_destroy(programmID); programmID = noone; }

if(firstTimeSet == true){ scr_PlaySound(snd_TvSwitchProgramm ,0); }
 else { firstTimeSet = true; }

// get id of new programm to load in
if(currentProgrammIndex < getArrayLength-1){ currentProgrammIndex++;  }
 else { currentProgrammIndex = 0; }

var instTvProgramm = programmArray[currentProgrammIndex];

// override at start!
if(showSecurityCamAtStart == true){  instTvProgramm = obj_TvProgramm_SecurityCam; showSecurityCamAtStart = false; }
    
	var sizeTVprogram = programmSize_Main;
	var xTVprogram    = programm_Main_X;	
	var yTVprogram    = programm_Main_Y;	
	
	if( isMain == true){
		sizeTVprogram = programmSize_Main;
	    xTVprogram    = programm_Main_X;	
	    yTVprogram    = programm_Main_Y;				
	}

	if( isMain == false){
		sizeTVprogram = programmSize_Small;
	    xTVprogram    = programm_Small_X;	
	    yTVprogram    = programm_Small_Y;				
	}
	
	

	

    programmID = instance_create_layer( x +xTVprogram, y +yTVprogram, "Instances", instTvProgramm);
    programmID.image_xscale = image_xscale;
    programmID.image_yscale = image_yscale; 

    programmID.tvScaleX = image_xscale * sizeTVprogram;
    programmID.tvScaleY = image_yscale * sizeTVprogram;  
	
	programmID.isMain = isMain; // pass in so text gets correctly scaled!


// disable instant toggling
canSwitchProgramm = false;
alarm[1] = coolDownTime;
