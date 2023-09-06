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


// fade out
state = "idle";

default_Time = round(5 * 60);
delayed_Time = round(6 * 60);

timer_Idle = default_Time;



alphaSub = 0.015;


// draw text?
draw_Sprite_Text = true;
 Sprite_Text_Spr = spr_Nothing;
 Sprite_Text_SprX = 0;
   Sprite_Text_SprXSide = 90;
 Sprite_Text_SprY = 0; 
    Sprite_Text_SprYUpDown = 40; 
 Sprite_Text_SprScale = 0.3;
 
 