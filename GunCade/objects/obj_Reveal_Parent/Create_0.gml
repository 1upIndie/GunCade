/// @description 


/// set background layer to visible, since it is needed now
var lay_id = layer_get_id("Instances_CharacterReveal_Bgr");
if( layer_get_visible(lay_id) == 0){ 
	layer_set_visible(lay_id, 1);	
	}

 bgr  = instance_create_layer(0,0, "Instances_CharacterReveal_Bgr" ,      obj_PopUp_NewCharacterBgr);
 char = instance_create_layer(0,0, "Instances_OverlayPopUp" , obj_PopUp_NewCharacter);



char.character_Spr   = spr_Dialog_Victor_SingleImage;
char.name_Spr        = spr_Character_Reveal_name_Victor;
char.descritpion_Spr = spr_Character_Reveal_txt_Victor;