/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


var costsText =  obj_Control_All.textCostsMiniGame_Prefix  + string(current_Costs) + "$" +  obj_Control_All.textCostsMiniGame_Suffix;
var moneyX = obj_Control_All.moneyTxtX;
var moneyY = obj_Control_All.moneyTxtY[1];

scribble(costsText).draw( camX+moneyX, camY+moneyY);