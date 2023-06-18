/// @description 

// what choise inputs to use!


hoverOver = 0; // hover over field

 viewX = camera_get_view_x(view_camera[0]);
 viewY = camera_get_view_y(view_camera[0]);

// field size
alarm[0] = 4; // set!
field_Type = 2; // how many parts!


spr_Part[1] = spr_Nothing;
spr_Part[2] = spr_Nothing;
spr_Part[3] = spr_Nothing;
spr_Part[4] = spr_Nothing;

spr_Part_X[1] = viewX + 50;
spr_Part_X[2] = viewX + 310;
spr_Part_X[3] = viewX + 50;
spr_Part_X[4] = viewX + 50;

spr_Part_Y = 0;

spr_Part_Width  = 0;
spr_Part_Height = 0;


// effect blinking
blink_Pos   = 0;
blink_total = 180;
 _channel = animcurve_get_channel(aniCurve_Blink, 1);


blink_Color   = c_orange;
blink_NoColor = c_white;
alphaBlink      = 0;


spr_Backgr = spr_Choise2_Bgr;
spr_Backgr_X[1] = spr_Part_X[1];
spr_Backgr_X[2] = spr_Part_X[2];
spr_Backgr_X[3] = spr_Part_X[3];
spr_Backgr_X[4] = spr_Part_X[4];
spr_Backgr_Y    =  spr_Part_Y;
spr_Backgr_ScaleWidht   = 1;
spr_Backgr_ScaleHeight  = 2;


// blink part
spr_Blink = spr_1px;
spr_Blink_X[1] = spr_Part_X[1];
spr_Blink_X[2] = spr_Part_X[2];
spr_Blink_X[3] = spr_Part_X[3];
spr_Blink_X[4] = spr_Part_X[4];
spr_Blink_Y    =  spr_Part_Y;
spr_Blink_ScaleWidht   = 322;  // total 646
spr_Blink_ScaleHeight  = 420;  // total 420
  
  //
 
 // draw text if there is any
spr_PartText_X[1] = 0;
spr_PartText_X[2] = 0;
spr_PartText_X[3] = 0;
spr_PartText_X[4] = 0; 
 
spr_PartText_Y    = 0; 
spr_PartText_Size = 0.5;
 
