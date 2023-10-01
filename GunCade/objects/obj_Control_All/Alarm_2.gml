/// @description constant clean up check for audio fade outs!

// check for entries and if not playing right now!
var shrinkArray = true;
var arrayL = array_length( audio_cleanupArray);

// loop through and delete the entries, still stack up until no toggling is happening
if (array_length( audio_cleanupArray) > 0){
   var i = 0;
   repeat( arrayL ){

if( audio_cleanupArray[i] != -999){

		   // check if only one entry does block ->	   
		   if ( audio_is_playing( audio_cleanupArray[i] ) == true and audio_sound_get_gain( audio_cleanupArray[i]) > 0.01){ shrinkArray = false; }
	   
		   // all the others -> set to -999 as resolved	   
		   if ( audio_is_playing( audio_cleanupArray[i] ) == true){
			   if( audio_sound_get_gain( audio_cleanupArray[i]) <= 0.01){ audio_stop_sound( audio_cleanupArray[i]);  }
	   
			   audio_cleanupArray[i] = -999;  }
       }

   i++;
   }

}


// currently not playing? -> shrink array back to 0
if(shrinkArray == true){  array_resize( audio_cleanupArray, 0);  }





// loop
alarm[2] = audioCleanup;


