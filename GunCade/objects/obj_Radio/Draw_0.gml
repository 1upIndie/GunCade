/// @description 


draw_self();

// draw buttons
//draw_set_alpha(1)
var iterateBtn = 0;
repeat(20){
  var xx =  volumeButtonStartX + (volumeButtonNextX * iterateBtn);
  var yy =  volumeButtonStartY;

  draw_sprite_ext(spr_Radio_volumeButton,0, xx,yy, volumeButtonScaleX,volumeButtonScaleY , 0, c_white, 0.95 );

iterateBtn++;
}

// draw volume amount -> maybe not


// draw timer
var timerTxt = 0;
if(timerDigit_Min < 10){
	
	if(timerDigit_Sec < 10 ){ timerTxt = prefix_Timer + "0" + string(timerDigit_Min) + ":" + "0" + string(timerDigit_Sec) + suffix_Timer; }
	if(timerDigit_Sec >= 10){ timerTxt = prefix_Timer + "0" + string(timerDigit_Min) + ":"       + string(timerDigit_Sec) + suffix_Timer; }
} else {

   timerTxt = prefix_Timer +  string(timerDigit_Min) + ":" + string(timerDigit_Sec) + suffix_Timer; 
}

scribble(timerTxt).draw( timerDigitX, timerDigitY );



// draw song name + length
var songTxt = prefix_Song + songNameCurrent + " " + songLengthCurrent + suffix_Song;
scribble( songTxt ).draw( songNameX, songNameY );


//draw_set_alpha(1)
// draw misc text


// hover over to change volume



#region dummy timer 


if(timeSteps < 59){ timeSteps++ }
 else {  
	 
	 timeSteps = 0;
     if(timeSeconds < 59){ timeSeconds++ }	 
	  else {
	  timeSeconds = 0;
       
	   if(timeMinutes < 59){ timeMinutes++ }	 
	   else {
	   
	   
	   }
	  
	  }
	 
	 
 }
var calcEnd = (timeMinutes * 60 * 60) + (timeSeconds *60);
if(calcEnd >= resetTimer){
timeSteps    = 0;
timeSeconds  = 0;
timeMinutes  = 0;

}
timerDigit_Min = timeMinutes;
timerDigit_Sec = timeSeconds;






#endregion