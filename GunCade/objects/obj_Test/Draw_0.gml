/// @description 
var txt = "nope";
var count = 0;




if instance_exists(obj_Selected_WeaponDetailTxt){

txt = "Yes";


} else {  txt = "nope"; }

txt = obj_Control_All.setSeed;
draw_text(x,y, txt)