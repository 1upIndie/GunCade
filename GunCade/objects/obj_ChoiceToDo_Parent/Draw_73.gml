/// @description draw


if (field_Type == 2){

// draw regular background image!
draw_sprite_ext( spr_Backgr, 0, spr_Backgr_X[1], spr_Backgr_Y,  spr_Backgr_ScaleWidht, spr_Backgr_ScaleHeight, 0, c_white, 1);
draw_sprite_ext( spr_Backgr, 0, spr_Backgr_X[2], spr_Backgr_Y,  spr_Backgr_ScaleWidht, spr_Backgr_ScaleHeight, 0, c_white, 1);


 // blinking background background
  if(hoverOver == 1){   draw_sprite_ext( spr_Blink, 0, spr_Blink_X[1], spr_Blink_Y,  spr_Blink_ScaleWidht, spr_Blink_ScaleHeight, 0, c_orange, alphaBlink); }
  if(hoverOver == 2){   draw_sprite_ext( spr_Blink, 0, spr_Blink_X[2], spr_Blink_Y,  spr_Blink_ScaleWidht, spr_Blink_ScaleHeight, 0, c_orange, alphaBlink); }
}


if(obj_Control_All.debug == true){
	
	draw_rectangle_color(spr_Blink_X[1], spr_Blink_Y, spr_Blink_X[1]+spr_Blink_ScaleWidht, spr_Blink_Y+spr_Blink_ScaleHeight, c_purple,c_purple, c_purple, c_purple, 1);
}

	draw_rectangle_color(spr_Blink_X[1], spr_Blink_Y, spr_Blink_X[1]+spr_Blink_ScaleWidht, spr_Blink_Y+spr_Blink_ScaleHeight, c_purple,c_purple, c_purple, c_purple, 1);
	draw_rectangle_color(spr_Blink_X[2], spr_Blink_Y, spr_Blink_X[2]+spr_Blink_ScaleWidht, spr_Blink_Y+spr_Blink_ScaleHeight, c_purple,c_purple, c_purple, c_purple, 1);	

var txt = "hover: " + string(hoverOver);
draw_text(spr_Part_X[1] +40, spr_Backgr_Y+90, txt );