/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


songNameCurrent = "Song 1"

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
songNameCurrent   = "Song 1";
songLengthCurrent = "(2:46)";

songNameX = x + 141;
songNameY = y + 28;

prefix_Timer  = obj_Control_All.textRadioTimer_Prefix;
suffix_Timer  = obj_Control_All.textRadioTimer_Suffix;

prefix_Song   = obj_Control_All.textRadioSong_Prefix;
suffix_Song   = obj_Control_All.textRadioSong_Suffix;

prefix_Misc   = obj_Control_All.textRadioMisc_Prefix;
suffix_Misc   = obj_Control_All.textRadioMisc_Suffix;


// debug click on areas



// demo timer
timeSteps    = 0;
timeSeconds  = 0;
timeMinutes  = 0;
resetTimer   = (60 * 46) + (60 * 60 * 2);