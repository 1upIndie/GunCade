/// @description 

if(canDraw == false){ exit; }

// background!
draw_sprite_ext(backGr_Spr,   0, x,y, image_xscale, image_yscale, image_angle,  image_blend, backGr_Spr_Alpha);
draw_sprite_ext(backGr_Pulse, 0, x,y, image_xscale, image_yscale, image_angle,  image_blend, backGr_Pulse_Alpha);
draw_sprite_ext(backGr_Mask,  0, x,y, image_xscale, image_yscale, image_angle,  image_blend, backGr_Mask_Alpha);

draw_self();



draw_sprite_ext(backGr_Mask,  0, x,y, image_xscale, image_yscale, image_angle,  image_blend, backGr_Mask_Alpha);

if(obj_Control_All.debug == true){

//draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 0);
}



