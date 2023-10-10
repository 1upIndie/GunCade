/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben




	var  camX        = camera_get_view_x( view_camera[0] );
	var  camY        = camera_get_view_y( view_camera[0] );
	var  camWidth    = camera_get_view_width( view_camera[0] );
	var  camHeight   = camera_get_view_height( view_camera[0] );
	
	
	
	var xx = camX + 50;

	var yy1 = camY + 600;

	
	lerp(save_CurrentMoney, save_TotalMoney, lerpAmount );
	
	var txtOutcome = "Current: " + string(temp_MoneyShown) + "S: " +  string(save_CurrentMoney) +  "  E: " +  string(save_TotalMoney) + "  Lerp: " + string(lerpAmount);  
	draw_text_transformed( xx,yy1, txtOutcome, 2.5,3, 0);