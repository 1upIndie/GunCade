/// @description position set


 var camX        = camera_get_view_x( view_camera[0] );
 var camY        = camera_get_view_y( view_camera[0] );
 var camWidth    = camera_get_view_width( view_camera[0] );
 var camHeight   = camera_get_view_height( view_camera[0] );
 var padding =  5;
 x = camX + camWidth - sprite_width - padding - obj_Workspace_Tv_Main.sprite_width;