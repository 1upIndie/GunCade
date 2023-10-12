/// @description 

 camX  = camera_get_view_x(view_camera[0] );
 camY  = camera_get_view_y(view_camera[0] );

 camWidth  = camera_get_view_width(view_camera[0] );
 camHeight = camera_get_view_height(view_camera[0] );




#region parallax

// parallax
parallax_X = 50;
parallax_Y = 160;

  parallaxXLerp  = 0.8;
  parallaxLerped = 0; // value to be constantly set  
 parallaxXMax = 5;
 

 
#endregion

var scaleSet = 0.9;
image_xscale = scaleSet;
image_yscale = scaleSet + 0.05;
alarm[0] = 3;

alarm1_TimeSpawnResult = 50;
