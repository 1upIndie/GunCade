

canDraw       = false;

state = "";
fullyPoppedIn = false;




alarm[0] = 2; // enable drawing
#region // get values 

result_Total = 0;

result_Sold    = 0;
result_Tips    = 0;
result_Service = 0;


var sold_I = 0;
repeat( array_length(obj_Control_All.tempDay_Sold)){
  result_Sold  +=  obj_Control_All.tempDay_Sold[sold_I];
  result_Total +=  obj_Control_All.tempDay_Sold[sold_I];
  sold_I++;
}


var tips_I = 0;
repeat( array_length(obj_Control_All.tempDay_Tips)){
  result_Tips  +=  obj_Control_All.tempDay_Tips[tips_I];
  result_Total +=  obj_Control_All.tempDay_Tips[tips_I];
  tips_I++;
}
  
  // add up also minus values!
  result_Total += obj_Control_All.tempDay_Costs_NewWeapons   = 0; 
  result_Total += obj_Control_All.tempDay_Costs_Wife         = 0;
  result_Total += obj_Control_All.tempDay_Costs_Kyle         = 0;

var service_Is_PerfectTotal = true;
var service_Is_GoodTotal_Collect     = 0;
var service_Is_FailedTotal_Collect   = 0; // less weigthed, so good can be achieved easier
var service_Is_RefuseTotal_Collect   = 0; // negative value!

var service_I = 0;
repeat( array_length(obj_Control_All.tempDay_Service)){
  
  // exclude perfect instantly if not sold correctly or refused!
  if( obj_Control_All.tempDay_Service[service_I] != "perfect"){ service_Is_PerfectTotal = false; }	


  /// collect and compare what is bigger!
  if( obj_Control_All.tempDay_Service[service_I] == "good"    ){ service_Is_GoodTotal_Collect++; }	
  if( obj_Control_All.tempDay_Service[service_I] == "failed"  ){ service_Is_GoodTotal_Collect += 0.75; }	
  if( obj_Control_All.tempDay_Service[service_I] == "refuse"  ){ service_Is_GoodTotal_Collect--; }

  service_I++;
}

// compare and see what serice has been done
var skip2ndCheck = false;
 
 if(service_Is_PerfectTotal == true){ skip2ndCheck = true; result_Service = "perfect";   }
 
 if( skip2ndCheck == false){ 
	 
	 // first check if if good is higher then failed
	 var secondCheckValue = service_Is_GoodTotal_Collect; // getting biggest value to compare
	 if(service_Is_GoodTotal_Collect > service_Is_FailedTotal_Collect ){ result_Service = "good";  } 
	  else { result_Service = "failed"; secondCheckValue = service_Is_FailedTotal_Collect;  } 
	 
	 // override is refused even bigger
	 if( service_Is_RefuseTotal_Collect > secondCheckValue){ result_Service = "no service"; }
	 
 }
#endregion


#region pop in animation + draw values
 
 image_xscale = 0;
 image_yscale = 0;


 image_xscaleFin = 1.8;
 image_yscaleFin = 1.8; 

  x_TopLeft = -( (sprite_get_width(spr_Office_Result_Bgr)  * image_xscaleFin) /2);
  y_TopLeft = -( (sprite_get_height(spr_Office_Result_Bgr) * image_yscaleFin) /2);  

  headerScale = 0.5;
 headerY    = 0;
 headerYFin = -250


scale_AniCurve      = animcurve_get_channel( aniCurve_CharPopIn_Bounce, 0 );
scale_AniCurve_I    = 0;
scale_AniCurve_Time = 20;

draw_valueTime[1]  = 8;
draw_valueTimer[1] = 0;

draw_valueTime[2]  = 8;
draw_valueTimer[3] = 0;

draw_valueTime[4]  = 8;
draw_valueTimer[4] = 0;

draw_valueTime[5]  = 8;
draw_valueTimer[5] = 0;

draw_valueTime[6]  = 8;
draw_valueTimer[6] = 0;



var prefix      =   obj_Control_All.textResultDefault_OfficePrefix;
var suffix      =   obj_Control_All.textResultDefault_OfficeSuffix; 

var prefixTotal =   obj_Control_All.textResultTotalDefault_OfficePrefix;
var suffixTotal =   obj_Control_All.textResultTotalDefault_OfficeSuffix;


draw_Txt_Left_Value[1] = prefix + "Total sold" + suffix;
draw_Txt_Left_Value[2] = prefix + "Tips" + suffix;

draw_Txt_Left_Value[4] = prefix + "New inventory" + suffix;
draw_Txt_Left_Value[5] = prefix + "Wife expenses" + suffix;
draw_Txt_Left_Value[6] = prefix + "Kyle expenses" + suffix;

draw_Txt_Left_Value[8] = prefixTotal + "Today's total" + suffixTotal;



draw_Txt_Right_Value[1] =  prefix + string(result_Sold) + "$";
draw_Txt_Right_Value[2] =  prefix + "$" + string(result_Tips) + "$";

draw_Txt_Right_Value[4] = prefix + string(obj_Control_All.tempDay_Costs_NewWeapons) + "$" + suffix;
draw_Txt_Right_Value[5] = prefix + string(obj_Control_All.tempDay_Costs_Wife)       + "$" +  suffix;
draw_Txt_Right_Value[6] = prefix + string(obj_Control_All.tempDay_Costs_Kyle)       + "$" +  suffix;

draw_Txt_Right_Value[8] =  prefixTotal + string(result_Total) + "$" +  suffixTotal;
//draw_Txt_Right_Value[9] = result_Service;

draw_Txt_Left_X  =  40;
draw_Txt_Right_X =    ((sprite_get_width(spr_Office_Result_Bgr)  * image_xscaleFin) /2) - 150;

var startTxtY = 25;
var addTxtY   = 35;

draw_Txt_Y[1] = startTxtY + (0 *addTxtY);
draw_Txt_Y[2] = startTxtY + (1 *addTxtY);
draw_Txt_Y[3] = startTxtY + (2 *addTxtY);
draw_Txt_Y[4] = startTxtY + (3 *addTxtY);
draw_Txt_Y[5] = startTxtY + (4 *addTxtY);
draw_Txt_Y[6] = startTxtY + (5 *addTxtY);
draw_Txt_Y[8] = startTxtY + (7 *addTxtY);

resultX = 0;
resultY = 200;
 resultScale = 1;
 
 
#endregion






// clear values!