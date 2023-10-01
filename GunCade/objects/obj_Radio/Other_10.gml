/// @description grab songs!

var oo = obj_Control_All;

var songIndex = 0;
var arraySongL = array_length(oo.arraySongs);

var arrayPlaylist = oo.arraySongsPlaylist;
    arraySongL = array_length(oo.arraySongsPlaylist);
	

	
var indexSet = 0;
repeat(arraySongL){

	 if( oo.arraySongs[songIndex].songAutoPlayEnabled == 1 and oo.arraySongs[songIndex].songIsUnlocked == 1){
 
	 arraySongsAutoPlay[indexSet] = oo.arraySongs[songIndex].songId;
	 indexSet++;
	 }


songIndex++;
}

var indexCurrent = arraySongsAutoPlay[0];


songNameCurrentOwner   = oo.arraySongs[indexCurrent].songOwner;
songNameCurrentName    = oo.arraySongs[indexCurrent].songName;

songLengthCurrent = oo.arraySongs[indexCurrent].songLength;

