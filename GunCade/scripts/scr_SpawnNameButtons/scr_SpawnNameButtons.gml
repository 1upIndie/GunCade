
function scr_SpawnNameButtons(){

var ooo = obj_Control_All;
var bbb = obj_MiniGame_Parent;

// create instantly all types of weapons, first choise?
if(ooo.unlocked_WeaponType_Melee  == true ){
	var type_Melee  = instance_create_layer( bbb.button_Name_x[0], bbb.button_Name_Y[0],  bbb.layer_ , obj_MiniGame_Button_Name_A   );
	    type_Melee.image_xscale = bbb.button_NameSize;
	    type_Melee.image_yscale = bbb.button_NameSize;
}





//////////
} // end of script
