// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_CleanResetAttachments(){
// melee 0-10 pistols 10-20, rifles 20-30,  smg 30-40, shotgun 40-50, ar, 50-60, exotics 60-70

var indexAttach = -999;
switch(whatisIt){
    case "melee 1":  indexAttach = 0; break;
    case "melee 2":  indexAttach = 1; break;
    case "melee 3":  indexAttach = 2; break;	
	
    case "pistol 1":  indexAttach = 10; break;
    case "pistol 2":  indexAttach = 11; break;
    case "pistol 3":  indexAttach = 12; break;
	
    case "rifle 1":  indexAttach = 20; break;
    case "rifle 2":  indexAttach = 21; break;
    case "rifle 3":  indexAttach = 22; break;	
	
    case "smg 1":  indexAttach = 30; break;
    case "smg 2":  indexAttach = 31; break;
    case "smg 3":  indexAttach = 32; break;		
	
    case "shotgun 1":  indexAttach = 40; break;
    case "shotgun 2":  indexAttach = 41; break;
    case "shotgun 3":  indexAttach = 42; break;	

    case "ar 1":  indexAttach = 50; break;
    case "ar 2":  indexAttach = 51; break;
    case "ar 3":  indexAttach = 52; break;	

    case "exotic 1":  indexAttach = 60; break;
    case "exotic 2":  indexAttach = 61; break;
    case "exotic 3":  indexAttach = 62; break;	

}


    if (indexAttach != -999){
    // apply to attachments
	
	obj_MiniGame_Drop_LaserPointer.sprite_index = spr_MiniGame_Invisible;
	obj_MiniGame_Drop_LaserPointer.weaponSpr    = obj_MiniGame_Parent.arrayAttachments[indexAttach].Lpointer_Spr;
	obj_MiniGame_Drop_LaserPointer.x            = obj_MiniGame_Parent.arrayAttachments[indexAttach].Lpointer_X;    
	obj_MiniGame_Drop_LaserPointer.y            = obj_MiniGame_Parent.arrayAttachments[indexAttach].Lpointer_Y;     
	obj_MiniGame_Drop_LaserPointer.image_xscale = obj_MiniGame_Parent.arrayAttachments[indexAttach].Lpointer_Size;  
	obj_MiniGame_Drop_LaserPointer.image_yscale = obj_MiniGame_Parent.arrayAttachments[indexAttach].Lpointer_Size

	obj_MiniGame_Drop_Optics.sprite_index = spr_MiniGame_Invisible;
	obj_MiniGame_Drop_Optics.weaponSpr    = obj_MiniGame_Parent.arrayAttachments[indexAttach].optics_Spr; 
	obj_MiniGame_Drop_Optics.x            = obj_MiniGame_Parent.arrayAttachments[indexAttach].optics_X;    
	obj_MiniGame_Drop_Optics.y            = obj_MiniGame_Parent.arrayAttachments[indexAttach].optics_Y;     
	obj_MiniGame_Drop_Optics.image_xscale = obj_MiniGame_Parent.arrayAttachments[indexAttach].optics_Size;  
	obj_MiniGame_Drop_Optics.image_yscale = obj_MiniGame_Parent.arrayAttachments[indexAttach].optics_Size;  

	obj_MiniGame_Drop_Scope.sprite_index = spr_MiniGame_Invisible;
	obj_MiniGame_Drop_Scope.weaponSpr    = obj_MiniGame_Parent.arrayAttachments[indexAttach].scope_Spr;  
	obj_MiniGame_Drop_Scope.x            = obj_MiniGame_Parent.arrayAttachments[indexAttach].scope_X;    
	obj_MiniGame_Drop_Scope.y            = obj_MiniGame_Parent.arrayAttachments[indexAttach].scope_Y;    
	obj_MiniGame_Drop_Scope.image_xscale = obj_MiniGame_Parent.arrayAttachments[indexAttach].scope_Size; 
	obj_MiniGame_Drop_Scope.image_yscale = obj_MiniGame_Parent.arrayAttachments[indexAttach].scope_Size; 

	obj_MiniGame_Drop_Stock.sprite_index = spr_MiniGame_Invisible;
	obj_MiniGame_Drop_Stock.weaponSpr    = obj_MiniGame_Parent.arrayAttachments[indexAttach].stock_Spr; 
	obj_MiniGame_Drop_Stock.x            = obj_MiniGame_Parent.arrayAttachments[indexAttach].stock_X;    
	obj_MiniGame_Drop_Stock.y            = obj_MiniGame_Parent.arrayAttachments[indexAttach].stock_Y;    
	obj_MiniGame_Drop_Stock.image_xscale = obj_MiniGame_Parent.arrayAttachments[indexAttach].stock_Size; 
	obj_MiniGame_Drop_Stock.image_yscale = obj_MiniGame_Parent.arrayAttachments[indexAttach].stock_Size; 

	obj_MiniGame_Drop_Muzzle.sprite_index = spr_MiniGame_Invisible;
	obj_MiniGame_Drop_Muzzle.weaponSpr    = obj_MiniGame_Parent.arrayAttachments[indexAttach].muzzle_Spr; 
	obj_MiniGame_Drop_Muzzle.x            = obj_MiniGame_Parent.arrayAttachments[indexAttach].muzzle_X;    
	obj_MiniGame_Drop_Muzzle.y            = obj_MiniGame_Parent.arrayAttachments[indexAttach].muzzle_Y;    
	obj_MiniGame_Drop_Muzzle.image_xscale = obj_MiniGame_Parent.arrayAttachments[indexAttach].muzzle_Size; 
	obj_MiniGame_Drop_Muzzle.image_yscale = obj_MiniGame_Parent.arrayAttachments[indexAttach].muzzle_Size;
	} else {
	
		obj_MiniGame_Drop_LaserPointer.sprite_index = spr_MiniGame_Invisible;	
		obj_MiniGame_Drop_Optics.sprite_index       = spr_MiniGame_Invisible;
		obj_MiniGame_Drop_Scope.sprite_index        = spr_MiniGame_Invisible;
		obj_MiniGame_Drop_Stock.sprite_index        = spr_MiniGame_Invisible;
		obj_MiniGame_Drop_Muzzle.sprite_index       = spr_MiniGame_Invisible;

		obj_MiniGame_Drop_LaserPointer.weaponSpr = spr_MiniGame_Invisible;	
		obj_MiniGame_Drop_Optics.weaponSpr       = spr_MiniGame_Invisible;
		obj_MiniGame_Drop_Scope.weaponSpr        = spr_MiniGame_Invisible;
		obj_MiniGame_Drop_Stock.weaponSpr        = spr_MiniGame_Invisible;
		obj_MiniGame_Drop_Muzzle.weaponSpr       = spr_MiniGame_Invisible;
		
	}
	
	
	if( obj_MiniGame_Drop_LaserPointer.weaponSpr != spr_MiniGame_Invisible){ obj_MiniGame_Parent.Attachments_CanPlace_Laser  = true;  }
	if( obj_MiniGame_Drop_Optics.weaponSpr       != spr_MiniGame_Invisible){ obj_MiniGame_Parent.Attachments_CanPlace_Optics = true;  }
	if( obj_MiniGame_Drop_Muzzle.weaponSpr       != spr_MiniGame_Invisible){ obj_MiniGame_Parent.Attachments_CanPlace_Muzzle = true;  }
	if( obj_MiniGame_Drop_Stock.weaponSpr        != spr_MiniGame_Invisible){ obj_MiniGame_Parent.Attachments_CanPlace_Stock  = true;  }
	if( obj_MiniGame_Drop_Scope.weaponSpr        != spr_MiniGame_Invisible){ obj_MiniGame_Parent.Attachments_CanPlace_Scope  = true;  }


	
}