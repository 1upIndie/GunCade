/// @description 

if(drawOnScreen == false){ exit;  }


// var txt = "[font_Cutscene][scale, 1.5]End run[/scale]";

// draw tv

//draw_sprite_ext( spr_Dialog_Tv ,0, camX+350, camY+150, 0.35, 0.22, 0, c_white, 1);

//apply correct size who is talking

if(dialogShow_Spr_1_ != spr_Nothing){ 
   	
 draw_sprite_ext(dialogShow_Spr_1_, dialogSprIndex_1_, camX + dialogSpr_NpcX_1_ + dialogSpr_X2 + introExtroX[1],  camY + camHeight + dialogSpr_Y,  dialogScale[1], dialogScale[1], 0, c_white,  dialogSprAlpha[1]  ); }

if(dialogShow_Spr_2_ != spr_Nothing){ 

 draw_sprite_ext(dialogShow_Spr_2_, dialogSprIndex_2_, camX + dialogSpr_NpcX_2_ + dialogSpr_X2 + introExtroX[2],  camY + camHeight + dialogSpr_Y,  dialogScale[2], dialogScale[2], 0, c_white,  dialogSprAlpha[2] ); }

if(dialogShow_Spr_3_ != spr_Nothing){ 

 draw_sprite_ext(dialogShow_Spr_3_, dialogSprIndex_3_, camX + dialogSpr_NpcX_3_ + dialogSpr_X2 + introExtroX[3],  camY + camHeight + dialogSpr_Y,  dialogScale[3], dialogScale[3], 0, c_white,  dialogSprAlpha[3] ); }



// vertical right black box
draw_sprite_ext(spr_Ui_BalkenNew_1px, 0, camX + ui_BlackBoxVerticalRightX, camY -50, ui_BlackBoxVerticalRightWidth, 5000, 0, ui_BlackBoxVerticalRightCol, 1  );



// debug
//var debugTxt = string(dialogSpr_State_Timer) + "  :" + dialogSpr_State;
//draw_text(camX+50,camY+50, debugTxt)
