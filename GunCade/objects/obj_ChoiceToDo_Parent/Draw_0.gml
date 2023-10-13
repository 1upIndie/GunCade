/// @description draw


if (field_Type == 2){

// draw regular background image!
//draw_sprite_ext( spr_Backgr, 0, spr_Backgr_X[1], spr_Backgr_Y,  spr_Backgr_ScaleWidht, spr_Backgr_ScaleHeight, 0, c_white, 1);
//draw_sprite_ext( spr_Backgr, 0, spr_Backgr_X[2], spr_Backgr_Y,  spr_Backgr_ScaleWidht, spr_Backgr_ScaleHeight, 0, c_white, 1);


var size1 = 1; var size2 = 1;


  //if(hoverOver[1] == 1){ xscaleSprCurrent[1]  =  hover_XscaleSpr; }
  //if(hoverOver[2] == 1){ xscaleSprCurrent[2]  =  hover_XscaleSpr; }
 viewX = camera_get_view_x(view_camera[0]);
 viewY = camera_get_view_y(view_camera[0]);
 

// draw background
 draw_sprite_ext( spr_Ui_BalkenNew_1px, 0, viewX, viewY,  hover_Xscale * 3, hover_Yscale * 3, 0, obj_Control_All.backgr_Dark_color, 1); 
 
 draw_sprite_ext( spr_Part[1], 0, spr_Part_X[1] + sprWidth, spr_Part_Y,  xscaleSprCurrent[1], xscaleSprCurrent[1], 0, c_white, 1);  
 draw_sprite_ext( spr_Part[2], 0, spr_Part_X[2] + sprWidth, spr_Part_Y,  xscaleSprCurrent[2], xscaleSprCurrent[2], 0, c_white, 1);  

// draw the same but blink it!
var colBlend = c_orange;
  if(hoverOver[1] == 1){  draw_sprite_ext( spr_Choise_Day2_HoverOver, 0, spr_Part_X[1] + sprWidth, spr_Part_Y,  xscaleSprCurrent[1], xscaleSprCurrent[1], 0, colBlend, alphaBlink); }
  if(hoverOver[2] == 1){  draw_sprite_ext( spr_Choise_Day2_HoverOver, 0, spr_Part_X[2] + sprWidth, spr_Part_Y,  xscaleSprCurrent[2], xscaleSprCurrent[2], 0, colBlend, alphaBlink); }
 
 // blinking background background 1px stretched
  //if(hoverOver == 1){   draw_sprite_ext( spr_Ui_BalkenNew_1px, 0, spr_Part_X[1], spr_Blink_Y,  hover_Xscale * xscaleSprCurrent[1], hover_Yscale * xscaleSprCurrent[1], 0, c_orange, alphaBlink); }
  //if(hoverOver == 2){   draw_sprite_ext( spr_Ui_BalkenNew_1px, 0, spr_Part_X[2], spr_Blink_Y,  hover_Xscale * xscaleSprCurrent[2], hover_Yscale * xscaleSprCurrent[2], 0, c_orange, alphaBlink); }


// debug
//draw_sprite_ext( spr_Ui_BalkenNew_1px, 0, spr_Backgr_X[1], spr_Backgr_Y,  debug_Xscale, debug_Yscale, 0, c_red, 0.8);
//draw_sprite_ext( spr_Ui_BalkenNew_1px, 0, spr_Backgr_X[2], spr_Backgr_Y,  debug_Xscale, debug_Yscale, 0, c_red, 0.8);


// draw text
//scribble(text[1]).draw(spr_PartText_X[1], spr_PartText_Y);
//scribble(text[2]).draw(spr_PartText_X[2], spr_PartText_Y);

}


if(obj_Control_All.debug == true){
	
	//draw_rectangle_color(spr_Blink_X[1], spr_Blink_Y, spr_Blink_X[1]+spr_Blink_ScaleWidht, spr_Blink_Y+spr_Blink_ScaleHeight, c_purple,c_purple, c_purple, c_purple, 1);
}

	//draw_rectangle_color(spr_Blink_X[1], spr_Blink_Y, spr_Blink_X[1]+spr_Blink_ScaleWidht, spr_Blink_Y+spr_Blink_ScaleHeight, c_purple,c_purple, c_purple, c_purple, 1);
	//draw_rectangle_color(spr_Blink_X[2], spr_Blink_Y, spr_Blink_X[2]+spr_Blink_ScaleWidht, spr_Blink_Y+spr_Blink_ScaleHeight, c_purple,c_purple, c_purple, c_purple, 1);	

//var txt = "hover: " + string(hoverOver);
//draw_text(spr_Part_X[1] +40, spr_Backgr_Y+90, txt );