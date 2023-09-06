/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


	_channel_Timer  += (1/_channel_TimeTotal);
	if(_channel_Timer >= 1){ _channel_Timer = 0; }
	
	setYX = animcurve_channel_evaluate(_channel, _channel_Timer );	
	
var setXYDir = setYX * lenghtXY;

// move the text with the arrow as well
	if ( dir == "down"  ){ y = start_Y + setXYDir; Sprite_Text_SprY = -Sprite_Text_SprYUpDown;   }
	if ( dir == "left"  ){ x = start_X + setXYDir; Sprite_Text_SprX =   Sprite_Text_SprXSide;   }
	if ( dir == "right" ){ x = start_X + setXYDir; Sprite_Text_SprX =  -Sprite_Text_SprXSide;   }	


	
#region state machine

if ( state == "idle"){

  timer_Idle--;
  if( timer_Idle < 0){ state = "fade";  }

}


if ( state == "fade"){
  image_alpha -= alphaSub;

  if( image_alpha < 0){ 
	  

	  instance_destroy();  }
}


#endregion	
	
	
	