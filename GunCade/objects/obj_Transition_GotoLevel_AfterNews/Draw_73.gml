/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben



// Inherit the parent event
event_inherited();


if ( state == "stick around"){
	alphaSet = 1;
	stickAroundTimer--;
	if(stickAroundTimer <= 0){ if(levelJumpTo != noone){ room_goto(levelJumpTo); }  }
    
		// do sneak in between
	//if( command_Inblack != "" and command_InblackOnce == false){  event_user(0); }

     
}

// get lighter
/*
if (state == "fade out"){

	channelTimer  -= (1/channelTimeFadeOut);
	
	alphaSet = animcurve_channel_evaluate(_channel, channelTimer );	
	
	if(channelTimer <= 0){  if(levelJumpTo != noone){ room_goto(levelJumpTo); } }
}
*/


// get darker
if (state == "fade in"){

	channelTimer  += (1/channelTimeFadeIn);
	if(channelTimer >= 1){  state = "stick around"; alphaSet = 1; }
alphaSet = animcurve_channel_evaluate(_channel, channelTimer );	
}




// draw in any case
var camX = camera_get_view_x( view_camera[0] ) + (camera_get_view_width( view_camera[0] )/2);
var camY = camera_get_view_y( view_camera[0] ) + (camera_get_view_height( view_camera[0] )/2);


draw_sprite_ext(spr_Effect_Transition_Default,0, camX, camY,  50000,50000,  0, fadeColor, alphaSet);