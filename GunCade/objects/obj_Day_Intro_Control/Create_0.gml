/// @description 

canDraw = false;

spr_DayHeader = spr_Effect_DayIntro_Day1;
spr_DaySub    = spr_Effect_DayIntro_DaySub1;


spr_DayHeader_X = 0;
spr_DayHeader_Y = 0;
spr_DayHeaderSub_Y = 0;

spr_DayHeader_ScaleX = 1;
spr_DayHeader_ScaleY = 1;

spr_DayHeaderSub_ScaleX = 1;
spr_DayHeaderSub_ScaleY = 1;


spr_DayHeader_Alpha    = 1;
spr_DayHeaderSub_Alpha = 0;


state = "stick around"; // stick around, fade in, stick around2, fade out
 
state_StickAround_Timer   = round(1 * 60);
state_StickAround2_Timer   = round(1 * 60);


// animation fade in
channel = animcurve_get_channel(aniCurve_FadeExpo, 0);

fade_I      = 0;
fade_ITotal = round(1 * 60);


// get correct values

