/// @description loop auto audio skip

if ( totalBlock == false){  
	 var skip = true;
 
	 skip = audio_is_playing( obj_Control_All.arraySongsPlaylist[ obj_Control_All.current_SongIndex ] );

	if(isPaused == false){
	  if( skip == false ){  scr_playNextFromPlayList( "next" );  }
	}

}
  alarm[1] = 60;
