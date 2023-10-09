/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


if(canDraw == false){ exit; }
 
 draw_sprite_ext(spr_Office_Result_BgrHeader,0, x,y+headerY, image_xscale*headerScale,image_yscale*headerScale,0, c_white, 1 ); 
 draw_self();


if( state == "pop in" ){ 
	
	scale_AniCurve_I	+= 1/scale_AniCurve_Time;
	if(scale_AniCurve_I >= 1){  scale_AniCurve_I = 1;
		state = "draw value all"; }
	
var _val = animcurve_channel_evaluate(  scale_AniCurve, scale_AniCurve_I  );
	image_xscale = _val * image_xscaleFin;
	image_yscale = _val * image_yscaleFin;	
    headerY      = _val * headerYFin; 
}

 
if( state == "draw value all" ){ 
  var xx = x + x_TopLeft;
  var yy = y + y_TopLeft;  
  
  // draw left txt
  scribble( draw_Txt_Left_Value[1] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[1] );
  scribble( draw_Txt_Left_Value[2] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[2] );
  
  scribble( draw_Txt_Left_Value[4] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[4] );  
  scribble( draw_Txt_Left_Value[5] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[5] );  
  scribble( draw_Txt_Left_Value[6] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[6] );  

  scribble( draw_Txt_Left_Value[8] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[8] );  


  // draw right txt
  scribble( draw_Txt_Right_Value[1] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[1] );
  scribble( draw_Txt_Right_Value[2] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[2] );
  
  scribble( draw_Txt_Right_Value[4] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[4] );  
  scribble( draw_Txt_Right_Value[5] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[5] );  
  scribble( draw_Txt_Right_Value[6] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[6] );  

  scribble( draw_Txt_Right_Value[8] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[8] );
  
  
  draw_sprite_ext(spr_Office_Result_Txt_Perfect,0, x + resultX,y+resultY,  resultScale,resultScale, 0, c_white, 1 );

}





///draw_text(x,y+150, state)