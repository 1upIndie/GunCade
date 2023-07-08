/// @description 
isMain = 1;


totalFrames  = 0; // 
currentFrame = 0;
randomStart = false;

lastFrame    = 0;
lastFrame_Alpha = 1;
lastFrame_AlphaSubstract = 0.05;

hasDoubleRepeat = false; // for commericals to double loop them
hasDoubleRepeat_Stack = 0;
hasDoubleRepeat_StackMax = 24;
hasDoubleRepeatFrame[1] = 0;
hasDoubleRepeatFrame[2] = 1;



setOnce = false;
tvProgramm_Index  = 0;           // grab from objControl_all once
tvProgramm_Sprite = spr_Nothing; // grab from objControl_all once

tvScaleX = 1;
tvScaleY = 1;

// movement, zoom etc
stateMove    = "";
stateFade    = "";

var moveXY = 0.02;
var zoom   = 0.00005;

moveX     = 0;
moveY     = 0;
moveXMax  = 15;
moveYMax  = 15;
moveXAdd  = moveXY; 
moveYAdd  = moveXY; 

zoomTotal = 0;
zoomMax = 1.004;
zoomAdd = zoom;


// news
hasNews        = 0;
hasNewsTxt     = "";
hasNewsTxtS    = "";

newsX  = 30;
newsY  = 111;
newsXs = 13;
newsYs = 30;


// how fast to play each frames
playSpeedTime  = 240;

alarm[0] = 4;
