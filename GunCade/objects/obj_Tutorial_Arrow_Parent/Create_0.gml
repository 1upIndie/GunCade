/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


 size = 0.15;
 sizeSlim = 0.03;
image_xscale  =  size;
image_yscale  =  size;


_channel            = animcurve_get_channel(aniCurve_HoverOver, 0);
_channel_TimeTotal  = 2*60;
_channel_Timer      = 0;

setYX = 0;

start_X = x;
start_Y = y;

lenghtXY = 10;
// dir set

dir = "";