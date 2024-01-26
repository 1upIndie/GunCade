/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben



// Inherit the parent event
event_inherited();


if ( state == "stick around"){
	alphaSet = 1;
	stickAroundTimer--;
	if(stickAroundTimer <= 0){ 
		
	
// jump to plus unblock
obj_Workspace_Control.dialogIndex = 911;
obj_Workspace_Control.blockInput = false;
instance_destroy();
		}
         
}

// get lighter
if (state == "fade out"){

	channelTimer  -= (1/channelTimeFadeOut);
	
	alphaSet = animcurve_channel_evaluate(_channel, channelTimer );	
	
	if(channelTimer <= 0){  instance_destroy(); }
}



// get darker
if (state == "fade in"){

	channelTimer  += (1/channelTimeFadeIn);
	if(channelTimer >= 1){  state = "stick around"; alphaSet = 1; }
alphaSet = animcurve_channel_evaluate(_channel, channelTimer );	
}


// play heartbeat shortly after
if ( miniTimerOnce == false){ 
	miniTimer--;
	if(miniTimer <= 0){
	scr_PlaySound( snd_DayIntro_HeartBeat, 1);
	miniTimerOnce = true;
	}
}	
	




// draw in any case
var camX = camera_get_view_x( view_camera[0] ) + (camera_get_view_width( view_camera[0] )/2);
var camY = camera_get_view_y( view_camera[0] ) + (camera_get_view_height( view_camera[0] )/2);


draw_sprite_ext(spr_Effect_Transition_Default,0, camX, camY,  50000,50000,  0, fadeColor, alphaSet);