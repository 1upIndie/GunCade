/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// draw right area spr
//draw_sprite_ext( spr_Office_Result_Bgr, 0, camX + camWidth + bgrRight_X, camY + bgrRight_Y, bgrRight_ScaleX, bgrRight_ScaleY, 0, c_white, 1 );




var costsText =  obj_Control_All.textCostsMiniGame_Prefix  + "$" + string(current_Costs) + obj_Control_All.textCostsMiniGame_Suffix;
var moneyX = obj_Control_All.moneyTxtX;
var moneyY = moneyTxtY;


    if(current_Costs < 0 ){
	costsText = obj_Control_All.textCostsMiniGame_Prefix  +"-$" +  string(abs(current_Costs)) +  obj_Control_All.textCostsMiniGame_Suffix;
		
	}


scribble(costsText).draw( camX+ camWidth + money_X, camY+money_Y);


var prefix = "[font_Cutscene][scale, 0.6[#F9CE7B]";
var suffix = "[/scale][/c]";

var	 txtCost = obj_Control_All.array_DetailWeaponText[80].txt_Bill;

/*
array_AdditionalTxt[0] = txtCost;
array_AdditionalTxt[1] = txtCost;
array_AdditionalTxt[2] = txtCost;
array_AdditionalTxt[3] = txtCost;
array_AdditionalTxt[4] = txtCost;
array_AdditionalTxt[5] = txtCost;
*/


// draw additional
var array_L =  array_length( array_AdditionalTxt );
var additonal_Y = 0; // double use y + index

repeat( array_L ){
	
	var detailYY =  camY + additionalTxt_StartY + ( additonal_Y * additionalTxt_AddY);

scribble( array_AdditionalTxt[additonal_Y] ).draw( camX + additionalTxt_X, detailYY);

additonal_Y++;

}