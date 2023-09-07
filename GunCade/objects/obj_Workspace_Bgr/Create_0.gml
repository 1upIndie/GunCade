/// @description 

image_alpha = 0.8;

isNews = false;

tvHeight = -146;
tvStartY = -60;

tvHeight = 20;

// if is news spawn on button!
alarm[0] = 10;
buttonX = -120;
buttonY = 40;


// scanlines
scanLineY = 0;
scanLineYAdd = 0.2;

// random inbance to scrolling
scrollingTime[0] = 15;
scrollingTime[1] = 50;
scrollingTimer = irandom_range( scrollingTime[0], scrollingTime[1] );

scrollingPushUp[0] = 0.5;
scrollingPushUp[1] = 1;
scrollingPushUpFinal = random_range( scrollingPushUp[0], scrollingPushUp[1] );


scrollingAlphaSet[0] = 0.1;
scrollingAlphaSet[1] = 0.13;
scanLineAlpha = random_range( scrollingAlphaSet[0], scrollingAlphaSet[1] );


