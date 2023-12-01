/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben



	var  camX        = camera_get_view_x( view_camera[0] );
	var  camY        = camera_get_view_y( view_camera[0] );
	var  camWidth    = camera_get_view_width( view_camera[0] );
	var  camHeight   = camera_get_view_height( view_camera[0] );	
	
	var txt = "nope";
	 	 txt = "Why are you here?";
	draw_text( camX + camWidth/2, camY + camHeight/2, txt);
