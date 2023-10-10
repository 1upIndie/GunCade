
// Inherit the parent event

if ( state == "stick around"){
	alphaSet = 1;
	stickAroundTimer--;
	if(stickAroundTimer <= 0){ state = "fade out";  }

}

// get lighter
if (state == "fade out"){

	channelTimer  -= (1/channelTimeFadeOut);
	if(channelTimer <= 0){  state = "jump room"; event_user(0); }
}





// draw in any case
var camX = camera_get_view_x( view_camera[0] ) + (camera_get_view_width( view_camera[0] )/2);
var camY = camera_get_view_y( view_camera[0] ) + (camera_get_view_height( view_camera[0] )/2);


draw_sprite_ext(spr_Effect_Transition_Default,0, camX, camY,  50000,50000,  0, fadeColor, alphaSet);