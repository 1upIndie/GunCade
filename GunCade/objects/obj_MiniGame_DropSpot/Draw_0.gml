draw_self();



var costsText =  obj_Control_All.textCosts_Prefix  + string(obj_MiniGame_Parent.costsTotal) + "$" +  obj_Control_All.textCosts_Suffix;

scribble(costsText).draw(x+45, y-50);


if(obj_Control_All.debug == true){

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red,c_red,c_red,c_red, 1);
}