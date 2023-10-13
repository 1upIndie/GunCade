/// @description 

 camX  = camera_get_view_x(view_camera[0] );
 camY  = camera_get_view_y(view_camera[0] );

 camWidth  = camera_get_view_width(view_camera[0] );
 camHeight = camera_get_view_height(view_camera[0] );

x = camX + (camWidth/2);
y = camY -10;



var scaleSet = 1.5;
image_xscale = scaleSet;
image_yscale = scaleSet;
alarm[0] = 2;
