/// @description state animation


 camX  = camera_get_view_x(view_camera[0] );
 camY  = camera_get_view_y(view_camera[0] );

 camWidth  = camera_get_view_width(view_camera[0] );
 camHeight = camera_get_view_height(view_camera[0] );

// wait, fade vic, fade, women, 2nd, wait2, logo, wait3. move to right
if( state == "wait1"){ 
	timerWait[1]--;
	if(timerWait[1] <= 0){ state = "fade vic";  }	
	}

/////////////////////////////////
if( state == "fade vic"){  
	
fadeVic_AniCurve_I	+= 1/fadeVic_AniCurve_Time;
	
var _val = animcurve_channel_evaluate(  fadeVic_AniCurve, fadeVic_AniCurve_I  );

   spr_CharAlpha[1] = _val;
   
   if( fadeVic_AniCurve_I >= 1 ){ state = "wait2";  }
}


//////////////////////////////
if( state == "wait2"){ 
	timerWait[2]--;
	if(timerWait[2] <= 0){ state = "fade women";  }	
	}
	


///////////////////////////////
if( state == "fade women"){  
	
fadeWomen_AniCurve_I	+= 1/fadeWomen_AniCurve_Time;
	
var _val = animcurve_channel_evaluate(  fadeWomen_AniCurve, fadeWomen_AniCurve_I  );

   spr_CharAlpha[2] = _val;
   
   if( fadeWomen_AniCurve_I >= 1 ){ state = "wait3";  }
}


///////////////////////
if( state == "wait3"){ 
	timerWait[3]--;
	if(timerWait[3] <= 0){ state = "fade 2nd row";  }	
	}
	
	
	
///////////////////////////////
if( state == "fade 2nd row"){  
	
fade2ndRow_AniCurve_I	+= 1/fade2ndRow_AniCurve_Time;
	
var _val = animcurve_channel_evaluate(  fade2ndRow_AniCurve, fade2ndRow_AniCurve_I  );

   spr_CharAlpha[3] = _val;
   
   if( fade2ndRow_AniCurve_I >= 1 ){ state = "wait4";  }
}	
	


///////////////////////
if( state == "wait4"){ 
	timerWait[4]--;
	if(timerWait[4] <= 0){ state = "fade logo";  }	
	}


/////////////////////////////////
if( state == "fade logo"){  
	
fadeLogo_AniCurve_I	+= 1/fadeLogo_AniCurve_Time;
	
var _val = animcurve_channel_evaluate(  fadeLogo_AniCurve, fadeLogo_AniCurve_I  );

   spr_CharAlpha[4] = _val;
   
   if( fadeLogo_AniCurve_I >= 1 ){ state = "wait5";  }
}
	


///////////////////////
if( state == "wait5"){ 
	timerWait[5]--;
	if(timerWait[5] <= 0){ state = "move right";  }	
	}
	
	

if( state == "move right"){
moveRight_AniCurve_I	+= 1/moveRight_AniCurve_Time;
	
var _val = animcurve_channel_evaluate(  moveRight_AniCurve, moveRight_AniCurve_I  );

   sprMoveX = _val * moveRightAmount;
   
   if( moveRight_AniCurve_I >= 1 ){ state = "buttons popup";  }
}
	
	
// buttons spawn!	
if( state == "buttons popup"){

var camX  = camera_get_view_x(view_camera[0] );
var camY  = camera_get_view_y(view_camera[0] );

	instance_create_layer( camX + buttonX, camY + buttonY[1],  "Instances_Buttons", obj_Button_Start );
	instance_create_layer( camX + buttonX, camY + buttonY[2],  "Instances_Buttons", obj_Button_Back );	
	
}


scr_C

// instant skip!
	instance_create_layer( camX , camY,  "Instances_Buttons", obj_Effect_Txt_PopUpGoUp_Slip );

	
	