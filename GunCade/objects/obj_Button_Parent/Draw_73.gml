if ( isSetting == true){

draw_sprite_ext( settings_Spr, settings_SprI, settings_SprX, settings_SprY, size_Default,size_Default, 0, c_white, settings_SprAlpha  );


draw_sprite_ext(backGr_Spr,   1, x,y, image_xscale, image_yscale, image_angle,  image_blend, backGr_Spr_Alpha);
draw_sprite_ext(backGr_Pulse, 1, x,y, image_xscale, image_yscale, image_angle,  image_blend, backGr_Pulse_Alpha);
draw_sprite_ext(backGr_Mask,  1, x,y, image_xscale, image_yscale, image_angle,  image_blend, backGr_Mask_Alpha);

draw_sprite_ext(backGr_Mask,  1, x,y, image_xscale, image_yscale, image_angle,  image_blend, settings_SprAlpha);

}