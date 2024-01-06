/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben




x = mouse_x;
y = mouse_y;

var setSpr = spr_Default;

if (instance_exists(obj_Workspace_Control)){
  
  if (obj_Workspace_Control.triangleCanDraw == true){
	   if (!instance_exists(obj_MiniGame_Parent)){
		   setSpr = spr_Next;
      
  }}
}

sprite_index = setSpr; 