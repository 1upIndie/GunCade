/// @description Hover

// too small?
if( image_xscale <= (size_Default + size_Hover) ){


size_AniCurve_I	+= 1/size_AniCurve_Time;
 size_AniCurve_I  = clamp(size_AniCurve_I, 0, 1);
 
var _val = animcurve_channel_evaluate(  size_AniCurve, size_AniCurve_I  );


image_xscale = size_Default + (_val * size_Hover);
image_yscale = size_Default + (_val * size_Hover);
}