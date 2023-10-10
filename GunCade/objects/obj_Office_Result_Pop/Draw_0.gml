/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


if(canDraw == false){ exit; }
 
 draw_sprite_ext(spr_Office_Result_BgrHeader,0, x,y+headerY, image_xscale*headerScale,image_yscale*headerScale,0, c_white, 1 ); 
 draw_self();


  var xx = x + x_TopLeft;
  var yy = y + y_TopLeft;  
  

if( state == "pop in" ){ 
	
	scale_AniCurve_I	+= 1/scale_AniCurve_Time;
	if(scale_AniCurve_I >= 1){  scale_AniCurve_I = 1;
		
		if( spawned_Already == false){ state = "draw value 1";  scr_ShakeIt( obj_Control_All.screenShakeTime_OfficeResult1, obj_Control_All.screenShakeAmount_OfficeResult1 );	   }
		if( spawned_Already == true ){ state = "draw value all";  } 
		
		}
	
var _val = animcurve_channel_evaluate(  scale_AniCurve, scale_AniCurve_I  );
	image_xscale = _val * image_xscaleFin;
	image_yscale = _val * image_yscaleFin;	
    headerY      = _val * headerYFin; 
}


#region step by step revealing

if( state == "draw value 1" ){  
  // draw left txt
  scribble( draw_Txt_Left_Value[1] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[1] );

  // draw right txt
  scribble( draw_Txt_Right_Value[1] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[1] ); 
  
  draw_valueTimer[1]++;
  if ( draw_valueTimer[1] >= draw_valueTime[1] ){ draw_valueTimer[1] = 0; state = "draw value 2";   } 
}



if( state == "draw value 2" ){  
  // draw left txt
  scribble( draw_Txt_Left_Value[1] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[1] );
  scribble( draw_Txt_Left_Value[2] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[2] );
  
  // draw right txt
  scribble( draw_Txt_Right_Value[1] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[1] ); 
  scribble( draw_Txt_Right_Value[2] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[2] );  

  draw_valueTimer[2]++;
  if ( draw_valueTimer[2] >= draw_valueTime[2] ){ 

		scr_ShakeIt( obj_Control_All.screenShakeTime_OfficeResult1, obj_Control_All.screenShakeAmount_OfficeResult1 );
	    draw_valueTimer[2] = 0; state = "draw value 3";   }
}



if( state == "draw value 3" ){  
  // draw left txt
  scribble( draw_Txt_Left_Value[1] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[1] );
  scribble( draw_Txt_Left_Value[2] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[2] );
 
  scribble( draw_Txt_Left_Value[4] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[4] );
  
  
  // draw right txt
  scribble( draw_Txt_Right_Value[1] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[1] ); 
  scribble( draw_Txt_Right_Value[2] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[2] ); 
  
  scribble( draw_Txt_Right_Value[4] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[4] );  

  draw_valueTimer[3]++;
  if ( draw_valueTimer[3] >= draw_valueTime[3] ){ 
	  scr_ShakeIt( obj_Control_All.screenShakeTime_OfficeResult1, obj_Control_All.screenShakeAmount_OfficeResult1 );	  
	  draw_valueTimer[3] = 0; state = "draw value 4";   }
}



if( state == "draw value 4" ){  
  // draw left txt
  scribble( draw_Txt_Left_Value[1] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[1] );
  scribble( draw_Txt_Left_Value[2] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[2] );

  scribble( draw_Txt_Left_Value[4] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[4] );
  scribble( draw_Txt_Left_Value[5] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[5] );    
  
  // draw right txt
  scribble( draw_Txt_Right_Value[1] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[1] ); 
  scribble( draw_Txt_Right_Value[2] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[2] ); 
  
  scribble( draw_Txt_Right_Value[4] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[4] );  
  scribble( draw_Txt_Right_Value[5] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[5] );    

  draw_valueTimer[4]++;
  if ( draw_valueTimer[4] >= draw_valueTime[4] ){ 
	  scr_ShakeIt( obj_Control_All.screenShakeTime_OfficeResult1, obj_Control_All.screenShakeAmount_OfficeResult1 );	  
	  draw_valueTimer[4] = 0; state = "draw value 5";   }
}



if( state == "draw value 5" ){  
  // draw left txt
  scribble( draw_Txt_Left_Value[1] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[1] );
  scribble( draw_Txt_Left_Value[2] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[2] );

  scribble( draw_Txt_Left_Value[4] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[4] );
  scribble( draw_Txt_Left_Value[5] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[5] );    
  scribble( draw_Txt_Left_Value[6] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[6] ); 

  // draw right txt
  scribble( draw_Txt_Right_Value[1] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[1] ); 
  scribble( draw_Txt_Right_Value[2] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[2] ); 
  
  scribble( draw_Txt_Right_Value[4] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[4] );  
  scribble( draw_Txt_Right_Value[5] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[5] ); 
  scribble( draw_Txt_Right_Value[6] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[6] );    

  draw_valueTimer[5]++;
  if ( draw_valueTimer[5] >= draw_valueTime[5] ){ 
	  scr_ShakeIt( obj_Control_All.screenShakeTime_OfficeResult2, obj_Control_All.screenShakeAmount_OfficeResult2 );		  
	  draw_valueTimer[5] = 0; state = "draw value all";
	  spawned_Already = true; // set "unlocked"	 
	  
	  // tranfer animation
	var transfer = instance_create_layer(-900,-900, layer, obj_MoneyTransfer);
	    transfer.TranferWhere       =  "office";
	    transfer.save_CurrentMoney  =  obj_Control_All.cashTotalInSave_Office;                // what is the current pool of money
	    transfer.save_ToAddMoney    =  result_Total;                                          // what is the sum to be added/substracted
	    transfer.save_TotalMoney    =  obj_Control_All.cashTotalInSave_Office + result_Total; // what is the outcome!
		
		
	  }
}

 #endregion
 
 
if( state == "draw value all" ){  
  // draw left txt
  scribble( draw_Txt_Left_Value[1] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[1] );
  scribble( draw_Txt_Left_Value[2] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[2] );
  
  scribble( draw_Txt_Left_Value[4] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[4] );  
  scribble( draw_Txt_Left_Value[5] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[5] );  
  scribble( draw_Txt_Left_Value[6] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[6] );  


  // draw right txt
  scribble( draw_Txt_Right_Value[1] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[1] );
  scribble( draw_Txt_Right_Value[2] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[2] );
  
  scribble( draw_Txt_Right_Value[4] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[4] );  
  scribble( draw_Txt_Right_Value[5] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[5] );  
  scribble( draw_Txt_Right_Value[6] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[6] );  




 // draw_line_width(x-resultLine_Width, yy + resultLine_Y, x + resultLine_Width, yy + resultLine_Y, 2 );

  draw_sprite_ext(spr_Office_Result_Bgr,0, x,y+bottom_Bgr_Y, image_xscale, bottom_BgrYScale,0, c_white,1 );
  
  scribble( draw_Txt_Left_Value[8] ).draw( xx + draw_Txt_Left_X, yy + draw_Txt_Y[8] );    
  scribble( draw_Txt_Right_Value[8] ).draw( x + draw_Txt_Right_X, yy + draw_Txt_Y[8] );
  
  draw_sprite_ext(result_ServiceSpr, 0, x + resultX,y+resultY,  resultScale,resultScale, 0, c_white, 1 );

}

/*
draw_text(x,y+180, result_Sold)
draw_text(x,y+220, result_Tips)
draw_text(x,y+260, result_Total)
*/
///draw_text(x,y+150, state)