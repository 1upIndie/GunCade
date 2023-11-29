/// @description set

alarm[1] = 50; // one second delay

 viewX = camera_get_view_x(view_camera[0]);
 viewY = camera_get_view_y(view_camera[0]);
  var centerX = viewX + (camera_get_view_width( view_camera[0] )/2);
  
if(field_Type == 2){

sprHover = spr_Choise_2Parts_HoverOver;


var yy = 20;
var xx = 325;

var padding = 10;


var leftX   = padding;
var rightX = 440;

spr_Backgr_X[1] = viewX + padding;
spr_Backgr_X[2] = spr_Backgr_X[1] + hover_Xscale+ padding;

 // spr_Backgr_X[1] = viewX + 35;  
 // spr_Backgr_X[2] = spr_Backgr_X[1] + xx;  
  spr_Backgr_Y    = viewY+padding;


  spr_Part_X[1] = viewX + leftX;
  spr_Part_X[2] = spr_Part_X[1]  + padding + rightX; 
  spr_Part_Y    = viewY + yy;



 
 
 spr_Blink_X[1] = viewX + 35; 
 spr_Blink_X[2] = spr_Blink_X[1] + xx;  
 spr_Blink_Y    = viewY + yy;
 
 
 spr_PartText_X[1] = spr_Blink_X[1] + round(xx/2);
 spr_PartText_X[2] = spr_Blink_X[2] + round(xx/2);
 
 spr_PartText_Y    = spr_Blink_Y + 350;
}


if(field_Type == 4){

sprHover = spr_Choise_4Parts_HoverOver;
hover_Xscale = 214;
hover_Yscale = 500;



var yy = 20;
var xx = 325;

var padding = -30;


var leftX   = padding;
var rightX = 440/2;

spr_Backgr_X[1] = viewX + padding;
spr_Backgr_X[2] = spr_Backgr_X[1] + hover_Xscale+ padding;
spr_Backgr_X[3] = spr_Backgr_X[2] + hover_Xscale+ padding;
spr_Backgr_X[4] = spr_Backgr_X[3] + hover_Xscale+ padding;

 // spr_Backgr_X[1] = viewX + 35;  
 // spr_Backgr_X[2] = spr_Backgr_X[1] + xx;  
  spr_Backgr_Y    = viewY+padding;

  var nextX  = 120;
  var nextXX = 360;
  spr_Part_X[1] = centerX - (nextXX);
  spr_Part_X[2] = centerX - (nextX ); 
  spr_Part_X[3] = centerX + (nextX );  
  spr_Part_X[4] = centerX + (nextXX); 
  spr_Part_Y    = viewY + yy;

// stretched more
var strech4X  = 1.0;
xscaleSprCurrent[1] = strech4X;
xscaleSprCurrent[2] = strech4X;
xscaleSprCurrent[3] = strech4X;
xscaleSprCurrent[4] = strech4X;
 
 
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
