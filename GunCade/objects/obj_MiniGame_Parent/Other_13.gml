/// @description reset additional text!

// null to reset it!
array_resize(array_AdditionalTxt, 0);

var indexArray = 0;
var sprite_indexSet = 1;
	var i = 0;
    var isSet = 0;

if (instance_exists( obj_MiniGame_Drop_Ammo)){  
	if( obj_MiniGame_Drop_Ammo.attachment_Active == sprite_indexSet ){ isSet = 1; } else { isSet = 0;  }
	 i = obj_MiniGame_Drop_Ammo.save_Index_Weapon;
	  
	if(isSet == 1){
	array_AdditionalTxt[indexArray] = obj_Control_All.array_DetailWeaponText[i].txt_Bill; }
	indexArray++;
	}
	
	
if (instance_exists( obj_MiniGame_Drop_Grip)){  
	if( obj_MiniGame_Drop_Ammo.attachment_Active == sprite_indexSet ){ isSet = 1; } else { isSet = 0;  }	
	 i = obj_MiniGame_Drop_Grip.save_Index_Weapon;
	
	if(isSet == 1){
	array_AdditionalTxt[indexArray] = obj_Control_All.array_DetailWeaponText[i].txt_Bill; }
	indexArray++;
	}	
	
	
if (instance_exists( obj_MiniGame_Drop_LaserPointer)){  
	if( obj_MiniGame_Drop_Ammo.attachment_Active == sprite_indexSet ){ isSet = 1; } else { isSet = 0;  }	
	 i = obj_MiniGame_Drop_LaserPointer.save_Index_Weapon;
	
	if(isSet == 1){
	array_AdditionalTxt[indexArray] = obj_Control_All.array_DetailWeaponText[i].txt_Bill; }
	indexArray++;
	}	
	
	
if (instance_exists( obj_MiniGame_Drop_Muzzle)){  
	if( obj_MiniGame_Drop_Ammo.attachment_Active == sprite_indexSet ){ isSet = 1; } else { isSet = 0;  }	
	 i = obj_MiniGame_Drop_Muzzle.save_Index_Weapon;
	
	if(isSet == 1){
	array_AdditionalTxt[indexArray] = obj_Control_All.array_DetailWeaponText[i].txt_Bill; }
	indexArray++;
	}	
	
	
	
if (instance_exists( obj_MiniGame_Drop_Optics)){  
	if( obj_MiniGame_Drop_Ammo.attachment_Active == sprite_indexSet ){ isSet = 1; } else { isSet = 0;  }	
	 i = obj_MiniGame_Drop_Optics.save_Index_Weapon;
	
	if(isSet == 1){
	array_AdditionalTxt[indexArray] = obj_Control_All.array_DetailWeaponText[i].txt_Bill; }
	indexArray++;
	}		
	
	
	
	
if (instance_exists( obj_MiniGame_Drop_Stock)){  
	if( obj_MiniGame_Drop_Ammo.attachment_Active == sprite_indexSet ){ isSet = 1; } else { isSet = 0;  }	
	 i = obj_MiniGame_Drop_Stock.save_Index_Weapon;
	
	if(isSet == 1){
	array_AdditionalTxt[indexArray] = obj_Control_All.array_DetailWeaponText[i].txt_Bill; }
	indexArray++;
	}	
	
	
/// test values	
	/*
var	 txtCost = obj_Control_All.array_DetailWeaponText[80].txt_Bill;

array_resize(array_AdditionalTxt, 0);
array_AdditionalTxt[0] = txtCost;
array_AdditionalTxt[1] = txtCost;
array_AdditionalTxt[2] = txtCost;
array_AdditionalTxt[3] = txtCost;
array_AdditionalTxt[4] = txtCost;
array_AdditionalTxt[5] = txtCost;
*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	