/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

image_xscale = 0.57;
image_yscale = 0.57;

totalBlock = false;

isPaused = false;
if( obj_Control_All.currentCutscene_DAY >= 100){ totalBlock = true; } // when news!
alarm[0] = 2; // set

  alarm[1] = 60; // next song play if


allBtnAlpha = 0.9;
allBtnHover = c_red;

vol20 = 20;
valumeTotal =   round( obj_Control_All.volume_Music * vol20); 
volumeButtonStartX = x + 38;
volumeButtonStartY = y + 64;
volumeButtonNextX  = 13;
volumeButtonScaleX = 0.5;
volumeButtonScaleY = 1.8;



/// timer
timerDigit_Min = 0;
timerDigit_Sec = 0;

timerDigitX = x + 32;
timerDigitY = y + 21;

// name
songNameCurrentOwnerTime   = "Owner";
songNameCurrentName        = "Name";

songLengthCurrent = "(2:46)";

songNameX = x + 141;
songNameY  = y + 20;
songOwnerX = x + 0;
songOwnerY = y + 35;


prefix_Timer  = obj_Control_All.textRadioTimer_Prefix;
suffix_Timer  = obj_Control_All.textRadioTimer_Suffix;

prefix_SongOwner   = obj_Control_All.textRadioSongOwner_Prefix;
suffix_SongOwner   = obj_Control_All.textRadioSongOwner_Suffix;

prefix_SongName   = obj_Control_All.textRadioSongName_Prefix;
suffix_SongName   = obj_Control_All.textRadioSongName_Suffix;

prefix_Misc   = obj_Control_All.textRadioMisc_Prefix;
suffix_Misc   = obj_Control_All.textRadioMisc_Suffix;




// debug click on areas



// demo timer
timeSteps    = 0;
timeSeconds  = 0;
timeMinutes  = 0;
resetTimer   = (60 * 46) + (60 * 60 * 2);


// input positions for control
var rectBuffX = 5;
 rectL = 30;

var rectBuffY = 15;
 rectH = 30;


// spr of buttons
btnXXX = 26;// push in ... pixels to right

 btnXXDif   = 47;
 btnYY      = 40; 
sprButtonToggle_X[1] = 0; // triangle L
sprButtonToggle_X[2] = 0 // Pause
sprButtonToggle_X[3] = 0; // triangle R
sprButtonToggle_Y    = 0; 
 

 sprButtonToggleSizeX = 1;
 sprButtonToggleSizeY = 1; 
  sprButtonToggleSpr[1] = spr_Radio_Next_Btn; 
  sprButtonToggleSpr[2] = spr_Radio_PausePlayButton; // toggle index!
    sprButtonToggleSpr_I[2] = 1;
  sprButtonToggleSpr[3] = spr_Radio_Next_Btn;   



rectangleX1[1] = 0;
rectangleX2[1] = 0;

rectangleY1 = 0;
rectangleY2 = 0;

rectangleX1[2] = 0;
rectangleX2[2] = 0;

rectangleX1[3] = 0;
rectangleX2[3] = 0;


// moving cog
cog_X = x + 70;
cog_Y = y + 70;
cogAngle = 0;
 cogAngleAdd = -2;
 
cogDelay = true;
cogDelayTime = 20;
cogDelayTimer = cogDelayTime;
// fill up songs to be played
//event_user(0);

