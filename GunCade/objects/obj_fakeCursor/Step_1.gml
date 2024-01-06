/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben




x = mouse_x;
y = mouse_y;

var setSpr = spr_Default;
var owc = obj_Workspace_Control;
if (instance_exists(obj_Workspace_Control)){
  
  if (obj_Workspace_Control.triangleCanDraw == true){
	   if (!instance_exists(obj_MiniGame_Parent)){
		   
		   if(mouse_y > owc.camY + owc.camHeight + owc.ui_BlackBox_DialogText_Y){
		   setSpr = spr_Next;
		   }
      
  }}
}

//draw_sprite_ext(spr_Ui_BalkenNew_1px, 0, camX - 20, camY + camHeight + ui_BlackBox_DialogText_Y, ui_BlackBox_DialogText_ScaleX, ui_BlackBox_DialogText_ScaleY, 0, ui_trennerToTextCol, 1  );



sprite_index = setSpr; 