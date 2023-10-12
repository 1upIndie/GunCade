/// @description 
scr_PlaySound( snd_DayIntro_HeartBeat, 1);


canDraw = false;
alarm[0] = 3;
spr_DayHeader = spr_Effect_DayIntro_Day;
spr_DaySub    = spr_Effect_DayIntro_DaySub;



spr_DayHeader_Y    = 260;
spr_DayHeaderSub_Y = 420;

spr_DayHeader_ScaleX = 1;
spr_DayHeader_ScaleY = 1;

spr_DayHeaderSub_ScaleX = 1;
spr_DayHeaderSub_ScaleY = 1;


spr_DayHeader_Alpha    = 1;
spr_DayHeaderSub_Alpha = 0;


state = "stick around"; // stick around, fade in, stick around2, fade out
 
state_StickAround_Timer   = round(2 * 60);
state_StickAround2_Timer   = round(2.5 * 60);


// animation fade in
channel = animcurve_get_channel(aniCurve_Intro_FadeIn, 0);

fade_I      = 0;
fade_ITotal = round(3.5 * 60);


indexSet = obj_Control_All.currentCutscene_DAY - 101;



// failsave! for now!
if( indexSet > 2){ indexSet = 2;}

