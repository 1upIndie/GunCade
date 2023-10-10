/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
x = mouse_x;
y = mouse_y+40;

/*
var mb = mouse_check_button_released(mb_right);

if(mb == true){
	
var bgr  = instance_create_layer(0,0, "Instances_CharacterReveal_Bgr" ,      obj_PopUp_NewCharacterBgr);
var char = instance_create_layer(0,0, "Instances_OverlayPopUp" , obj_PopUp_NewCharacter);

char.character_Spr   = spr_Dialog_Betty_Idle;
char.name_Spr        = spr_Character_Reveal_name_Granny;
char.descritpion_Spr = spr_Character_Reveal_txt_Jez;

}
*/

var mb = mouse_check_button_released(mb_right);
mb = 0;
if(mb == true){
	 if (instance_exists(obj_Office_Result_Pop) == false){
	
	var camX        = camera_get_view_x( view_camera[0] );
	var camY        = camera_get_view_y( view_camera[0] );
	var camWidth    = camera_get_view_width( view_camera[0] );
	var camHeight   = camera_get_view_height( view_camera[0] );
	
	
	 instance_create_layer( camX + (camWidth/2), mouse_y, "Instances_Top" , obj_Office_Result_Pop);
	 } else { instance_destroy(obj_Office_Result_Pop); }
	//scr_particle_create( particleSys_OfficeBuy,  mouse_x, mouse_y )
}



