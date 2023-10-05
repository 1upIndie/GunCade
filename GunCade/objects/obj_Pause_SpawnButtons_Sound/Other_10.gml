/// @description 


	instance_create_layer( camX + buttonX, camY + buttonY[1],  "Instances_Buttons", obj_Button_Sound_Master );
	
	instance_create_layer( camX + buttonX, camY + buttonY[2],  "Instances_Buttons", obj_Button_Sound_Music );		
	instance_create_layer( camX + buttonX, camY + buttonY[3],  "Instances_Buttons", obj_Button_Sound_Sfx );	
	
	instance_create_layer( camX + buttonX, camY + buttonY[4],  "Instances_Buttons", obj_Button_Sound_Back );	
	
	instance_destroy();