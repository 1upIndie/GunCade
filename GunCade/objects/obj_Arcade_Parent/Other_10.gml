/// @description set


if ( sprite_index == spr_Startscreen){ 
	 sprite_index = spr_Gameplay;
	 alarm[0] = random_range( timerGameplay_Min, timerGameplay_Max );
	
	} else {
	sprite_index = spr_Startscreen;
	
	alarm[0] = random_range( timerStartScreen_Min, timerStartScreen_Max );
	}

