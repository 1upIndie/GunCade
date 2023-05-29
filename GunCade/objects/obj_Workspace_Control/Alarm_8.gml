/// @description spr 1 index


if(dialogSprIndex_1_ < dialogSprIndexMax){

    dialogSprIndex_1_++;

} else {
	dialogSprIndex_1_ = 0;
	dialogSpr_State_1_ = "default";
}




    alarm[8] = dialogSpr_State_Alarm10_BlinkTime;
