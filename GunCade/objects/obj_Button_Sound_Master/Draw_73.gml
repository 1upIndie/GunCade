
/*
if ( isSetting == true){


draw_sprite_ext(backGr_Spr,   1, settings_SprX,settings_SprY, image_xscale, image_yscale, image_angle,  image_blend, backGr_Spr_Alpha);
draw_sprite_ext(backGr_Pulse, 1, settings_SprX,settings_SprY, image_xscale, image_yscale, image_angle,  image_blend, backGr_Pulse_Alpha);
draw_sprite_ext(backGr_Mask,  1, settings_SprX,settings_SprY, image_xscale, image_yscale, image_angle,  image_blend, backGr_Mask_Alpha);

draw_sprite_ext(settings_Spr,  settings_SprI, settings_SprX,settings_SprY, size_Default, size_Default, image_angle,  c_white, settings_SprAlpha);


// additional blinkers to indicate you can change
if(state == "hover"){
   draw_sprite_ext(spr_Ui_Button_Effect_Blinkers,  0, settings_SprX, settings_SprY, size_Default, size_Default, image_angle,  c_white, blinkers_Alpha);

  }
}