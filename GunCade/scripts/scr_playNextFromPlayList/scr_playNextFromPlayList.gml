
function scr_playNextFromPlayList( instruct_ ){

if(instruct_ == "previous" or instruct_ == "next"  ){
	// check if playing and fade out
	var getSong = obj_Control_All.arraySongsPlaylist[ obj_Control_All.current_SongIndex ];
	 // audio_sound_gain( getSong, obj_Control_All.audioFixed_FadeOut, 0  );
	 // var arrayL = array_length( obj_Control_All.audio_cleanupArray);
	 // obj_Control_All.audio_cleanupArray[arrayL + 1] = getSong;
	
	  audio_stop_sound(getSong);

	  	// play casset click sound and reset cog angle
	  scr_PlaySound(snd_CassetteSwitch,0);
	  obj_Radio.cogAngle = 0;
	  obj_Radio.cogDelay = true;
	  obj_Radio.cogDelayTimer = obj_Radio.cogDelayTime;

    if( instruct_ == "next"){
	 // get correct index!  
   		 if( obj_Control_All.current_SongIndex < array_length(obj_Control_All.arraySongsPlaylist)-1){
		     obj_Control_All.current_SongIndex++;
		 }  else { obj_Control_All.current_SongIndex = 0; }
	}	 

    if( instruct_ == "previous"){
	 // get correct index!  
   		 if( obj_Control_All.current_SongIndex > 0){
		     obj_Control_All.current_SongIndex--;
		 }  else { obj_Control_All.current_SongIndex = array_length(obj_Control_All.arraySongsPlaylist)-1; }
	}	
     
	 // reset timer!
	    obj_Radio.timeSteps    = 0;
        obj_Radio.timeSeconds  = 0;
        obj_Radio.timeMinutes  = 0;
		
	// set new values to radio -> author + length, name	
	var songAuthor     = obj_Control_All.arraySongs[ obj_Control_All.playListSongActiveBools[ obj_Control_All.current_SongIndex] ].songOwner;
	var songSongLength = obj_Control_All.arraySongs[ obj_Control_All.playListSongActiveBools[ obj_Control_All.current_SongIndex] ].songLength;	
	var songName       = obj_Control_All.arraySongs[ obj_Control_All.playListSongActiveBools[ obj_Control_All.current_SongIndex] ].songName;		
	   
	   songNameCurrentOwnerTime = prefix_SongOwner + songAuthor + " " +  songSongLength + suffix_SongOwner;
	   songNameCurrentName      = prefix_SongName  + songName   + suffix_SongName;
	   
	     	   
       // play that index
	  scr_PlaySound( obj_Control_All.arraySongsPlaylist[ obj_Control_All.current_SongIndex ] ,0);  

}


if(instruct_ == "pause"){  
	 if(isPaused == true){ 
		 
		 isPaused = false;
		 audio_resume_sound( obj_Control_All.arraySongsPlaylist[ obj_Control_All.current_SongIndex ] );	 
	 } else { 
		 isPaused = true;
		 audio_pause_sound(  obj_Control_All.arraySongsPlaylist[ obj_Control_All.current_SongIndex ] );
		 }
	

	
	}

////////////////	   end of script
}