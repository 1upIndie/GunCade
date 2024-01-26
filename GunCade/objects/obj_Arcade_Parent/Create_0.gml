/// @description 
image_alpha = 0.6;

timerStartScreen_Min = (6 * 60);
timerStartScreen_Max = (8 * 60);

timerGameplay_Min = (15 * 60);
timerGameplay_Max = (20 * 60);

spr_Startscreen  = spr_Nothing;
spr_Gameplay     = spr_Nothing;

alarm[0] = random_range( timerStartScreen_Min, timerStartScreen_Max );

alarm[1] = 4;