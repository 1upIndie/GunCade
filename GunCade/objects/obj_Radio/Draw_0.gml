/// @description 

if ( instance_exists(obj_MiniGame_Parent)){  exit; }
if ( totalBlock == true){  exit; }
// cog moving
if( isPaused == false){  
	
	if(cogDelay == true){ cogDelayTimer--;
		if(cogDelayTimer <= 0){
		   cogDelayTimer = cogDelayTime;
		   cogDelay = false; }
		}

	
	if(cogDelay == false){ cogAngle += cogAngleAdd; }
}	
draw_sprite_ext(spr_Radio_Cog2,0, cog_X, cog_Y, image_xscale, image_yscale, cogAngle, c_white, 1 );


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
     if(mouse_y > yy-rectSizeY and mouse_y < yy + rectSizeY ){   hover = true; colHover = allBtnHover; getClickOnPostion = iterateBtn; clickOnType = "volume";
  }}

  draw_sprite_ext(spr_Radio_volumeButton,0, xx,yy, volumeButtonScaleX,volumeButtonScaleY , 0, colHover, 0.4); // bgr ghost volume max
  if( iterateBtn <= volumeTotal){  
  draw_sprite_ext(spr_Radio_volumeButton,0, xx,yy, volumeButtonScaleX,volumeButtonScaleY , 0, colHover, allBtnAlpha );
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
	   volumeTotal = getClickOnPostion;
	   
	    obj_Control_All.volume_Music  = valumeTotal/vol20; 
		
		///obj_Control_All.volume_Master = valumeTotal/vol20;
		///audio_master_gain(obj_Control_All.volume_Master);
		
       // apply
      audio_group_set_gain( audiogroup_Music,  obj_Control_All.volume_Music, 0 );
		
	   }
 
 scr_PlaySound(snd_MenueSfx_ToggleLR, 0);
 }

// draw volume amount -> maybe not

#region draw timer


// draw timer
var timerTxt = 0;
if(timerDigit_Min < 10){
	
	if(timerDigit_Sec < 10 ){ timerTxt = prefix_Timer + "0" + string(timerDigit_Min) + ":" + "0" + string(timerDigit_Sec) + suffix_Timer; }
	if(timerDigit_Sec >= 10){ timerTxt = prefix_Timer + "0" + string(timerDigit_Min) + ":"       + string(timerDigit_Sec) + suffix_Timer; }
} else {

   timerTxt = prefix_Timer +  string(timerDigit_Min) + ":" + string(timerDigit_Sec) + suffix_Timer; 
}

scribble(timerTxt).draw( timerDigitX, timerDigitY );

#endregion


#region author timetotal, name

// draw song name + length
 //songTxt_Owner  = prefix_SongOwner + songNameCurrentOwner + " " + songLengthCurrent + suffix_SongOwner;
scribble( songNameCurrentOwnerTime ).draw( songOwnerX, songOwnerY );

//var songTxt_Name  = prefix_SongName + songNameCurrentName + suffix_SongName;
scribble( songNameCurrentName ).draw( songNameX, songNameY );

#endregion



#region  control song buttons -> previous, pause/play, next
var rectCol = c_red;



  var hoverToggle_Blend_1 = c_white;
  var hoverToggle_Blend_2 = c_white;  
  var hoverToggle_Blend_3 = c_white;  


  if( mouse_x > rectangleX1[1] and mouse_x < rectangleX2[1]  ){
     if(mouse_y > rectangleY1 and mouse_y < rectangleY2 ){  hoverToggle_Blend_1 = allBtnHover;  }}

  if( mouse_x > rectangleX1[2] and mouse_x < rectangleX2[2]  ){
     if(mouse_y > rectangleY1 and mouse_y < rectangleY2 ){  hoverToggle_Blend_2 = allBtnHover;  }}

  if( mouse_x > rectangleX1[3] and mouse_x < rectangleX2[3]  ){
     if(mouse_y > rectangleY1 and mouse_y < rectangleY2 ){  hoverToggle_Blend_3 = allBtnHover;  }}



    draw_sprite_ext(sprButtonToggleSpr[1],                       0, sprButtonToggle_X[1], sprButtonToggle_Y, sprButtonToggleSizeX,sprButtonToggleSizeY, 180, hoverToggle_Blend_1, allBtnAlpha );
    draw_sprite_ext(sprButtonToggleSpr[2], sprButtonToggleSpr_I[2], sprButtonToggle_X[2], sprButtonToggle_Y, sprButtonToggleSizeX,sprButtonToggleSizeY,   0, hoverToggle_Blend_2, allBtnAlpha );
    draw_sprite_ext(sprButtonToggleSpr[3],                       0, sprButtonToggle_X[3], sprButtonToggle_Y, sprButtonToggleSizeX,sprButtonToggleSizeY,   0, hoverToggle_Blend_3, allBtnAlpha );
	
	
#endregion

//draw_set_alpha(1)
// draw misc text


// hover over to change volume

if(isPaused == false){

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

/*
#region Debug

if (obj_Control_All.debug == true){
	image_alpha = 0.5;

	draw_rectangle_color(rectangleX1[1],rectangleY1, rectangleX2[1],rectangleY2, rectCol,rectCol,rectCol,rectCol, 1  );
	draw_rectangle_color(rectangleX1[2],rectangleY1, rectangleX2[2],rectangleY2, rectCol,rectCol,rectCol,rectCol, 1  );
	draw_rectangle_color(rectangleX1[3],rectangleY1, rectangleX2[3],rectangleY2, rectCol,rectCol,rectCol,rectCol, 1  );

var yyy = y + sprite_height + 15;
var value = "Index: " + string( obj_Control_All.current_SongIndex);
value = "array L: " + string( array_length(obj_Control_All.arraySongsPlaylist) ) + "   Index: " + string( obj_Control_All.current_SongIndex) ;

value = string(obj_Control_All.current_SongIndex) + "/"+ string( array_length(obj_Control_All.arraySongsPlaylist)) ; 

 //value = audio_is_playing( obj_Control_All.arraySongsPlaylist[ obj_Control_All.current_SongIndex ] );
draw_text(x, yyy,value );


}
#endregion