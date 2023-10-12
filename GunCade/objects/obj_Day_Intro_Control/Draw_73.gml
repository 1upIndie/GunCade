/// @description
if ( canDraw == false){ exit; }

var camX        = camera_get_view_x( view_camera[0] );
var camY        = camera_get_view_y( view_camera[0] );
var camWidth    = camera_get_view_width( view_camera[0] );
var camHeight   = camera_get_view_height( view_camera[0] );

spr_DayHeader_X = camX + (camWidth/2);

spr_DayHeader_Y    = camY + 300;
spr_DayHeaderSub_Y = camY + 380;



draw_sprite_ext( spr_DayHeader, 0, spr_DayHeader_X, spr_DayHeader_Y   , spr_DayHeader_ScaleX,spr_DayHeader_ScaleY,       0, c_white, spr_DayHeader_Alpha  );


draw_sprite_ext( spr_DaySub,    0, spr_DayHeader_X, spr_DayHeaderSub_Y, spr_DayHeaderSub_ScaleX,spr_DayHeaderSub_ScaleY, 0, c_white, spr_DayHeaderSub_Alpha  );



// states + animation
if(state == "stick around"){
    
	state_StickAround_Timer--;
if ( state_StickAround_Timer <= 0) {  state = "fade in"; }

}


if(state == "fade in"){
    
		fade_I += 1/fade_ITotal;
   if ( fade_I >= 1) { fade_I = 1;  state = "stick around2"; }


	   var _val = animcurve_channel_evaluate( channel,  fade_I);
	   spr_DayHeaderSub_Alpha = _val;

}
	
if(state == "stick around2"){
    
	state_StickAround2_Timer--;


if ( state_StickAround2_Timer <= 0) {  state = "";
			var jumpToRoomEnd = instance_create_layer(x,y, "Instances_Effects", obj_Transition_GotoLevel );
             jumpToRoomEnd.levelJumpTo = Room_Workspace;
	}

}