/// @description 

if(drawOnScreen == false){ exit;  }


// var txt = "[font_Cutscene][scale, 1.5]End run[/scale]";

// draw tv

//draw_sprite_ext( spr_Dialog_Tv ,0, camX+350, camY+150, 0.35, 0.22, 0, c_white, 1);


// dialog spr
if(dialogShow_Spr_1_ != spr_Nothing){
 draw_sprite_ext(dialogShow_Spr_1_, dialogSprIndex_1_, camX + dialogSpr_NpcX_1_ + dialogSpr_X2,  camY + camHeight + dialogSpr_Y,  dialogScale, dialogScale, 0, c_white,  dialogSprAlpha ); }

if(dialogShow_Spr_2_ != spr_Nothing){
 draw_sprite_ext(dialogShow_Spr_2_, dialogSprIndex_2_, camX + dialogSpr_NpcX_2_ + dialogSpr_X2,  camY + camHeight + dialogSpr_Y,  dialogScale, dialogScale, 0, c_white,  dialogSprAlpha ); }

if(dialogShow_Spr_3_ != spr_Nothing){
 draw_sprite_ext(dialogShow_Spr_3_, dialogSprIndex_3_, camX + dialogSpr_NpcX_3_ + dialogSpr_X2,  camY + camHeight + dialogSpr_Y,  dialogScale, dialogScale, 0, c_white,  dialogSprAlpha ); }


// black background for text!
draw_sprite_ext(spr_BlackBox, 0, camX + (camWidth/2),  camY + camHeight + blackBoxY,  blackBoxScaleX, blackBoxScaleY, 0, c_black,  blackBoxAlpha );



// debug
//var debugTxt = string(dialogSpr_State_Timer) + "  :" + dialogSpr_State;
//draw_text(camX+50,camY+50, debugTxt)
