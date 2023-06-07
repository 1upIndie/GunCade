/// @description 


draw_self(); // actually grabable area
// weapon
draw_sprite_ext(weaponSpr, 0, x+weaponSpr_XX,y+weaponSpr_YY, weaponSpr_Xscale, weaponSpr_Yscale, 0, c_white, 1 );

if(obj_Control_All.debug == true){

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_blue,c_red,c_red,c_blue, 1);
}