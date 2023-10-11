/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben



// Inherit the parent event
event_inherited();

state = "fade in";
_channel = animcurve_get_channel(aniCurve_Transition, 0);
channel_I = 0;
channelTimeFadeIn  = 60;
channelTimeFadeOut = 30;
channelTimer = 0;

stickAroundTimer = 15;

alphaSet = 0; 
fadeColor = c_black;


levelJumpTo = noone;

// end command?