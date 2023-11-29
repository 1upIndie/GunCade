/// @description 

alarm [0] = 2;
canInput = false; // blocker

// disable radio and tv
scr_RadioTv_Show( false, false );

// new!
 padding = 10;


sprWidth   =  (sprite_get_width(  spr_Choise_Day2_Clown_TakeBaton_No) / 2 );
sprHeight  =  (sprite_get_height( spr_Choise_Day2_Clown_TakeBaton_No) / 2 );

hover_XscaleSpr      = 1.1;
nohover_XscaleReduce = 0.01;
xscaleSprCurrent[1] = 1;
xscaleSprCurrent[2] = 1;
xscaleSprCurrent[3] = 1;
xscaleSprCurrent[4] = 1;

sprHover = spr_Choise_2Parts_HoverOver;

hover_Xscale = 440;
hover_Yscale = 500;


hover_AniCurve   = animcurve_get_channel( aniCurve_ChoiceBounce, 0 );
hover_Scale_I[1]  = 0;
hover_Scale_I[2]  = 0;
hover_Scale_I[3]  = 0;
hover_Scale_I[4]  = 0;
hover_Scale_IMax  = 30;

// end of new

skipPoint[1] = 0;
skipPoint[2] = 0;
skipPoint[3] = 0;
skipPoint[4] = 0;


hoverOver[1] = 0; // hover over field
hoverOver[2] = 0; // hover over field
hoverOver[3] = 0; // hover over field
hoverOver[4] = 0; // hover over field
 viewX = camera_get_view_x(view_camera[0]);
 viewY = camera_get_view_y(view_camera[0]);

// field size
alarm[0] = 4; // set!
field_Type = 2; // how many parts!


debug_Xscale = 450;
debug_Yscale = 550;

spr_Part[1] = spr_Nothing;
spr_Part[2] = spr_Nothing;
spr_Part[3] = spr_Nothing;
spr_Part[4] = spr_Nothing;

spr_Part_X[1] = viewX + 40;
spr_Part_X[2] = viewX + 310;
spr_Part_X[3] = viewX + 50;
spr_Part_X[4] = viewX + 50;

spr_Part_Y = 0;

spr_Part_Width  = 1.04;
spr_Part_Height = 1;


// effect blinking
blink_Pos   = 0;
blink_total = 240;
 _channel = animcurve_get_channel(aniCurve_Blink, 1);


blink_Color   = c_orange;
blink_NoColor = c_white;
alphaBlink      = 0;
  alphaBlinkMax = 0.2;

spr_Backgr = spr_Choise2_Bgr;
spr_Backgr_X[1] = spr_Part_X[1];
spr_Backgr_X[2] = spr_Part_X[2];
spr_Backgr_X[3] = spr_Part_X[3];
spr_Backgr_X[4] = spr_Part_X[4];
spr_Backgr_Y    =  spr_Part_Y;
spr_Backgr_ScaleWidht   = 1.01;
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

text[1] = "";
text[2] = "";
text[3] = "";
text[4] = ""; 
