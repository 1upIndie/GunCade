/// @description 


//	instance_create_layer( camX + buttonX, camY + buttonY[1],  "Instances_Buttons", obj_Button_Settings_Master );
	
	instance_create_layer( camX + buttonX, camY + buttonY[2],  "Instances_Buttons", obj_Button_Graphics_Scale );		
	instance_create_layer( camX + buttonX, camY + buttonY[3],  "Instances_Buttons", obj_Button_Graphics_Fullscreen );	
	
	instance_create_layer( camX + buttonX, camY + buttonY[4],  "Instances_Buttons", obj_Button_Graphics_Back );	
	
	instance_destroy();