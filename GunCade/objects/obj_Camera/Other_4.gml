/// @description Insert description here


view_enabled    = 1;
view_visible[0] = true;

var factor = 65;




switch(room){
	 case Room_Workspace: jumpToTargetInstantly = true;
	 		camera_Show_Width   = Aspect_Ratio_Width*factor;
            camera_Show_Height  = Aspect_Ratio_Height*factor ;	
	 break;


}

// jump to target

if instance_exists(obj_CameraDummy       ){ target  = obj_CameraDummy;        }






