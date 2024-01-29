/// @description reset!


camera_set_view_pos(view_camera[0], saved_Cam_X, saved_Cam_Y);

if (instance_exists(obj_Workspace_Control)){
obj_Workspace_Control.dialogIndex++;
obj_Workspace_Control.blockInput = false;
}





