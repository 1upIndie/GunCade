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


// tv only!!
if(dialogShow_Spr_3_ != spr_Nothing){ 

 draw_sprite_ext(dialogShow_Spr_3_, dialogSprIndex_3_, camX + dialogSpr_NpcX_3_ + dialogSpr_X2 + introExtroX[3],  camY + camHeight + dialogSprTV_Y,  dialogScale[3], dialogScale[3], 0, c_white,  dialogSprAlpha[3] ); }



// vertical right black box
if(isNews == false){
	
draw_sprite_ext(spr_Ui_BalkenNew_1px, 0, camX + camWidth +  ui_BlackBox_TV_Radio_X, camY -50, ui_BlackBox_TV_Radio_Scale, 5000, 0, ui_BlackBoxVerticalRightCol, 1  );
}


// debug
var debugTxt = "Height: " + string(obj_Workspace_Bgr.tvHeight);
draw_text(camX+140,camY+90, debugTxt)
