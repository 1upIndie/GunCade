/// @description 

event_inherited();


if(isBlocked == false){

if(state == "blink"){
	
	
blink_Pos    += 1/blink_total;
if(blink_Pos >= 1) { blink_Pos = 0; }

var val = animcurve_channel_evaluate(_channel, blink_Pos);

//draw_self();

draw_sprite_ext(sprite_index, 1, x,y,sizeX, sizeY, 0, c_white, val  );


    } else {
	
	// if not blinking, then it is locked
//image_alpha = 1;
draw_sprite_ext(sprite_index, 0, x,y,sizeX, sizeY, 0, c_white, 1  ); // is set!
    }

} // is blocked false end
/////////////////////////////////////////

if(isBlocked == true){
	
draw_sprite_ext(spr_MiniGame_Blocked, 0, x,y,sizeX, sizeY, 0, c_white, 1  );
	
}

