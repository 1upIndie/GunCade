
// Inherit the parent event


toSkipTo_Index = 0;  // 0,1,...



state = "fade out";
_channel = animcurve_get_channel(aniCurve_Transition, 0);
channelTimeFadeIn  = 30;
channelTimeFadeOut = 30;
channelTimer = 0;

stickAroundTimer = 15;

alphaSet = 0; 
fadeColor = c_black;
