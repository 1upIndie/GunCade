/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben



// Inherit the parent event
event_inherited();
isMain = false;
showSecurityCamAtStart = true;

 var camX        = camera_get_view_x( view_camera[0] );
 var camY        = camera_get_view_y( view_camera[0] );
 var camWidth    = camera_get_view_width( view_camera[0] );
 var camHeight   = camera_get_view_height( view_camera[0] );
 var padding =  5;




alarm[10] = 8;




/*
    programmID = instance_create_layer(x,y, "Instances", obj_TvProgramm_SecurityCam);
    programmID.image_xscale = image_xscale;
    programmID.image_yscale = image_yscale;  

    programmID.tvScaleX = image_xscale;
    programmID.tvScaleY = image_yscale;  
	
	programmID.isMain = isMain; // pass in so text gets correctly scaled!
	*/