/// @description instructions

// animation

// hoverOver = 0; // always reset
hoverOver[1] = 0; // hover over field
hoverOver[2] = 0; // hover over field


#region get hover over

// check if in one of the boxes
if (field_Type == 2){
	var negBuffer = 10; 
	var reset_1 = true; 	var reset_2 = true; // anicurve pop
	if ( mouse_x >= spr_Part_X[1] + negBuffer and  mouse_x <= spr_Part_X[1] + hover_Xscale - negBuffer - 10 ){
	 	if ( mouse_y >= spr_Blink_Y and  mouse_y <= spr_Blink_Y + hover_Yscale ){ hoverOver[1] = 1; reset_1 = false; }}
		
	if ( mouse_x >= spr_Part_X[2] + negBuffer and  mouse_x <= spr_Part_X[2] + hover_Xscale - negBuffer ){
	 	if ( mouse_y >= spr_Blink_Y and  mouse_y <= spr_Blink_Y + hover_Yscale ){ hoverOver[2] = 1; reset_2 = false; }}		



  if( reset_1 == false){ 
		 hover_Scale_I[1]	+= 1/hover_Scale_IMax;
	     hover_Scale_I[1] = clamp( hover_Scale_I[1], 0, 1);
         var _val = animcurve_channel_evaluate(  hover_AniCurve, hover_Scale_I[1]  );  
	     xscaleSprCurrent[1] = _val * hover_XscaleSpr ;	  
	  }

  if( reset_2 == false){ 
		 hover_Scale_I[2]	+= 1/hover_Scale_IMax;
	     hover_Scale_I[2] = clamp( hover_Scale_I[2], 0, 1);
         var _val = animcurve_channel_evaluate(  hover_AniCurve, hover_Scale_I[2]  );  
	     xscaleSprCurrent[2] = _val * hover_XscaleSpr ;	  
	  }



 // not hovering!
 if( reset_1 == true){ hover_Scale_I[1] = 0; 
	 if(xscaleSprCurrent[1] > 1){ xscaleSprCurrent[1] -= nohover_XscaleReduce; }  }
	 
	 
 if( reset_2 == true){ hover_Scale_I[2] = 0;
     if(xscaleSprCurrent[2] > 1){ xscaleSprCurrent[2] -= nohover_XscaleReduce; }	 
	 }


 // clamp! failsave!
 xscaleSprCurrent[1] = clamp(xscaleSprCurrent[1], 1, hover_XscaleSpr );
 xscaleSprCurrent[2] = clamp(xscaleSprCurrent[2], 1, hover_XscaleSpr );


// check for imput
var mbLeft = mouse_check_button_released(mb_left);
  
  if( mbLeft == 1 and hoverOver[1] == 1 and  canInput == true){  event_user( 1 );   }
  if( mbLeft == 1 and hoverOver[2] == 1 and  canInput == true){  event_user( 2 );   } 
  
}


if (field_Type == 4){
	
	if ( mouse_x >= spr_Part[1] and  mouse_x <= spr_Part[1] + hover_Xscale ){
	 	if ( mouse_y >= spr_Part_Y and  mouse_y <= spr_Part_Y + hover_Yscale ){ hoverOver = 1; }}
		
	if ( mouse_x >= spr_Part[2] and  mouse_x <= spr_Part[2] + hover_Xscale ){
	 	if ( mouse_y >= spr_Part_Y and  mouse_y <= spr_Part_Y + hover_Yscale ){ hoverOver = 2; }}		

	if ( mouse_x >= spr_Part[3] and  mouse_x <= spr_Part[3] + hover_Xscale ){
	 	if ( mouse_y >= spr_Part_Y and  mouse_y <= spr_Part_Y + hover_Yscale ){ hoverOver = 3; }}
		
	if ( mouse_x >= spr_Part[4] and  mouse_x <= spr_Part[4] + hover_Xscale ){
	 	if ( mouse_y >= spr_Part_Y and  mouse_y <= spr_Part_Y + hover_Yscale ){ hoverOver = 4; }}	
}
#endregion



// auto blink
blink_Pos    += 1/blink_total;
if(blink_Pos >= 1) { blink_Pos = 0; }
alphaBlink = animcurve_channel_evaluate(_channel, blink_Pos);
 clamp( alphaBlink, 0, alphaBlinkMax);