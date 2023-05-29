/// @description spr 2 index


if(dialogSprIndex_2_ < dialogSprIndexMax){

    dialogSprIndex_2_++;

} else {
	dialogSprIndex_2_ = 0;
	dialogSpr_State_2_ = "default";
}


    alarm[9] = dialogSpr_State_Alarm10_BlinkTime;
