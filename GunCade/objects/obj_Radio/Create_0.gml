/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

isPaused = false;


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
songNameCurrentOwner   = "Owner";
songNameCurrentName    = "Name";

songLengthCurrent = "(2:46)";

songNameX = x + 141;
songNameY  = y + 20;
songOwnerY = y + 35;


prefix_Timer  = obj_Control_All.textRadioTimer_Prefix;
suffix_Timer  = obj_Control_All.textRadioTimer_Suffix;

prefix_SongOwner   = obj_Control_All.textRadioSongOwner_Prefix;
suffix_SongOwner   = obj_Control_All.textRadioSongOwner_Suffix;

prefix_SongName   = obj_Control_All.textRadioSongName_Prefix;
suffix_SongName   = obj_Control_All.textRadioSongName_Suffix;

prefix_Misc   = obj_Control_All.textRadioMisc_Prefix;
suffix_Misc   = obj_Control_All.textRadioMisc_Suffix;


// array for auto play songs!
arraySongsAutoPlay = array_create(0);


// debug click on areas



// demo timer
timeSteps    = 0;
timeSeconds  = 0;
timeMinutes  = 0;
resetTimer   = (60 * 46) + (60 * 60 * 2);


// fill up songs to be played
event_user(0);