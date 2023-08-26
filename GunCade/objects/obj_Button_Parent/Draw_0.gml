/// @description 

draw_self();


if(obj_Control_All.debug == true){

draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 0);
}

if ( isSetting == true){

draw_sprite_ext( settings_Spr, settings_SprI, settings_SprX, settings_SprY, size_Default,size_Default, 0, c_white, settings_SprAlpha  );
}

