/// @description set

alarm[1] = 50; // one second delay
if(field_Type == 2){

var yy = 20;
var xx = 325;
  spr_Part_X[1] = viewX + 35;
  spr_Part_X[2] = spr_Part_X[1] + xx;


  spr_Backgr_X[1] = viewX + 35;  
  spr_Backgr_X[2] = spr_Backgr_X[1] + xx;  
  spr_Backgr_Y    = viewY + yy;
  
 
 spr_Blink_X[1] = viewX + 35; 
 spr_Blink_X[2] = spr_Blink_X[1] + xx;  
 spr_Blink_Y    = viewY + yy;
}