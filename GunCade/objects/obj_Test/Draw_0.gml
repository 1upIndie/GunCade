/// @description 
var txt = "nope";
var count = 0;




if instance_exists(obj_Workspace_Control){

txt = "Npc Talking " + string(obj_Workspace_Control.array_NpcTalking[obj_Workspace_Control.dialogIndex]);


}

draw_text(x,y, txt)