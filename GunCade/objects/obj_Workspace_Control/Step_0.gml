/// @description 
 camX        = camera_get_view_x( view_camera[0] );
 camY        = camera_get_view_y( view_camera[0] );
 camWidth    = camera_get_view_width( view_camera[0] );
 camHeight   = camera_get_view_height( view_camera[0] );


if(override == true){
event_user(1);
exit;
}

// check for current state
var typeWriterPosition = typist.get_state();


// button to skip
var buttonSkip = 0;
if(blockInput == false){
	buttonSkip = scr_InputCheck( "any key released" );  


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


#region active person resize, extro intro


var active   = 1;
var passive1 = 2;
var passive2 = 3;

 regularDialog = false;

if(array_Spr_Talk_1_IntroExtro[dialogIndex] == "" and array_Spr_Talk_2_IntroExtro[dialogIndex] == "" and array_Spr_Talk_3_IntroExtro[dialogIndex] == ""){ regularDialog = true;  }


// default regular dialog
if(regularDialog == true){
if(array_NpcTalking[dialogIndex] == 1){ active   = 1; passive1 = 2; passive2 = 3;  }
if(array_NpcTalking[dialogIndex] == 2){ active   = 2; passive1 = 1; passive2 = 3;  }
if(array_NpcTalking[dialogIndex] == 3){ active   = 3; passive1 = 1; passive2 = 2;  } 

  if(dialogScale[active]   < dialogScale_Active ){ dialogScale[active]   += dialogScale_AddSub; dialogSprAlpha[active] = 1;  }
  if(dialogScale[passive1] > dialogScale_Passive){ dialogScale[passive1] -= dialogScale_AddSub; dialogSprAlpha[passive1] = dialogSprAlphaPassive;  }
  if(dialogScale[passive2] > dialogScale_Passive){ dialogScale[passive2] -= dialogScale_AddSub; dialogSprAlpha[passive2] = dialogSprAlphaPassive;  }
  

}  


if(regularDialog == false){
	
#region enter default! coming from left side


	if( array_Spr_Talk_1_IntroExtro[dialogIndex] == "enter default"){
		if(setOnce_Enter[1] == false){  setOnce_Enter[1] = true; introExtroX[1] = intro_XStart;  }
		
		// move!
		if(introExtroX[1] < 0 ){ introExtroX[1] += intro_XAdd;  }
		introExtroX[1] = clamp(introExtroX[1],intro_XStart, 0);
		}

	
	if( array_Spr_Talk_2_IntroExtro[dialogIndex] == "enter default"){
		if(setOnce_Enter[2] == false){  setOnce_Enter[2] = true; introExtroX[2] = intro_XStart;  }
		
		// move!
		if(introExtroX[2] < 0 ){ introExtroX[2] += intro_XAdd;  }
		introExtroX[2] = clamp(introExtroX[2],intro_XStart, 0);
		}
	
	if( array_Spr_Talk_3_IntroExtro[dialogIndex] == "enter default"){
		if(setOnce_Enter[3] == false){  setOnce_Enter[3] = true; introExtroX[3] = intro_XStart;  }
		
		// move!
		if(introExtroX[3] < 0 ){ introExtroX[3] += intro_XAdd;  }
		introExtroX[3] = clamp(introExtroX[3],intro_XStart, 0);
		}
#endregion


#region exit default! going to left side

	if( array_Spr_Talk_1_IntroExtro[dialogIndex] == "exit default"){
		if(setOnce_Enter[1] == false){  setOnce_Enter[1] = true; introExtroX[1] = 0;  }   
		
		// move!
		if(introExtroX[1] > intro_XStart ){ introExtroX[1] -= intro_XAdd; }
		introExtroX[1] = clamp(introExtroX[1],intro_XStart, 0);
		}	

	if( array_Spr_Talk_2_IntroExtro[dialogIndex] == "exit default"){
		if(setOnce_Enter[2] == false){  setOnce_Enter[2] = true; introExtroX[2] = 0;  }  
		
		// move!
		if(introExtroX[2] > intro_XStart ){ introExtroX[2] -= intro_XAdd; }
		introExtroX[2] = clamp(introExtroX[2],intro_XStart, 0);
		}	


	if( array_Spr_Talk_3_IntroExtro[dialogIndex] == "exit default"){
		if(setOnce_Enter[3] == false){  setOnce_Enter[3] = true;   introExtroX[3] = 0;  }
		
		// move!
		if(introExtroX[3] > intro_XStart ){ introExtroX[3] -= intro_XAdd; }
		introExtroX[3] = clamp(introExtroX[3],intro_XStart, 0);
		}	
#endregion	


#region enter from  right side
   if( array_Spr_Talk_1_IntroExtro[dialogIndex] == "enter right"){
		if(setOnce_Enter[1] == false){  setOnce_Enter[1] = true; introExtroX[1] = intro_XStartRight;  }
		
		// move!
		if(introExtroX[1] > 0 ){ introExtroX[1] -= intro_XAdd;  }
		introExtroX[1] = clamp(introExtroX[1], 0, intro_XStartRight);
		}

	
	if( array_Spr_Talk_2_IntroExtro[dialogIndex] == "enter right"){
		if(setOnce_Enter[2] == false){  setOnce_Enter[2] = true; introExtroX[2] = intro_XStartRight;  }
		
		// move!
		if(introExtroX[2] < 0 ){ introExtroX[2] -= intro_XAdd;  }
		introExtroX[2] = clamp(introExtroX[2],0, intro_XStartRight);
		}
	
	if( array_Spr_Talk_3_IntroExtro[dialogIndex] == "enter right"){
		if(setOnce_Enter[3] == false){  setOnce_Enter[3] = true; introExtroX[3] = intro_XStartRight;  }
		
		// move!
		if(introExtroX[3] < 0 ){ introExtroX[3] -= intro_XAdd;  }
		introExtroX[3] = clamp(introExtroX[3],0, intro_XStartRight);
		}
#endregion


#region exit  from  right side

	if( array_Spr_Talk_1_IntroExtro[dialogIndex] == "exit right"){
		if(setOnce_Enter[1] == false){  setOnce_Enter[1] = true; introExtroX[1] = 0;  }
		
		// move!
		if(introExtroX[1] < intro_XStartRight ){ introExtroX[1] += intro_XAdd; }
		introExtroX[1] = clamp(introExtroX[1],0, intro_XStartRight);
		}	

	if( array_Spr_Talk_2_IntroExtro[dialogIndex] == "exit right"){
		if(setOnce_Enter[2] == false){  setOnce_Enter[2] = true; introExtroX[2] = 0;  }
		
		// move!
		if(introExtroX[2] < intro_XStartRight ){ introExtroX[2] += intro_XAdd; }
		introExtroX[2] = clamp(introExtroX[2],0, intro_XStartRight);
		}	


	if( array_Spr_Talk_3_IntroExtro[dialogIndex] == "exit right"){
		if(setOnce_Enter[3] == false){  setOnce_Enter[3] = true; introExtroX[3] = 0;  }
		
		// move!
		if(introExtroX[3] < intro_XStartRight ){ introExtroX[3] += intro_XAdd; }
		introExtroX[3] = clamp(introExtroX[3],0, intro_XStartRight);
		}	
#endregion	



#region enter shadow


	if( array_Spr_Talk_1_IntroExtro[dialogIndex] == "enter shadow"){
		if(setOnce_Enter[1] == false){  setOnce_Enter[1] = true; dialogSprAlpha[1] = 0;  }
		
		// move!
		if(introExtroX[1] < 1 ){ dialogSprAlpha[1] += intro_AlphaAdd;  }
		dialogSprAlpha[1] = clamp(dialogSprAlpha[2], 0, 1);
		}

	if( array_Spr_Talk_2_IntroExtro[dialogIndex] == "enter shadow"){
		if(setOnce_Enter[2] == false){  setOnce_Enter[2] = true; dialogSprAlpha[2] = 0;  }
		
		// move!
		if(introExtroX[2] < 1 ){ dialogSprAlpha[2] += intro_AlphaAdd;  }
		dialogSprAlpha[2] = clamp(dialogSprAlpha[2], 0, 1);
		}

	if( array_Spr_Talk_3_IntroExtro[dialogIndex] == "enter shadow"){
		if(setOnce_Enter[3] == false){  setOnce_Enter[3] = true; dialogSprAlpha[3] = 0;  }
		
		// move!
		if(introExtroX[3] < 1 ){ dialogSprAlpha[3] += intro_AlphaAdd;  }
		dialogSprAlpha[3] = clamp(dialogSprAlpha[3], 0, 1);
		}



#endregion
	
#region exit shadow


	if( array_Spr_Talk_1_IntroExtro[dialogIndex] == "exit shadow"){
		if(setOnce_Enter[1] == false){  setOnce_Enter[1] = true;   }
		
		// move!
		if(introExtroX[1] > 0 ){ dialogSprAlpha[1] -= intro_AlphaAdd;  }
		dialogSprAlpha[1] = clamp(dialogSprAlpha[2], 0, 1);
		}

	if( array_Spr_Talk_2_IntroExtro[dialogIndex] == "exit shadow"){
		if(setOnce_Enter[2] == false){  setOnce_Enter[2] = true;   }
		
		// move!
		if(introExtroX[2] > 0 ){ dialogSprAlpha[2] -= intro_AlphaAdd;  }
		dialogSprAlpha[2] = clamp(dialogSprAlpha[2], 0, 1);
		}

	if( array_Spr_Talk_3_IntroExtro[dialogIndex] == "exit shadow"){
		if(setOnce_Enter[3] == false){  setOnce_Enter[3] = true;   }
		
		// move!
		if(introExtroX[3] > 0 ){ dialogSprAlpha[3] -= intro_AlphaAdd;  }
		dialogSprAlpha[3] = clamp(dialogSprAlpha[3], 0, 1);
		}



#endregion	
} // end of regular dialog false

#endregion
	
#region hover over globally

hoverAlphaTimeSET += (1/hoverAlphaTime);
if(hoverAlphaTimeSET >= 1){ hoverAlphaTimeSET = 0; }
var _val = animcurve_channel_evaluate(hoverAlphachannel, hoverAlphaTimeSET);
hoverAlpha = _val;


#endregion
	
	
// spr fade in!
/*
if(dialogSprAlpha < 1){
dialogSprAlpha += dialogSprAlphaAdd;
 if(dialogSprAlpha >= 1){  dialogSprAlpha = 1; }
}
if(dialogSpr_X2 < 0){
  dialogSpr_X2 += dialogSpr_X2Add;
  
  if( dialogSpr_X2 >= 0 ){ dialogSpr_X2 = 0; }
}

*/