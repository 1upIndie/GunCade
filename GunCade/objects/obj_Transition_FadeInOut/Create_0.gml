/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

depth = - 15000;

// Inherit the parent event
event_inherited();

state = "fade in";
_channel = animcurve_get_channel(aniCurve_Transition, 0);
channelTimeFadeIn  = 30;
channelTimeFadeOut = 30;
channelTimer = 0;

stickAroundTimer = 15;

alphaSet = 0; 
fadeColor = c_black;


// end command?
command = "unblock";     // do on destruction
command_Inblack = ""; // do sneak in between
command_InblackOnce = false;
