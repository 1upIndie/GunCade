/// @description 
if ( canDraw == false ){ exit; }

   draw_self();
   
  #region not baught -> animate golden
  #endregion 
   if( isBaught == false){
	   
	 alphaSet_I	+= 1/alphaSet_ITimeMax;
	
var _val = animcurve_channel_evaluate(  alpha_AniCurve, alphaSet_I  );

   alphaSet = _val;
   
   if( alphaSet_I >= 1 ){ alphaSet_I = 0;  }
  
	   	   
     draw_sprite_ext(sprite_index, 0, x,y, image_xscale, image_yscale, 0, image_blend, alphaSet );   
   }
   
   
  // hover over
   hoverOver = false;
  if (mouse_x > bbox_left and mouse_x <= bbox_right){
     if (mouse_y > bbox_top and mouse_y <= bbox_bottom){  
        
		hoverOver = true;
  }}


