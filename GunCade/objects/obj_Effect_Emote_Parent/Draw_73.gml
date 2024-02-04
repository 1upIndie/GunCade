/// @description 

//draw_self();

hue += hueAdd;   // edit here
if (hue >255) {hue = 0; }

color1 = make_color_hsv(hue, sat, lum); // edit here


draw_self();
draw_sprite_ext(sprite_index, image_index, x,y, image_xscale, image_yscale, 0, color1 , alphaSet  );