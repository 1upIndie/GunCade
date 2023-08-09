/// @description 

if ( instance_exists(obj_MiniGame_Parent)){  exit; }
draw_self();

// draw buttons
//draw_set_alpha(1)
var iterateBtn = 0; var getClickOnPostion = ""; var clickOnType = "";
     var rectSizeX = 3;  var rectSizeY = 14; var colRec = c_red;
repeat(vol20){
  var xx =  volumeButtonStartX + (volumeButtonNextX * iterateBtn);
  var yy =  volumeButtonStartY;
  var colHover = c_white;
  var hover = false;
  if( mouse_x > xx-rectSizeX-1 and mouse_x < xx + rectSizeX ){
     if(mouse_y > yy-rectSizeY and mouse_y < yy + rectSizeY ){   hover = true; colHover = c_red; getClickOnPostion = iterateBtn; clickOnType = "volume";
  }}

  draw_sprite_ext(spr_Radio_volumeButton,0, xx,yy, volumeButtonScaleX,volumeButtonScaleY , 0, colHover, 0.4); // bgr ghost volume max
  if( iterateBtn <= valumeTotal){  
  draw_sprite_ext(spr_Radio_volumeButton,0, xx,yy, volumeButtonScaleX,volumeButtonScaleY , 0, colHover, 0.95 );
  } 
  
  
  
   if(obj_Control_All.debug == true){

	 
     //draw_rectangle_color(xx - rectSizeX-1, yy - rectSizeY,   xx + rectSizeX, yy + rectSizeY, colRec,colRec,colRec,colRec,  0 );
  }

iterateBtn++;
}

// functionality, click on!
var mbLeft = mouse_check_button_released(mb_left);
 if(mbLeft == true and getClickOnPostion != ""){
 
   if(clickOnType == "volume"){  
	   valumeTotal = getClickOnPostion;
	   
	    obj_Control_All.volume_Music = valumeTotal/vol20; 
	   }
 
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
var songTxt_Owner  = prefix_SongOwner + songNameCurrentOwner + " " + songLengthCurrent + suffix_SongOwner;
scribble( songTxt_Owner ).draw( songNameX, songNameY );

var songTxt_Name  = prefix_SongName + songNameCurrentName + suffix_SongName;
scribble( songTxt_Name ).draw( songNameX, songOwnerY );



//draw_set_alpha(1)
// draw misc text


// hover over to change volume

if(isPaused == true){

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



} // end of if paused


#endregion