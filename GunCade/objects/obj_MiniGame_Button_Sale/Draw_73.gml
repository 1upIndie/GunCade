/// @description 

if(canDraw == false){ exit; }
draw_self();


if(enableSale == false){  
	sprite_index = spr_Ui_Button_Empty;

	} else {
	sprite_index = spr_Ui_Button_Sale;	
	}



if(obj_Control_All.debug == true){

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red,c_red,c_red,c_red, 1);

}