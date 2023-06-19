/// @description set

alarm[1] = 50; // one second delay
if(field_Type == 2){

var yy = 20;
var xx = 325;
  spr_Part_X[1] = viewX + 35;
  spr_Part_X[2] = spr_Part_X[1] + xx;
  spr_Part_Y    = viewY + yy;

  spr_Backgr_X[1] = viewX + 35;  
  spr_Backgr_X[2] = spr_Backgr_X[1] + xx;  
  spr_Backgr_Y    = viewY + yy;
  
 
 spr_Blink_X[1] = viewX + 35; 
 spr_Blink_X[2] = spr_Blink_X[1] + xx;  
 spr_Blink_Y    = viewY + yy;
 
 
 spr_PartText_X[1] = spr_Blink_X[1] + round(xx/2);
 spr_PartText_X[2] = spr_Blink_X[2] + round(xx/2);
 
 spr_PartText_Y    = spr_Blink_Y + 350;
}

// text set
var txt1 = text[1];
var txt2 = text[2];
var txt3 = text[3];
var txt4 = text[4];


text[1] = "[font_Cutscene_Name][scale, 0.9][c_white][fa_center]" + txt1 +"[/c][/scale]" ;
text[2] = "[font_Cutscene_Name][scale, 0.9][c_white][fa_center]" + txt2 +"[/c][/scale]" ;
text[3] = "[font_Cutscene_Name][scale, 0.9][c_white][fa_center]" + txt3 +"[/c][/scale]" ;
text[4] = "[font_Cutscene_Name][scale, 0.9][c_white][fa_center]" + txt4 +"[/c][/scale]" ;
