/// @description 


state = ""; // idle, hover
canDraw = true;

alarm[0] = round( 0.4 * 60);
canClick = false;

disable = true;

size_Default   = 0.4;
 image_xscale = size_Default;
 image_yscale = size_Default; 

size_Hover     = 0.05;
size_InActive  = 0;


size_AniCurve      = animcurve_get_channel( aniCurve_FadeIn, 0 );
size_AniCurve_I    = 0;
size_AniCurve_Time = 30;


/// drawing
backGr_Spr   = spr_Ui_Button_Effect_Bgr;
backGr_Pulse = spr_Ui_Button_Effect_Pulse;
backGr_Mask  = spr_Ui_Button_Effect_Mask;




 backGr_Spr_Alpha   = 1;
 backGr_Pulse_Alpha = 0;
 backGr_Mask_Alpha  = 1;

timer_Pulse   = 3*60;
 bgr_AniCurve_Pulse     = animcurve_get_channel( aniCurve_Btn_Pulse, 0 );
 bgr_AniCurve_Pulse_I   = 0;

timer_Mask   = 3*60;
 bgr_AniCurve_Mask     = animcurve_get_channel( aniCurve_Btn_Mask, 0 );
 bgr_AniCurve_Mask_I = 0;


// blinkers
 blinkers_Time = 10;
 blinkers_Timer = blinkers_Time;
 blinkers_Alpha = 1;


// for settings only
isSetting = false;
settings_Spr      = spr_Nothing;
settings_SprI     = 0;
settings_SprAlpha = 0.95;

settings_SprX = x + 120;
settings_SprY = y;


// sound
sound_Left  = snd_MenueSfx_Click;
sound_Right = snd_MenueSfx_Reduce;


