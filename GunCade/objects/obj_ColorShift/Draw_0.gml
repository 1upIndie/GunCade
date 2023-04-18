/// @description 



var camera_X      = camera_get_view_x(view_camera[0]);
var camera_Y      = camera_get_view_y(view_camera[0]);


hue += hueAdd;   // edit here
if (hue >255) {hue = 0; }

color1 = make_color_hsv(hue, sat, lum); // edit here

//draw_set_alpha(alphaSet);
//draw_rectangle_color(camera_X-buffer_, camera_Y-buffer_, 
  //                   camera_X + camera_Width+buffer_, camera_Y + camera_Height+buffer_,
    //                 color1, color1, color2, color2, 0

//);

draw_sprite_ext(spr_WhiteBox, 0, camera_X,camera_Y, 500,500, 0, color1 , alphaSet  );

//draw_set_alpha(1);