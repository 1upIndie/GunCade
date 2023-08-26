/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


 camX  = camera_get_view_x(view_camera[0] );
 camY  = camera_get_view_y(view_camera[0] );

buttonX = 110;

var startY      = 50;
var startYStack = 58; 
buttonY[1] = startY + (0 * startYStack);
buttonY[2] = startY + (1 * startYStack);
buttonY[3] = startY + (2 * startYStack);
buttonY[4] = startY + (3 * startYStack);
buttonY[5] = startY + (4 * startYStack);

// fill in part in alarm event ! mini delay to have no conflict
alarm[0] = 2;
