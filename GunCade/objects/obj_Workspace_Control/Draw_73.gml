/// @description 

if(blockDraw == true){ exit; }
// black background for text!


draw_sprite_ext(spr_BlackBox, 0, camX + (camWidth/2),  camY + camHeight + blackBoxY,  blackBoxScaleX, blackBoxScaleY, 0, c_black,  blackBoxAlpha );
//Blink if hover over!
if(hoverOverDialogBoxBlink == true){
   draw_sprite_ext(spr_BlackBox, 0, camX + (camWidth/2),  camY + camHeight + blackBoxY,  blackBoxScaleX, blackBoxScaleY, 0, hoverOverDialogBoxBlinkColor,  hoverOverDialogBoxBlinkAlpha );
}


//draw_sprite_ext(spr_button_Xbox_Y,0, camX+camWidth+belowTxt_X2, camY+camHeight+belowTxt_Y2, belowButtonScale,belowButtonScale, 0, c_white, 1 );

// draw dialog text in any case! 
scribble(array_Name[dialogIndex]).draw(camX+textX, camY+camHeight+nameY );


scribble(array_Txt[dialogIndex]).wrap(textNeuesZeile, -1,false).draw(camX+textX, camY+camHeight+textY, typist );


// draw cash in gold if no minigame is there 
 if( !instance_exists(obj_MiniGame_Parent)){
    var prefixCash_ =  obj_Control_All.textDetail_CashPrefix;
    var suffixCash_ =  obj_Control_All.textDetail_CashSuffix; 

    var cashTxt = prefixCash_ + string(dayTemp_Cash + dayTemp_Cash_Tip) + "$" + suffixCash_; 

var moneyX = obj_Control_All.moneyTxtX;
var moneyY = obj_Control_All.moneyTxtY[0];


    scribble(cashTxt).draw( camX+moneyX, camY+moneyY );

 }
 
 
if ( obj_Control_All.debug == true){

 camX        = camera_get_view_x( view_camera[0] );
 camY        = camera_get_view_y( view_camera[0] );
 
 if( !instance_exists(obj_MiniGame_Parent)){
 
var txtDebug = "Dialog Index: " + string(dialogIndex) + "   ctrl -> 10+, alt -> 50+";
draw_text( camX+15, camY+15,  txtDebug);


//var txt2 = "Day " + string(obj_Control_All.currentCutscene + 1) +  " TotalBlocks: "+ string( obj_Control_All.arrayCutscenes[ obj_Control_All.currentCutscene ].totalBlocks);
//draw_text( camX+15, camY+45,  txt2);


var txt3 = "Regular dialog: " + string(dialogSprAlpha[2]);
draw_text( camX+15, camY+65,  txt3);
    }
	
}