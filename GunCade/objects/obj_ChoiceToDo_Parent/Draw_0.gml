/// @description draw




// draw regular background image!
//draw_sprite_ext( spr_Backgr, 0, spr_Backgr_X[1], spr_Backgr_Y,  spr_Backgr_ScaleWidht, spr_Backgr_ScaleHeight, 0, c_white, 1);
//draw_sprite_ext( spr_Backgr, 0, spr_Backgr_X[2], spr_Backgr_Y,  spr_Backgr_ScaleWidht, spr_Backgr_ScaleHeight, 0, c_white, 1);


var size1 = 1; 
var colBlend = c_orange;

  //if(hoverOver[1] == 1){ xscaleSprCurrent[1]  =  hover_XscaleSpr; }
  //if(hoverOver[2] == 1){ xscaleSprCurrent[2]  =  hover_XscaleSpr; }
 viewX = camera_get_view_x(view_camera[0]);
 viewY = camera_get_view_y(view_camera[0]);
 

// draw background
 draw_sprite_ext( spr_Ui_BalkenNew_1px, 0, viewX, viewY,  hover_Xscale * 3, hover_Yscale * 3, 0, obj_Control_All.backgr_Dark_color, 1); 

if (field_Type == 2){
 draw_sprite_ext( spr_Part[1], 0, spr_Part_X[1] + sprWidth, spr_Part_Y,  xscaleSprCurrent[1], xscaleSprCurrent[1], 0, c_white, 1);  
 draw_sprite_ext( spr_Part[2], 0, spr_Part_X[2] + sprWidth, spr_Part_Y,  xscaleSprCurrent[2], xscaleSprCurrent[2], 0, c_white, 1);  

// draw the same but blink it!
var colBlend = c_orange;
  if(hoverOver[1] == 1){  draw_sprite_ext( sprHover, 0, spr_Part_X[1] + sprWidth, spr_Part_Y,  xscaleSprCurrent[1], xscaleSprCurrent[1], 0, colBlend, alphaBlink); }
  if(hoverOver[2] == 1){  draw_sprite_ext( sprHover, 0, spr_Part_X[2] + sprWidth, spr_Part_Y,  xscaleSprCurrent[2], xscaleSprCurrent[2], 0, colBlend, alphaBlink); }
}



if (field_Type == 4){
 draw_sprite_ext( spr_Part[1], 0, spr_Part_X[1] , spr_Part_Y,  xscaleSprCurrent[1], xscaleSprCurrent[1], 0, c_white, 1);  
 draw_sprite_ext( spr_Part[2], 0, spr_Part_X[2] , spr_Part_Y,  xscaleSprCurrent[2], xscaleSprCurrent[2], 0, c_white, 1);  
 draw_sprite_ext( spr_Part[3], 0, spr_Part_X[3] , spr_Part_Y,  xscaleSprCurrent[3], xscaleSprCurrent[3], 0, c_white, 1);  
 draw_sprite_ext( spr_Part[4], 0, spr_Part_X[4] , spr_Part_Y,  xscaleSprCurrent[4], xscaleSprCurrent[4], 0, c_white, 1);   
// draw the same but blink it!
var colBlend = c_orange;
  if(hoverOver[1] == 1){  draw_sprite_ext( sprHover, 0, spr_Part_X[1], spr_Part_Y,  xscaleSprCurrent[1], xscaleSprCurrent[1], 0, colBlend, alphaBlink); }
  if(hoverOver[2] == 1){  draw_sprite_ext( sprHover, 0, spr_Part_X[2], spr_Part_Y,  xscaleSprCurrent[2], xscaleSprCurrent[2], 0, colBlend, alphaBlink); }
  if(hoverOver[3] == 1){  draw_sprite_ext( sprHover, 0, spr_Part_X[3], spr_Part_Y,  xscaleSprCurrent[3], xscaleSprCurrent[3], 0, colBlend, alphaBlink); }
  if(hoverOver[4] == 1){  draw_sprite_ext( sprHover, 0, spr_Part_X[4], spr_Part_Y,  xscaleSprCurrent[4], xscaleSprCurrent[4], 0, colBlend, alphaBlink); }  
}






if(obj_Control_All.debug == true){
	
	//draw_rectangle_color(spr_Blink_X[1], spr_Blink_Y, spr_Blink_X[1]+spr_Blink_ScaleWidht, spr_Blink_Y+spr_Blink_ScaleHeight, c_purple,c_purple, c_purple, c_purple, 1);
}

	//draw_rectangle_color(spr_Blink_X[1], spr_Blink_Y, spr_Blink_X[1]+spr_Blink_ScaleWidht, spr_Blink_Y+spr_Blink_ScaleHeight, c_purple,c_purple, c_purple, c_purple, 1);
	//draw_rectangle_color(spr_Blink_X[2], spr_Blink_Y, spr_Blink_X[2]+spr_Blink_ScaleWidht, spr_Blink_Y+spr_Blink_ScaleHeight, c_purple,c_purple, c_purple, c_purple, 1);	

//var txt = "hover: " + string(hoverOver);
//draw_text(spr_Part_X[1] +40, spr_Backgr_Y+90, txt );