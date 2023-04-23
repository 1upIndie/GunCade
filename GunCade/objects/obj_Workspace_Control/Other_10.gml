/// @description swap to next!
    var oo = obj_Control_All;   
	var getBlocks = oo.arrayCutscenes[oo.currentCutscene].totalBlocks;
	
	if(dialogIndex < getBlocks-1){
	
	// check if there is an instance loaded!
	
	
	typist.reset();
	typist.in(typePerStep, typeSmoothness);
	
	dialogIndex++;
	
	// check if old spr is the same as new!
	var popInSpr = true;
	//if( array_Spr[dialogIndex] == array_Spr[dialogIndex-1] ){  popInSpr = false; }
	
	//if(popInSpr == true){ 
	//	dialogSprAlpha = 0;
	//	dialogSpr_X2   = -15;
	//	}
	
	
	// check if there is an instance loaded! -> if yes block input!	 
	if ( array_InstanceLoadIn[ dialogIndex ] != noone ){ 
		blockInput = true;
		typist.skip();
		
		// load in instance
		instance_create_layer(x,y, "Instances", array_InstanceLoadIn[dialogIndex] );
		}
	
	} 
	
	// if done all dialogs things, get out of here
	else {
		drawOnScreen = false;
		
		// destroy background
		instance_destroy();
		instance_destroy(obj_Cutscene_Bgr);		
		obj_Cutscene_Player.blockPlayer = false;
		
        // reset camera back to set default
	 		obj_Camera.camera_Show_Width   = obj_Camera.Aspect_Ratio_Width *saveCameraFactor;
            obj_Camera.camera_Show_Height  = obj_Camera.Aspect_Ratio_Height *saveCameraFactor ;	
		
	 //room_goto(room_Action_1);
	
	}
	
	