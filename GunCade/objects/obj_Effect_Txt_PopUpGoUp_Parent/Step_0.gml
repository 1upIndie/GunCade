/// @description 

if( canDraw == false){  exit;  }

TimeSET += (1/Time);
if(TimeSET >= 1){ TimeSET = 1; }

var _val = animcurve_channel_evaluate( MoveUpchannel,  TimeSET);
moveUp = _val;


y = yStart - ( moveUp*moveUpAmount );


/// alpha
if(TimeSET > 0.8){

image_alpha -= alphaSub;
if(image_alpha <= 0){ instance_destroy();  }

}