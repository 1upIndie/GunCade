/// @description 
 camX        = camera_get_view_x( view_camera[0] );
 camY        = camera_get_view_y( view_camera[0] );
 camWidth    = camera_get_view_width( view_camera[0] );
 camHeight   = camera_get_view_height( view_camera[0] );




// check for current state
var typeWriterPosition = typist.get_state();


// button to skip
var buttonSkip = 0;
if(blockInput == false){
	buttonSkip = keyboard_check_released(vk_space);  


// next ->
if(buttonSkip == 1 and typeWriterPosition == 1 ){ 
  event_user(0);
	}


// skip to full text
if(buttonSkip == 1 and typeWriterPosition < 1 ){ 
	typist.skip();
	}
}


// 
// set the drawing of the dialog image
#region set dialog spr to correct image

// randomly set to blink!
if(dialogSpr_State_1_ == "default"){	
	dialogSpr_State_Timer_1--;
	if(dialogSpr_State_Timer_1 <= 0){ dialogSpr_State_1_ = "blink";  dialogSprIndex_1_ = 0;
		dialogSpr_State_Timer_1 = irandom_range(dialogSpr_State_TimeMin, dialogSpr_State_TimeMax );
		}}

if(dialogSpr_State_2_ == "default"){	
	dialogSpr_State_Timer_2--;
	if(dialogSpr_State_Timer_2 <= 0){ dialogSpr_State_2_ = "blink";  dialogSprIndex_2_ = 0;
		dialogSpr_State_Timer_2 = irandom_range(dialogSpr_State_TimeMin, dialogSpr_State_TimeMax );
		}}	

if(dialogSpr_State_3_ == "default"){	
	dialogSpr_State_Timer_3--;
	if(dialogSpr_State_Timer_3 <= 0){ dialogSpr_State_3_ = "blink";  dialogSprIndex_3_ = 0;
		dialogSpr_State_Timer_3 = irandom_range(dialogSpr_State_TimeMin, dialogSpr_State_TimeMax );
		}}	




// dialog text not fully there
	  var npcActive = array_NpcTalking[dialogIndex];
if(typeWriterPosition < 1){ 

	  // person 1 talking  	
		if(dialogSpr_State_1_ == "default" and npcActive == 1){ dialogShow_Spr_1_ = array_Spr_Talk_Static_1_[dialogIndex];  }
		if(dialogSpr_State_1_ == "blink"   and npcActive == 1){ dialogShow_Spr_1_ = array_Spr_Talk_1_[dialogIndex];         }		
		if(dialogSpr_State_1_ == "default" and npcActive != 1){ dialogShow_Spr_1_ = array_Spr_Idle_Static_1_[dialogIndex];  }
		if(dialogSpr_State_1_ == "blink"   and npcActive != 1){ dialogShow_Spr_1_ = array_Spr_Idle_1_[dialogIndex];         }	

	  // person 2 talking  
		if(dialogSpr_State_2_ == "default" and npcActive == 2){ dialogShow_Spr_2_ = array_Spr_Talk_Static_2_[dialogIndex];  }
		if(dialogSpr_State_2_ == "blink"   and npcActive == 2){ dialogShow_Spr_2_ = array_Spr_Talk_2_[dialogIndex];         }		
		if(dialogSpr_State_2_ == "default" and npcActive != 2){ dialogShow_Spr_2_ = array_Spr_Idle_Static_2_[dialogIndex];  }
		if(dialogSpr_State_2_ == "blink"   and npcActive != 2){ dialogShow_Spr_2_ = array_Spr_Idle_2_[dialogIndex];         }			

	  // person 3 talking  
		if(dialogSpr_State_3_ == "default" and npcActive == 3){ dialogShow_Spr_3_ = array_Spr_Talk_Static_3_[dialogIndex];  }
		if(dialogSpr_State_3_ == "blink"   and npcActive == 3){ dialogShow_Spr_3_ = array_Spr_Talk_3_[dialogIndex];         }		
		if(dialogSpr_State_3_ == "default" and npcActive != 3){ dialogShow_Spr_3_ = array_Spr_Idle_Static_3_[dialogIndex];  }
		if(dialogSpr_State_3_ == "blink"   and npcActive != 3){ dialogShow_Spr_3_ = array_Spr_Idle_3_[dialogIndex];         }
	  
}

if(typeWriterPosition >= 1){ 
	
	  // person 1 talking  		
		if(dialogSpr_State_1_ == "default" ){ dialogShow_Spr_1_ = array_Spr_Idle_Static_1_[dialogIndex];  }
		if(dialogSpr_State_1_ == "blink"   ){ dialogShow_Spr_1_ = array_Spr_Idle_1_[dialogIndex];         }	

	  // person 2 talking  		
		if(dialogSpr_State_2_ == "default" ){ dialogShow_Spr_2_ = array_Spr_Idle_Static_2_[dialogIndex];  }
		if(dialogSpr_State_2_ == "blink"   ){ dialogShow_Spr_2_ = array_Spr_Idle_2_[dialogIndex];         }			

	  // person 3 talking  		
		if(dialogSpr_State_3_ == "default" ){ dialogShow_Spr_3_ = array_Spr_Idle_Static_3_[dialogIndex];  }
		if(dialogSpr_State_3_ == "blink"   ){ dialogShow_Spr_3_ = array_Spr_Idle_3_[dialogIndex];         }	   
}

#endregion

	
// spr fade in!
if(dialogSprAlpha < 1){
dialogSprAlpha += dialogSprAlphaAdd;
 if(dialogSprAlpha >= 1){  dialogSprAlpha = 1; }
}
if(dialogSpr_X2 < 0){
  dialogSpr_X2 += dialogSpr_X2Add;
  
  if( dialogSpr_X2 >= 0 ){ dialogSpr_X2 = 0; }
}

