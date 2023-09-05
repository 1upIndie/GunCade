/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


	_channel_Timer  += (1/_channel_TimeTotal);
	if(_channel_Timer >= 1){ _channel_Timer = 0; }
	
	setYX = animcurve_channel_evaluate(_channel, _channel_Timer );	
	
var setXYDir = setYX * lenghtXY;

	if ( dir == "down" ){ y = start_Y + setXYDir; }
	if ( dir == "side" ){ x = start_X + setXYDir; }
	
	
	