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
		
		var xx1 = x + (sprite_width/2);
		var yy1 = y + (sprite_height/2);		

			var popX = (obj_Office_Bgr.x - ( (obj_Office_Bgr.sprite_width)/2) + (hoverOver_X * obj_Office_Bgr.image_xscale)) + hoverOver_Center_X   ;
	        var popY = (obj_Office_Bgr.y  + ( hoverOver_Y * obj_Office_Bgr.image_xscale) ) + hoverOver_Center_Y;
		
        draw_set_alpha(hoverOver_Line_Alpha);
		draw_line_width_color( xx1, yy1, popX, popY, hoverOver_Line_Width, c_white, c_white );
        draw_set_alpha(1);		
  }}


