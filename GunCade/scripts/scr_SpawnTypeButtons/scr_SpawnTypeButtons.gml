
function scr_SpawnTypeButtons(){

var ooo = obj_Control_All;
var bbb = obj_MiniGame_Parent;

// create instantly all types of weapons, first choise?
if(ooo.unlocked_WeaponType_Melee  == true ){
	var type_Melee  = instance_create_layer( bbb.button_Type_x[0], bbb.button_Type_Y[0],  bbb.layer_ , obj_MiniGame_Button_Type_Melee   );
	    type_Melee.image_xscale = bbb.button_TypeSize;
	    type_Melee.image_yscale = bbb.button_TypeSize;
}

if(ooo.unlocked_WeaponType_Pistol  == true ){
var type_Pistol = instance_create_layer( bbb.button_Type_x[1], bbb.button_Type_Y[0],  bbb.layer_ , obj_MiniGame_Button_Type_Pistol  );
    type_Pistol.image_xscale = bbb.button_TypeSize;
    type_Pistol.image_yscale = bbb.button_TypeSize;	
}


if(ooo.unlocked_WeaponType_Rifle  == true ){
var type_Smg    = instance_create_layer( bbb.button_Type_x[2], bbb.button_Type_Y[0],  bbb.layer_ , obj_MiniGame_Button_Type_Rifle     );
    type_Smg.image_xscale = bbb.button_TypeSize;
    type_Smg.image_yscale = bbb.button_TypeSize;
}



if(ooo.unlocked_WeaponType_Smg  == true ){
	var type_Melee  = instance_create_layer( bbb.button_Type_x[0], bbb.button_Type_Y[1],  bbb.layer_ , obj_MiniGame_Button_Type_Smg   );
	    type_Melee.image_xscale = bbb.button_TypeSize;
	    type_Melee.image_yscale = bbb.button_TypeSize;
}

if(ooo.unlocked_WeaponType_Shotgun  == true ){
var type_Pistol = instance_create_layer( bbb.button_Type_x[1], bbb.button_Type_Y[1],  bbb.layer_ , obj_MiniGame_Button_Type_Shotgun  );
    type_Pistol.image_xscale = bbb.button_TypeSize;
    type_Pistol.image_yscale = bbb.button_TypeSize;	
}


if(ooo.unlocked_WeaponType_ARifle  == true ){
var type_Smg    = instance_create_layer( bbb.button_Type_x[2], bbb.button_Type_Y[1],  bbb.layer_ , obj_MiniGame_Button_Type_ARifle     );
    type_Smg.image_xscale = bbb.button_TypeSize;
    type_Smg.image_yscale = bbb.button_TypeSize;
}	



if(ooo.unlocked_WeaponType_Accessory  == true ){
var type_Smg    = instance_create_layer( bbb.button_Type_x[0], bbb.button_Type_Y[2],  bbb.layer_ , obj_MiniGame_Button_Type_Accessory     );
    type_Smg.image_xscale = bbb.button_TypeSize;
    type_Smg.image_yscale = bbb.button_TypeSize;
}



if(ooo.unlocked_WeaponType_Exotic  == true ){
var type_Smg    = instance_create_layer( bbb.button_Type_x[1], bbb.button_Type_Y[2], bbb.layer_ , obj_MiniGame_Button_Type_Exotic     );
    type_Smg.image_xscale = bbb.button_TypeSize;
    type_Smg.image_yscale = bbb.button_TypeSize;
}

}