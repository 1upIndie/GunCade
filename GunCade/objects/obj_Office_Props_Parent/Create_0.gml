/// @description 


office_Index = 0; // important!

canDraw = false;
isBaught = false;

// to draw!
image_index = 1;
 alphaBaught_False = 0.6;
 alphaBaught_True  = 0.9; 


alarm[0] = 3;

alpha_AniCurve   = animcurve_get_channel( aniCurve_Office_Gold_Glow, 0 );
alphaSet = 0;


alphaSet_I = 0;
alphaSet_ITimeMax = 160;


// hover over
hoverOver     = false;
hoverOver_Spr = spr_Nothing;
hoverOver_Line_Alpha  =  0.8;
hoverOver_Line_Width  =  3;

hoverOver_Center_X = 0;
hoverOver_Center_Y = 0;

hoverOver_X = 0;
hoverOver_Y = 0;

hoverOver_Price = 1;
 hoverOver_PriceTXT = 1;
 hoverOver_Price_X  = 0; // set in alarm 0
 hoverOver_Price_Y  = -50; 
 
 prefixCash_ =  obj_Control_All.textDetail_CostOfficePrefix;
 suffixCash_ =  obj_Control_All.textDetail_CostOfficeSuffix; 
 
 
 
 // animate with bounce
 animate = false;
  
 save_Xscale = image_xscale;
 save_Yscale = image_yscale;

 bounce_AniCurve  = animcurve_get_channel( aniCurve_CharPopIn_Bounce, 0 );
 bounceSet_I      = 0;
 bounceSet_ITime  = 110; 




