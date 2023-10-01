/// @description 

canPress = false;
timerEnable = round( 3*60);
alarm[0] = timerEnable;


 _channelGlow   = animcurve_get_channel(aniCurve_TVBnt_Glow, 0);
 _channelWobble = animcurve_get_channel(aniCurve_TVBnt_SizeWobble, 0); 
 
 _channelGlowTimer    = 0; 
 _channelGlowTimerMax = round(2 * 60); 
 
 _channelWobbleTimer    = 0; 
 _channelWobbleTimerMax = round(2 * 60);  
 
image_speed = 0;
//
channelScale = 0.1;
startScale = 1;
image_xscale = startScale;
image_yscale = startScale;