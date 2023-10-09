/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben




draw_self();
delayTimer--;

	 alphaSet_I	+= 1/alphaSet_ITimeMax;
	
var _val = animcurve_channel_evaluate(  alpha_AniCurve, alphaSet_I  );

   alphaSet = _val;
   
   if( alphaSet_I >= 1 ){ alphaSet_I = 0;  }
   
      draw_sprite_ext(sprite_index, 0, x,y, image_xscale, image_yscale, 0, image_blend, alphaSet );   