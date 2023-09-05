/// @description reset additional text!

// null to reset it!
array_resize(array_AdditionalTxt, 0);

var indexArray = 0;

	var i = 0;
    var isSet = 0;

if (instance_exists( obj_MiniGame_Drop_Ammo)){  
	if( obj_MiniGame_Drop_Ammo.sprite_index == 0 ){ isSet = 1; } else { isSet = 0;  }
	 i = obj_MiniGame_Drop_Ammo.save_Index_Weapon;
	  
	if(isSet == 1){
	array_AdditionalTxt[indexArray] = obj_Control_All.array_DetailWeaponText[i].txt_Bill; }
	
	}
	
	
if (instance_exists( obj_MiniGame_Drop_Grip)){  
	if( obj_MiniGame_Drop_Ammo.sprite_index == 0 ){ isSet = 1; } else { isSet = 0;  }	
	 i = obj_MiniGame_Drop_Grip.save_Index_Weapon;
	
	if(isSet == 1){
	array_AdditionalTxt[indexArray] = obj_Control_All.array_DetailWeaponText[i].txt_Bill; }
	indexArray++;
	}	
	
	
if (instance_exists( obj_MiniGame_Drop_LaserPointer)){  
	if( obj_MiniGame_Drop_Ammo.sprite_index== 0 ){ isSet = 1; } else { isSet = 0;  }	
	 i = obj_MiniGame_Drop_LaserPointer.save_Index_Weapon;
	
	if(isSet == 1){
	array_AdditionalTxt[indexArray] = obj_Control_All.array_DetailWeaponText[i].txt_Bill; }
	indexArray++;
	}	
	
	
if (instance_exists( obj_MiniGame_Drop_Muzzle)){  
	if( obj_MiniGame_Drop_Ammo.sprite_index== 0 ){ isSet = 1; } else { isSet = 0;  }	
	 i = obj_MiniGame_Drop_Muzzle.save_Index_Weapon;
	
	if(isSet == 1){
	array_AdditionalTxt[indexArray] = obj_Control_All.array_DetailWeaponText[i].txt_Bill; }
	indexArray++;
	}	
	
	
	
if (instance_exists( obj_MiniGame_Drop_Optics)){  
	if( obj_MiniGame_Drop_Ammo.sprite_index== 0 ){ isSet = 1; } else { isSet = 0;  }	
	 i = obj_MiniGame_Drop_Optics.save_Index_Weapon;
	
	if(isSet == 1){
	array_AdditionalTxt[indexArray] = obj_Control_All.array_DetailWeaponText[i].txt_Bill; }
	indexArray++;
	}		
	
	
	
	
if (instance_exists( obj_MiniGame_Drop_Stock)){  
	if( obj_MiniGame_Drop_Ammo.sprite_index== 0 ){ isSet = 1; } else { isSet = 0;  }	
	 i = obj_MiniGame_Drop_Stock.save_Index_Weapon;
	
	if(isSet == 1){
	array_AdditionalTxt[indexArray] = obj_Control_All.array_DetailWeaponText[i].txt_Bill; }
	indexArray++;
	}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	