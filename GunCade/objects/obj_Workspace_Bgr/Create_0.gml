/// @description 

image_alpha = 0.8;
image_alpha = 1;


isNews = false;

tvHeight = -146;
tvStartY = -60;

tvHeight = 20;

// if is news spawn on button!
alarm[0] = 10;
buttonX = -120;
buttonY = 40;

var size = 0.9;
image_xscale = size;
image_yscale = size;

image_blend = c_gray;
// scanlines
scanLineY = 0;
scanLineYAdd = 0.2;

// random inbance to scrolling
scrollingTime[0] = 15;
scrollingTime[1] = 50;
scrollingTimer = irandom_range( scrollingTime[0], scrollingTime[1] );


// monitor flickering
flickerColor = c_purple;
flickerAlpha = 0;
 flickerMin = 0.05;
 flickerMax = 0.2; 
flickerTimer_Min = 8;
flickerTimer_Max = 15;
alarm[1] = random_range(flickerTimer_Min, flickerTimer_Max );



scrollingPushUp[0] = 0.5;
scrollingPushUp[1] = 1;
scrollingPushUpFinal = random_range( scrollingPushUp[0], scrollingPushUp[1] );


scrollingAlphaSet[0] = 0.1;
scrollingAlphaSet[1] = 0.13;
scanLineAlpha = random_range( scrollingAlphaSet[0], scrollingAlphaSet[1] );

// news
newsScroll_Txt =  "+++ breaking news +++ red vegatarian crocodile is not longer there +++ eat more chicken +++ breaking news +++ red vegatarian crocodile is not longer there +++ eat more chicken +++ breaking news +++ red vegatarian crocodile is not longer there +++ eat more chicken +++ breaking news +++ red vegatarian crocodile is not longer there +++ eat more chicken"; 
 newsScroll_TxtSize = 0.5;
 
newsScrollXStart = 200;
newsScrollXAdd   = -0.5;
newsScrollEnd    = string_length( newsScroll_Txt ) * 3;

newsScrollX    = newsScrollXStart;


