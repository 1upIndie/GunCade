
// Inherit the parent event
event_inherited();

var hasPermit = obj_Control_All.array_OfficeProp[5].prop_isUnlocked; // permit 5
// permit check from day 1
if( hasPermit == true   ){ toSkipTo_Index = 100; }
if( hasPermit == false  ){ toSkipTo_Index = 101; }



