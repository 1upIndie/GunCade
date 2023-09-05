/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


var costsText =  obj_Control_All.textCostsMiniGame_Prefix  + string(current_Costs) + "$" +  obj_Control_All.textCostsMiniGame_Suffix;
var moneyX = obj_Control_All.moneyTxtX;
var moneyY = moneyTxtY;

scribble(costsText).draw( camX+moneyX, camY+moneyY);


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