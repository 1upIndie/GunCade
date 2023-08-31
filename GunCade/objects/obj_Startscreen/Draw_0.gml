/// @description 



var buffer = 15;
// draw character

var centerX = camX + (camWidth/2);
var startY  = camY + spr_CharY;


//draw_sprite_stretched(spr_Ui_Startscreen_Bgr,0, camX-buffer, camY-buffer, camWidth + (2*buffer), camHeight + (2*buffer)  );


draw_sprite_ext(spr_Char[1], 0, centerX+sprMoveX, startY, spr_Scale, spr_Scale, 0, c_white, spr_CharAlpha[1]   );
draw_sprite_ext(spr_Char[2], 0, centerX+sprMoveX, startY, spr_Scale, spr_Scale, 0, c_white, spr_CharAlpha[2]   );
draw_sprite_ext(spr_Char[3], 0, centerX+sprMoveX, startY, spr_Scale, spr_Scale, 0, c_white, spr_CharAlpha[3]   );

var indexSpr_Demo = 0;
var checkDemo = obj_Control_All.demo;
if(checkDemo == 1){ indexSpr_Demo = 1; }

draw_sprite_ext(spr_Logo, indexSpr_Demo, centerX+sprMoveX, startY+spr_LogoY, spr_ScaleLogo, spr_ScaleLogo, 0, c_white, spr_CharAlpha[4]   );