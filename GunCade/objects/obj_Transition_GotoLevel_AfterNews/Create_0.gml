/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben



// Inherit the parent event
event_inherited();

state = "fade in";
_channel = animcurve_get_channel(aniCurve_Transition, 0);
channelTimeFadeIn  = round(1.5 * 60);
channelTimeFadeOut = round(1.5 * 60);
channelTimer = 0;

stickAroundTimer = round(0.7 * 60);

alphaSet = 0; 
fadeColor = c_white;
fadeColor = #11021F; // dark purple


levelJumpTo = noone;

// end command?