// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_Destroy_Type_alphabet(){
	
	// destroy type
  if ( instance_exists(obj_MiniGame_Button_Type_Melee) ){ instance_destroy(obj_MiniGame_Button_Type_Melee);  }
  if ( instance_exists(obj_MiniGame_Button_Type_Pistol) ){ instance_destroy(obj_MiniGame_Button_Type_Pistol);  }  
  if ( instance_exists(obj_MiniGame_Button_Type_Rifle) ){ instance_destroy(obj_MiniGame_Button_Type_Rifle);  }
  
  if ( instance_exists(obj_MiniGame_Button_Type_Shotgun) ){ instance_destroy(obj_MiniGame_Button_Type_Shotgun);  }  
  if ( instance_exists(obj_MiniGame_Button_Type_Smg) ){ instance_destroy(obj_MiniGame_Button_Type_Smg);  }  
  if ( instance_exists(obj_MiniGame_Button_Type_ARifle) ){ instance_destroy(obj_MiniGame_Button_Type_ARifle);  }  
  
  if ( instance_exists(obj_MiniGame_Button_Type_Heavy) ){ instance_destroy(obj_MiniGame_Button_Type_Heavy);  }   
  if ( instance_exists(obj_MiniGame_Button_Type_Exotic) ){ instance_destroy(obj_MiniGame_Button_Type_Exotic);  }  
  if ( instance_exists(obj_MiniGame_Button_Type_Accessory) ){ instance_destroy(obj_MiniGame_Button_Type_Accessory);  }    
   
   // destroy alphabet
   
   // destroy old detail
     if ( instance_exists(obj_Selected_WeaponDetailTxt) ){ instance_destroy(obj_Selected_WeaponDetailTxt);  }   
}