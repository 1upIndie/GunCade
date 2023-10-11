/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


  scr_ShakeIt( obj_Control_All.screenShakeTime_PressButton, obj_Control_All.screenShakeAmount_PressButton );  

var jump = instance_create_layer(x,y, "Instances", obj_Transition_GotoLevel );

jump.levelJumpTo = Room_Workspace;