/// @description blink


if(dialogSprIndex_3_ < dialogSprIndexMax){

    dialogSprIndex_3_++;

} else {
	dialogSprIndex_3_ = 0;
	dialogSpr_State_3_ = "default";
}




    alarm[10] = dialogSpr_State_Alarm10_BlinkTime;
