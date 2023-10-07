/// @description position set
 var topyPadding = 5;
 var rightPadding = -4;
 
 var camX        = camera_get_view_x( view_camera[0] );
 var camY        = camera_get_view_y( view_camera[0] );
 var camWidth    = camera_get_view_width( view_camera[0] );
 var camHeight   = camera_get_view_height( view_camera[0] );

 // image_xscale = 0.275;
 // image_yscale = 0.27; 

// x = camX + camWidth - sprite_width + rightPadding - 2;
// y = camY + topyPadding;
 

 

var scale = 0.1;

 
/*
 var getW = sprite_get_width( spr_Tv_Rhamen  );
 var getH = sprite_get_height( spr_Tv_Rhamen );

 
 var miniTv_X = x- (getW * scale)  + rightPadding-1;
 
 instance_create_layer(miniTv_X , camY + topyPadding, "Instances_TV", obj_Workspace_Tv_Small, {
	  image_xscale : scale,
	  image_yscale : scale  
 });

 instance_create_layer(miniTv_X, camY + topyPadding + (getH * scale), "Instances_TV", obj_Workspace_Tv_Small, {
	  image_xscale : scale,
	  image_yscale : scale  
 });
 

 // create radio
 instance_create_layer(-500, camY + topyPadding + sprite_height - 50 , "Instances_TV", obj_Radio, {
	  image_xscale : 0.57,
	  image_yscale : 0.58  
 });
*/ 
 
   // spawn programm
 	event_user(0);