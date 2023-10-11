/// @description 


  scr_ShakeIt( obj_Control_All.screenShakeTime_PressButtonToggle, obj_Control_All.screenShakeAmount_PressButtonToggle );  
  
scr_PlaySound(sound_Left ,0);

obj_Button_Parent.canClick = false; // disable!
instance_destroy(obj_Button_Parent);


 //instance_create_layer(-2000, -2000, layer, obj_Pause_SpawnButtons_Settings);
 instance_create_layer(-2000, -2000, layer, obj_Pause_SpawnButtons_Start);