/// @description 

if(blockDraw == true){ exit; }
// black background for text!


//draw_sprite_ext(spr_BlackBox, 0, camX + (camWidth/2),  camY + camHeight + blackBoxY,  blackBoxScaleX, blackBoxScaleY, 0, c_black,  blackBoxAlpha );
//Blink if hover over!



#region black boxes and dialog

 // bottom line black boxes
 // name black box
   if(drawNameBox == true){
 	 if( isNews == false and !instance_exists(obj_MiniGame_Parent) ){
draw_sprite_ext(spr_Ui_BalkenNew_1px, 0, camX -20 , camY + camHeight + ui_BlackBox_DialogName_Y, ui_BlackBox_DialogName_ScaleX, ui_BlackBox_DialogName_ScaleY, 0, ui_trennerToTextCol, 1  );
	 }}

// text black box
draw_sprite_ext(spr_Ui_BalkenNew_1px, 0, camX - 20, camY + camHeight + ui_BlackBox_DialogText_Y, ui_BlackBox_DialogText_ScaleX, ui_BlackBox_DialogText_ScaleY, 0, ui_trennerToTextCol, 1  );


if(hoverOverDialogBoxBlink == true){
	
	//draw_sprite_ext(spr_Ui_BalkenNew_1px, 0, camX-10, camY + ui_BlackBoxY, ui_BlackBoxLength, ui_BlackBoxHeight, 0, hoverOverDialogBoxBlinkColor, hoverOverDialogBoxBlinkAlpha  );
    draw_sprite_ext(spr_Ui_BalkenNew_1px, 0, camX-10, camY + ui_trennerToTextY, 5000, 900, 0,                       hoverOverDialogBoxBlinkColor, hoverOverDialogBoxBlinkAlpha  );

     // only for debugging
	//draw_sprite_ext(spr_Ui_BalkenNew_1px, 0, camX-10, camY + ui_BlackBoxY, ui_BlackBoxLength, ui_BlackBoxHeight, 0, hoverOverDialogBoxBlinkColor, 1  );
    ///draw_sprite_ext(spr_Ui_BalkenNew_1px, 0, camX-10, camY + ui_trennerToTextY, 5000, 900, 0,                       hoverOverDialogBoxBlinkColor, 1  );
}



//draw_sprite_ext(spr_button_Xbox_Y,0, camX+camWidth+belowTxt_X2, camY+camHeight+belowTxt_Y2, belowButtonScale,belowButtonScale, 0, c_white, 1 );

// draw dialog text in any case! 
  if(drawNameBox == true){
 	 if( isNews == false and !instance_exists(obj_MiniGame_Parent) ){
       scribble(array_Name[dialogIndex]).draw(camX+textX, camY+camHeight+nameY );
	 }}

scribble(array_Txt[dialogIndex]).wrap(textNeueZeile, -1,false).draw(camX+textX, camY+camHeight+textY, typist );

#endregion

// draw cash in gold if no minigame is there or is news!
 if( !instance_exists(obj_MiniGame_Parent) ){
	 if( isNews == false ){
	 
    var prefixCash_ =  obj_Control_All.textDetail_CashPrefix;
    var suffixCash_ =  obj_Control_All.textDetail_CashSuffix; 

    var cashTxt = prefixCash_ + "$" + string( obj_Control_All.cashSumOnDay ) + suffixCash_; 

    if(obj_Control_All.cashSumOnDay < 0 ){
	    cashTxt = prefixCash_ + "-$" + string( abs(obj_Control_All.cashSumOnDay) ) + suffixCash_; 
	}


	var moneyX = obj_Control_All.moneyTxtX;
	var moneyY = obj_Control_All.moneyTxtY;
    

    scribble(cashTxt).draw( camX+moneyX, camY+moneyY );
	 }
 }
 

#region triangle blink

  if (triangleCanDraw == true){
	   if (!instance_exists(obj_MiniGame_Parent)){
     draw_sprite_ext(triangleSpr,0,  camX + camWidth + triangleSpr_X, camY + camHeight + triangleSpr_Y, triangleScale, triangleScale, triangleAngle, c_white, triangle_Alpha );
  }}




#endregion



if ( obj_Control_All.debug == true){

 camX        = camera_get_view_x( view_camera[0] );
 camY        = camera_get_view_y( view_camera[0] );


//var txtDEbug_ = "parralxOn " + string(   parallaxOn);
//draw_text(camX+200, camY+250, txtDEbug_);

 if( !instance_exists(obj_MiniGame_Parent)){
 
var txtDebug = "Dialog Index: " + string(dialogIndex) + "   ctrl -> 10+, alt -> 50+";
draw_text( camX+15, camY+15,  txtDebug);


//var txt2 = "Day " + string(obj_Control_All.currentCutscene + 1) +  " TotalBlocks: "+ string( obj_Control_All.arrayCutscenes[ obj_Control_All.currentCutscene ].totalBlocks);
//draw_text( camX+15, camY+45,  txt2);


var txt3 = "Regular dialog: " + string(dialogSprAlpha[2]);
draw_text( camX+15, camY+65,  txt3);
    }
	
}


// ui elements stretched
/*
 camX        = camera_get_view_x( view_camera[0] );
 camY        = camera_get_view_y( view_camera[0] );
 camWidth    = camera_get_view_width( view_camera[0] );
 camHeight   = camera_get_view_height( view_camera[0] );
 */
 
 // bottom line 

/*
draw_set_alpha(0.4);

draw_rectangle(camX, camY,  camX + camWidth + parallax_X, camY + camHeight - parallax_Y, 0  );
draw_set_alpha(1);
*/
