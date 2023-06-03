/// @description 


//draw_sprite_ext(spr_button_Xbox_Y,0, camX+camWidth+belowTxt_X2, camY+camHeight+belowTxt_Y2, belowButtonScale,belowButtonScale, 0, c_white, 1 );


scribble(array_Name[dialogIndex]).draw(camX+textX, camY+camHeight+nameY );


scribble(array_Txt[dialogIndex]).wrap(textNeuesZeile, -1,false).draw(camX+textX, camY+camHeight+textY, typist );





if ( obj_Control_All.debug == true){

 camX        = camera_get_view_x( view_camera[0] );
 camY        = camera_get_view_y( view_camera[0] );
var txtDebug = "Dialog Index: " + string(dialogIndex) + "   ctrl -> 10+, alt -> 50+";
draw_text( camX+15, camY+15,  txtDebug);


var txt2 = "Day " + string(obj_Control_All.currentCutscene + 1) +  " TotalBlocks: "+ string( obj_Control_All.arrayCutscenes[ obj_Control_All.currentCutscene ].totalBlocks);
draw_text( camX+15, camY+45,  txt2);


var txt3 = "Regular dialog: " + string(dialogSprAlpha[2]);
draw_text( camX+15, camY+65,  txt3);

}