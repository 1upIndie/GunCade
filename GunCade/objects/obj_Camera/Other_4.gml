/// @description Insert description here


view_enabled    = 1;
view_visible[0] = true;

var factor = 65;

switch( obj_Control_All.screenScale){
   case 1: factor = factorScale * 1; break; 
   case 2: factor = factorScale * 2; break; 
   case 3: factor = factorScale * 3; break; 
   case 4: factor = factorScale * 4; break; 
}


switch(room){
	 case Room_Workspace: jumpToTargetInstantly = true;
	 		camera_Show_Width   = Aspect_Ratio_Width*factor;
            camera_Show_Height  = Aspect_Ratio_Height*factor ;	
	 break;


}

// jump to target

if instance_exists(obj_CameraDummy       ){ target  = obj_CameraDummy;        }






