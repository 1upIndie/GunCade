/// @description 

if ( canDraw == false ){ exit; }
if( canPress  == false){ exit; }


 _channelGlowTimer   += 1/ _channelGlowTimerMax;
 _channelWobbleTimer += 1/ _channelWobbleTimerMax; 
 
 if(_channelGlowTimer   >= 1){ _channelGlowTimer   = 0; }
 if(_channelWobbleTimer >= 1){ _channelWobbleTimer = 0; }
 
 
var _valGlow   = animcurve_channel_evaluate(_channelGlow  , _channelGlowTimer);
var _valWobble = animcurve_channel_evaluate(_channelWobble, _channelWobbleTimer);

image_xscale = startScale + _valWobble;
image_yscale = startScale + _valWobble;

// apply
var glowAlpha = _valGlow-0.2;

draw_self();
draw_sprite_ext(sprite_index,1, x,y, image_xscale, image_yscale, 0, c_white, glowAlpha);