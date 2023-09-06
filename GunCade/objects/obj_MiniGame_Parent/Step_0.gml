/// @description 

if (update == true){  }

// update only for addons/attachments
if ( AdditionalTxt_Update == true ){ AdditionalTxt_Update = false; event_user(3); }


// input cooldown
if (inputCoolDown == true){

  inputCoolDown_Timer--; 
  if ( inputCoolDown_Timer <= 0 ){
       inputCoolDown_Timer = inputCoolDown_Time;
	   inputCoolDown = false;
  } 
}


