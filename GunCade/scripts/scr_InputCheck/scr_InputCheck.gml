
function scr_InputCheck( whatInput){

var returnValue = false;

var any =  keyboard_check_released( vk_anykey);

// mouse
var mouseL = mouse_check_button_released(mb_left);
var mouseR = mouse_check_button_released(mb_right);





///// released!
var any2 =  keyboard_check_released( vk_anykey);
// mouse
var mouseL2 = mouse_check_button_released(mb_left);
var mouseR2 = mouse_check_button_released(mb_right);


// almost other keys for dialog! -> exeption!
var dialogKeyOther_A = keyboard_check_released( ord("A"));
var dialogKeyOther_W = keyboard_check_released( ord("W"));
var dialogKeyOther_S = keyboard_check_released( ord("S"));
var dialogKeyOther_D = keyboard_check_released( ord("D"));

var dialogKeyOther_Up    = keyboard_check_released( vk_up);
var dialogKeyOther_Down  = keyboard_check_released( vk_down);
var dialogKeyOther_Right = keyboard_check_released( vk_right);
var dialogKeyOther_Left  = keyboard_check_released( vk_left);


if(whatInput == "dialog expetion keys"){

  if(dialogKeyOther_A == 1  or dialogKeyOther_W == 1    or dialogKeyOther_S == 1     or dialogKeyOther_D == 1
  or dialogKeyOther_Up == 1 or dialogKeyOther_Down == 1 or dialogKeyOther_Right == 1 or dialogKeyOther_Left == 1
  or mouseR2  
  ){ 
     returnValue = true;
       }

   }// end of any key


if(whatInput == "dialog almost any key"){

  if(any == 1 or mouseL == 1 ){
     returnValue = true;
       }

   }// end of any key
   
   
   

if(whatInput == "any key"){

  if(any == 1 or mouseL == 1 or mouseR == 1 ){
     returnValue = true;
       }

   }// end of any key


if(whatInput == "any key released"){

  if(any2 == 1 or mouseL2 == 1 or mouseR2 == 1 ){
     returnValue = true;
       }

   }// end of any key


return returnValue;
} // end of script