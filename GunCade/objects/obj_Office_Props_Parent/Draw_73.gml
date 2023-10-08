/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben




if(hoverOver == true){
	var popX = obj_Office_Bgr.x - ( (obj_Office_Bgr.sprite_width)/2) + (hoverOver_X * obj_Office_Bgr.image_xscale);
	var popY = obj_Office_Bgr.y  + ( hoverOver_Y * obj_Office_Bgr.image_xscale);	
	
  draw_sprite_ext(hoverOver_Spr,0, popX, popY, obj_Office_Bgr.image_xscale,obj_Office_Bgr.image_yscale,0 , c_white, 1 );
  
  
  // not baught? show price!
if ( isBaught == false){

    scribble( hoverOver_PriceTXT ).draw( x + hoverOver_Price_X, y + hoverOver_Price_Y );
  }
}