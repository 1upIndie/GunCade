/// @description 
draw_self();

scribble(text_).draw(x+textX,y+textY);

if(obj_Control_All.debug == true){

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red,c_red,c_red,c_red, 1);
}

