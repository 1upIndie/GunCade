/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

depth = -15000;
audio_stop_all();
obj_Radio.totalBlock = true;


scr_PlaySound( snd_Sfx_Shot, 0);
// Inherit the parent event
event_inherited();

state = "fade in";
_channel = animcurve_get_channel(aniCurve_Transition, 0);
channelTimeFadeIn  = round(4 * 60);
channelTimeFadeOut = round(1.5 * 60);
channelTimer = 0;

stickAroundTimer = round(1.5 * 60);

alphaSet = 0; 
fadeColor = c_red;
//fadeColor = #11021F; // dark purple

// end command?
command = "unblock";     // do on destruction
command_Inblack = ""; // do sneak in between
command_InblackOnce = false;


// mini timer to play heart beat
miniTimer     = 30;
miniTimerOnce = false;



