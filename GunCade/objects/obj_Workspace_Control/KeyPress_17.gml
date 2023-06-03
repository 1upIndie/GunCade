/// @description jump text by 10 blocks


if ( obj_Control_All.debug == true){

var canSkip = true;

var check = dialogIndex +10;
if(check > obj_Control_All.arrayCutscenes[ obj_Control_All.currentCutscene ].totalBlocks  ){  canSkip = false; }


if(canSkip == true){dialogIndex += 10;  }


}