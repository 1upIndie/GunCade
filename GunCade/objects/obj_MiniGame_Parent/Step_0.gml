/// @description 

if (update == true){


}


// input cooldown
if (inputCoolDown == true){

  inputCoolDown_Timer--; 
  if ( inputCoolDown_Timer <= 0 ){
       inputCoolDown_Timer = inputCoolDown_Time;
	   inputCoolDown = false;
  } 
}