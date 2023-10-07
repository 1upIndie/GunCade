/// @description create cam


// view_enabled    = 1;
// view_visible[0] = true;

/// new approach
var camStartX = 0;
var camStartY = 0;

if( instance_exists( obj_CameraDummy )){
 camStartX = obj_CameraDummy.x;
 camStartY = obj_CameraDummy.y;
}

view_camera[0] = camera_create_view(camStartX, camStartY, 640, 360 );


var factor = 65;

//if( obj_Control_All.fullscreen == false){
/*
switch( obj_Control_All.screenScale){
   case 1: factor = factorScale * 1; break; 
   case 2: factor = factorScale * 2; break; 
   case 3: factor = factorScale * 3; break; 
   case 4: factor = factorScale * 4; break; 
  }
//}


/*
switch(room){
	 case Room_Workspace: jumpToTargetInstantly = true;
	 		camera_Show_Width   = Aspect_Ratio_Width*factor;
            camera_Show_Height  = Aspect_Ratio_Height*factor ;	
	 break;

	 case room_StartScreen: jumpToTargetInstantly = true;
	 		camera_Show_Width   = Aspect_Ratio_Width*factor;
            camera_Show_Height  = Aspect_Ratio_Height*factor ;	
	 break;
}
*/


// jump to target
if instance_exists(obj_CameraDummy       ){ target  = obj_CameraDummy;        }






