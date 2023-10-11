/// @description 


// destroy self and other buttons!
// spawn in new buttons!
obj_Button_Parent.canClick = false; // disable!
if ( instance_exists(obj_Button_Exit)  ){ instance_destroy(obj_Button_Exit);  }
if ( instance_exists(obj_Button_Start) ){ instance_destroy(obj_Button_Start);  }


 instance_create_layer(-2000, -2000, layer, obj_Pause_SpawnButtons_Settings);
 
   scr_ShakeIt( obj_Control_All.screenShakeTime_PressButtonSoft, obj_Control_All.screenShakeAmount_PressButtonSoft );
  
 
instance_destroy(self);

