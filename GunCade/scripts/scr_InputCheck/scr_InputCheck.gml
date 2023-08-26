
function scr_InputCheck( whatInput){

var returnValue = false;

var any =  keyboard_check( vk_anykey);

// mouse
var mouseL = mouse_check_button(mb_left);
var mouseR = mouse_check_button(mb_right);





///// released!
var any2 =  keyboard_check_released( vk_anykey);
// mouse
var mouseL2 = mouse_check_button_released(mb_left);
var mouseR2 = mouse_check_button_released(mb_right);

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