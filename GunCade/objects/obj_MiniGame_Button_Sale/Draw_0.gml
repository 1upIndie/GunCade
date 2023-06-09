/// @description 
if(canDraw == false){ exit; }
draw_self();

var txt = text_;
if(enableSale == false){  
	image_alpha = inactiveAlpha;
	txt = "";
	}


scribble(txt).draw(x+textX,y+textY);





if(obj_Control_All.debug == true){

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red,c_red,c_red,c_red, 1);

}
