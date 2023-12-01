/// @description room jump


var roomJumpSet = roomToJump;

if(debug == true ){  roomJumpSet = roomToJump;  }


if(debug == false){   roomJumpSet = room_StartScreen;  }
	

  
  
 // override! 
	if (debug == false and demo == true and obj_Control_All.currentCutscene_DAY >= 104){ roomJumpSet = room_Nope; }
	if (debug == false and demo == true and obj_Control_All.currentCutscene_DAY >= 3 and obj_Control_All.currentCutscene_DAY <100 ){ roomJumpSet = room_Nope;  }	
	
	
room_goto(roomJumpSet);	
	
	