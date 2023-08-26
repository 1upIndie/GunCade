/// @description 


state = ""; // idle, hover

canClick = true;

size_Default   = 1;

size_Hover     = 0.15;
size_InActive  = 0;


size_AniCurve      = animcurve_get_channel( aniCurve_FadeIn, 0 );
size_AniCurve_I    = 0;
size_AniCurve_Time = 30;



// for settings only
isSetting = false;
settings_Spr      = spr_Nothing;
settings_SprI     = 0;
settings_SprAlpha = 0.95;

settings_SprX = x + 120;
settings_SprY = y;


