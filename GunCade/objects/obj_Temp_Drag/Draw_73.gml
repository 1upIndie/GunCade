/// @description 

var alphaSet = 1;
if(canPlace == true){
blink_Pos    += 1/blink_total;
if(blink_Pos >= 1) { blink_Pos = 0; }

var val = animcurve_channel_evaluate(_channel, blink_Pos);

alphaSet = val;

} 

draw_self();
image_alpha = alphaSet;


if(obj_Control_All.debug == true){

draw_text(x,y, whatisIt);
//draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red,c_red,c_red,c_red, 1);
}