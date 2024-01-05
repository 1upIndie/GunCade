
/// @description override

// Inherit the parent event
event_inherited();
// obj_Control_All.payKyleRansomeThisTime_Day_7 = true; 


var sum = obj_Control_All.cashTotalInSave_Office + obj_Control_All.cashSumOnDay;

if ( sum >= 8000){  toSkipTo_Index  = 600;   } // after that still choice to refuse with enough money
if ( sum < 8000 ){  toSkipTo_Index  = 620;   }








