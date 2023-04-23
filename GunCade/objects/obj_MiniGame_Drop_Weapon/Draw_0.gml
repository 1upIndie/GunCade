/// @description 


if(state == "blink"){
blink_Pos    += 1/blink_total;
if(blink_Pos >= 1) { blink_Pos = 0; }

var val = animcurve_channel_evaluate(_channel, blink_Pos);

draw_self();

draw_sprite_ext(spr_MiniGame_Pistol_Empty,0, x,y,weapon_XYscale, weapon_XYscale, 0, c_white, val  );


}