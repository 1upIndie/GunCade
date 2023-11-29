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
	var halfScale = hover_Xscale/2;
	var negBuffer = 10; 
	var reset_1 = true; 	var reset_2 = true;  var reset_3 = true; var reset_4 = true; // anicurve pop
	
	var index = 1;
	if ( mouse_x >= spr_Part_X[index] + negBuffer - halfScale and  mouse_x <= spr_Part_X[index] + halfScale - negBuffer - 10 ){
	 	if ( mouse_y >= spr_Blink_Y and  mouse_y <= spr_Blink_Y + hover_Yscale ){ hoverOver[1] = 1; reset_1 = false; }}
	
	index = 2;
	if ( mouse_x >= spr_Part_X[index] + negBuffer - halfScale and  mouse_x <= spr_Part_X[index] + halfScale - negBuffer - 10 ){
	 	if ( mouse_y >= spr_Blink_Y and  mouse_y <= spr_Blink_Y + hover_Yscale ){ hoverOver[2] = 1; reset_2 = false; }}		

    index = 3;
	if ( mouse_x >= spr_Part_X[index] + negBuffer - halfScale and  mouse_x <= spr_Part_X[index] + halfScale - negBuffer - 10 ){
	 	if ( mouse_y >= spr_Blink_Y and  mouse_y <= spr_Blink_Y + hover_Yscale ){ hoverOver[3] = 1; reset_3 = false; }}	

    index = 4;
	if ( mouse_x >= spr_Part_X[index] + negBuffer - halfScale and  mouse_x <= spr_Part_X[index] + halfScale - negBuffer - 10 ){
	 	if ( mouse_y >= spr_Blink_Y and  mouse_y <= spr_Blink_Y + hover_Yscale ){ hoverOver[4] = 1; reset_4 = false; }}	


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

  if( reset_3 == false){ 
		 hover_Scale_I[3]	+= 1/hover_Scale_IMax;
	     hover_Scale_I[3] = clamp( hover_Scale_I[3], 0, 1);
         var _val = animcurve_channel_evaluate(  hover_AniCurve, hover_Scale_I[3]  );  
	     xscaleSprCurrent[3] = _val * hover_XscaleSpr ;	  
	  }

  if( reset_4 == false){ 
		 hover_Scale_I[4]	+= 1/hover_Scale_IMax;
	     hover_Scale_I[4] = clamp( hover_Scale_I[4], 0, 1);
         var _val = animcurve_channel_evaluate(  hover_AniCurve, hover_Scale_I[4]  );  
	     xscaleSprCurrent[4] = _val * hover_XscaleSpr ;	  
	  }



 // not hovering!
 if( reset_1 == true){ hover_Scale_I[1] = 0; 
	 if(xscaleSprCurrent[1] > 1){ xscaleSprCurrent[1] -= nohover_XscaleReduce; }  }
	 
	 
 if( reset_2 == true){ hover_Scale_I[2] = 0;
     if(xscaleSprCurrent[2] > 1){ xscaleSprCurrent[2] -= nohover_XscaleReduce; }	 
	 }

 if( reset_3 == true){ hover_Scale_I[3] = 0;
     if(xscaleSprCurrent[3] > 1){ xscaleSprCurrent[3] -= nohover_XscaleReduce; }	 
	 }

 if( reset_4 == true){ hover_Scale_I[4] = 0;
     if(xscaleSprCurrent[4] > 1){ xscaleSprCurrent[4] -= nohover_XscaleReduce; }	 
	 }


 // clamp! failsave!
 xscaleSprCurrent[1] = clamp(xscaleSprCurrent[1], 1, hover_XscaleSpr );
 xscaleSprCurrent[2] = clamp(xscaleSprCurrent[2], 1, hover_XscaleSpr );
 xscaleSprCurrent[3] = clamp(xscaleSprCurrent[3], 1, hover_XscaleSpr );
 xscaleSprCurrent[4] = clamp(xscaleSprCurrent[4], 1, hover_XscaleSpr );


// check for imput
var mbLeft = mouse_check_button_released(mb_left);
  
  if( mbLeft == 1 and hoverOver[1] == 1 and  canInput == true){  event_user( 1 );   }
  if( mbLeft == 1 and hoverOver[2] == 1 and  canInput == true){  event_user( 2 );   } 
  if( mbLeft == 1 and hoverOver[3] == 1 and  canInput == true){  event_user( 3 );   } 
  if( mbLeft == 1 and hoverOver[4] == 1 and  canInput == true){  event_user( 4 );   }   
}
#endregion



// auto blink
blink_Pos    += 1/blink_total;
if(blink_Pos >= 1) { blink_Pos = 0; }
alphaBlink = animcurve_channel_evaluate(_channel, blink_Pos);
 clamp( alphaBlink, 0, alphaBlinkMax);