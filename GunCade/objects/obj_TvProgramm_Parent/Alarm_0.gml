/// @description 



if( hasDoubleRepeat == false){

	if(currentFrame < totalFrames){ lastFrame = currentFrame; currentFrame++;  }
	 else { currentFrame = 0; lastFrame = totalFrames; }}


if( hasDoubleRepeat == true){


    if(hasDoubleRepeat_Stack < hasDoubleRepeat_StackMax){ hasDoubleRepeat_Stack++;
		
		switch(currentFrame){
			case hasDoubleRepeatFrame[1]: currentFrame = hasDoubleRepeatFrame[2]; lastFrame = hasDoubleRepeatFrame[1];  break;
			case hasDoubleRepeatFrame[2]: currentFrame = hasDoubleRepeatFrame[1]; lastFrame = hasDoubleRepeatFrame[2];  break;
		}
		

		
		// if going full!
		} else {
			hasDoubleRepeat_Stack = 0; // reset
			
	    if(currentFrame < totalFrames){ 
			 hasDoubleRepeatFrame[1] += 2;
             hasDoubleRepeatFrame[2] += 2;
			 lastFrame    = hasDoubleRepeatFrame[2];
             currentFrame = hasDoubleRepeatFrame[1];
			
			
			}
	      else { 			
			 hasDoubleRepeatFrame[1] = 0;
             hasDoubleRepeatFrame[2] = 1;
			 lastFrame    = hasDoubleRepeatFrame[2];
             currentFrame = hasDoubleRepeatFrame[1];
			 }
		
		

		
		}


	 
	 
	 } // end of double repeat


// override once
if(setOnce == false){  currentFrame = 0;  setOnce = true; lastFrame = 0;
  totalFrames       = obj_Control_All.arrayTv_Programms[tvProgramm_Index].tv_TotalFrames-1; // 
  tvProgramm_Sprite = obj_Control_All.arrayTv_Programms[tvProgramm_Index].tv_Spr;

}


// override if side camera
if ( randomStart == true){ randomStart = false;
	var pickOne =  irandom_range(0, totalFrames);
	currentFrame = pickOne;
	}



// override if double repeat
if( hasDoubleRepeat == true){



}

// get instruction set
stateMove      = obj_Control_All.arrayTv_Programms[tvProgramm_Index].tv_Move[currentFrame];
stateFade      = obj_Control_All.arrayTv_Programms[tvProgramm_Index].tv_Fade[currentFrame];
playSpeedTime  = obj_Control_All.arrayTv_Programms[tvProgramm_Index].tv_FrameTime[currentFrame];


// news text
hasNews        = obj_Control_All.arrayTv_Programms[tvProgramm_Index].tv_HasNews[currentFrame];
hasNewsTxt     = obj_Control_All.arrayTv_Programms[tvProgramm_Index].tv_HasNewsTxt[currentFrame];
hasNewsTxtS    = obj_Control_All.arrayTv_Programms[tvProgramm_Index].tv_HasNewsTxtS[currentFrame];

// reset old values
moveX     = 0;
moveY     = 0;
zoomTotal = 0;
lastFrame_Alpha = 1;



alarm_set(0, playSpeedTime);