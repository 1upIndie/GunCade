
function scr_CreateTempWeapon(reset_, setSprite_){


if (!instance_exists(obj_Temp_Drag) and obj_MiniGame_Parent.inputCoolDown == false){

var size = obj_MiniGame_Parent.button_ResultSelected_Size;
var getSpr      = setSprite_;
var setWhatIsIt = whatisIt;


	var tempWeapon = instance_create_layer(mouse_x, mouse_y, "Instances_MiniGame", obj_Temp_Drag, {
		 sprite_index : getSpr,
		 image_xscale : size,
		 image_yscale : size 
 
	}  );

tempWeapon.whatisIt  = whatisIt;
obj_MiniGame_Parent.inputCoolDown      = true;

// set to be not placeable!!
var indexAttach = 0;

var impossible      = false;
var impossibleColor = c_white;

var weapon_IndexGEt = -999;
switch(whatisIt){
    case "melee 1": 	weapon_IndexGEt = 0; break;
    case "melee 2": 	weapon_IndexGEt = 1; break;
    case "melee 3": 	weapon_IndexGEt = 2; break;	

    case "pistol 1": 	weapon_IndexGEt = 10; break;
    case "pistol 2": 	weapon_IndexGEt = 11; break;
    case "pistol 3": 	weapon_IndexGEt = 12; break;	



    case "laser pointer":  if( obj_MiniGame_Parent.Attachments_CanPlace_Laser   == false ){ impossible = true; impossibleColor = c_red; } break;
    case "muzzle":         if( obj_MiniGame_Parent.Attachments_CanPlace_Muzzle  == false ){ impossible = true; impossibleColor = c_red; } break;
    case "optics":         if( obj_MiniGame_Parent.Attachments_CanPlace_Optics  == false ){ impossible = true; impossibleColor = c_red; } break;
	
    case "stock":          if( obj_MiniGame_Parent.Attachments_CanPlace_Stock   == false ){ impossible = true; impossibleColor = c_red; } break;
    case "scope":          if( obj_MiniGame_Parent.Attachments_CanPlace_Scope   == false ){ impossible = true; impossibleColor = c_red; } break;
}


tempWeapon.impossibleDrop = impossible;
tempWeapon.image_blend    = impossibleColor;

// if reset is true, reset to default status
if(reset_ == true){
   state = "blink";
   image_alpha  = 0.6;
   sprite_index = spr_MiniGame_Pistol_Empty;
  }
  
  
 // also create preview 
  if ( instance_exists(obj_MiniGame_Button_Type_Melee) ){ instance_destroy(obj_MiniGame_Button_Type_Melee);  }
  if ( instance_exists(obj_MiniGame_Button_Type_Pistol) ){ instance_destroy(obj_MiniGame_Button_Type_Pistol);  }  
  if ( instance_exists(obj_MiniGame_Button_Type_Rifle) ){ instance_destroy(obj_MiniGame_Button_Type_Rifle);  }
  
  if ( instance_exists(obj_MiniGame_Button_Type_Shotgun) ){ instance_destroy(obj_MiniGame_Button_Type_Shotgun);  }  
  if ( instance_exists(obj_MiniGame_Button_Type_Smg) ){ instance_destroy(obj_MiniGame_Button_Type_Smg);  }  
  if ( instance_exists(obj_MiniGame_Button_Type_ARifle) ){ instance_destroy(obj_MiniGame_Button_Type_ARifle);  }  
  
  if ( instance_exists(obj_MiniGame_Button_Type_Exotic) ){ instance_destroy(obj_MiniGame_Button_Type_Exotic);  }  
  if ( instance_exists(obj_MiniGame_Button_Type_Accessory) ){ instance_destroy(obj_MiniGame_Button_Type_Accessory);  }    

  if ( instance_exists(obj_Selected_WeaponDetailTxt) ){ instance_destroy(obj_Selected_WeaponDetailTxt);  }   


// only spawn if set!
if ( weapon_IndexGEt != -999){

 var detailTxt = instance_create_layer(0,0, "Instances_MiniGame",   obj_Selected_WeaponDetailTxt);
     detailTxt.weaponSpr         = obj_Control_All.array_DetailWeaponText[weapon_IndexGEt].weaponSpr;
     detailTxt.headLineText      = obj_Control_All.array_DetailWeaponText[weapon_IndexGEt].headLineText;
     detailTxt.descriptionText1  = obj_Control_All.array_DetailWeaponText[weapon_IndexGEt].descriptionText1;
     detailTxt.descriptionText2  = obj_Control_All.array_DetailWeaponText[weapon_IndexGEt].descriptionText2;
     detailTxt.costText          = obj_Control_All.array_DetailWeaponText[weapon_IndexGEt].costText;
     detailTxt.cost              = obj_Control_All.array_DetailWeaponText[weapon_IndexGEt].cost; 
}


} // if positive create temp end

} // end of script