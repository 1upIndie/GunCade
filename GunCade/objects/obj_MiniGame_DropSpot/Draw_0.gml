draw_self();



var costsText =  obj_Control_All.textCosts_Prefix  + string(obj_MiniGame_Parent.current_Costs) + "$" +  obj_Control_All.textCosts_Suffix;

scribble(costsText).draw(x+45, y-50);


if(obj_Control_All.debug == true){

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_blue,c_red,c_blue,c_red, 1);
var wpX = x + 250;
var wpY = y + 10;
var wpIndex = "wpn: "+ string(save_Index_Weapon);
draw_text(wpX, wpY, wpIndex);

var attIndex = "att: "+ string(save_Index_Attachment);
draw_text(wpX, wpY+20, attIndex);

}