/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben



// Inherit the parent event
event_inherited();

if ( state == "fade in"){
	alphaSet = 1;
	stickAroundTimer--;
	
	channel_I += 1/channelTimeFadeIn;

   var _val = animcurve_channel_evaluate(  _channel, channel_I  );	
   alphaSet = _val;
	
	
	if(channel_I >= 1){ state = "stick around";  }

}



if ( state == "stick around"){
	alphaSet = 1;
	stickAroundTimer--;
	if(stickAroundTimer <= 0){ state = "";  room_goto(levelJumpTo);  }

}







// draw in any case
var camX = camera_get_view_x( view_camera[0] ) + (camera_get_view_width( view_camera[0] )/2);
var camY = camera_get_view_y( view_camera[0] ) + (camera_get_view_height( view_camera[0] )/2);


draw_sprite_ext(spr_Effect_Transition_Default,0, camX, camY,  50000,50000,  0, fadeColor, alphaSet);