

if ( obj_Control_All.debug == true){

var canSkip = true;

var check = dialogIndex +50;
if(check > obj_Control_All.arrayCutscenes[ obj_Control_All.currentCutscene ].totalBlocks  ){  canSkip = false; }


if(canSkip == true){dialogIndex += 50;  }


}