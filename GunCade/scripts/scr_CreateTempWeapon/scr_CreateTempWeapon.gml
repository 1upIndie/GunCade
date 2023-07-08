
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
    case "melee 4": 	weapon_IndexGEt = 3; break;
    case "melee 5": 	weapon_IndexGEt = 4; break;	


    case "pistol 1": 	weapon_IndexGEt = 10; break;
    case "pistol 2": 	weapon_IndexGEt = 11; break;
    case "pistol 3": 	weapon_IndexGEt = 12; break;	
    case "pistol 4": 	weapon_IndexGEt = 13; break;	
    case "pistol 5": 	weapon_IndexGEt = 14; break;	

    case "smg 1": 	weapon_IndexGEt = 30; break;
    case "smg 2": 	weapon_IndexGEt = 31; break;
    case "smg 3": 	weapon_IndexGEt = 32; break;	
    case "smg 4": 	weapon_IndexGEt = 33; break;	
    case "smg 5": 	weapon_IndexGEt = 34; break;	

    case "rifle 1": 	weapon_IndexGEt = 20; break;
    case "rifle 2": 	weapon_IndexGEt = 21; break;
    case "rifle 3": 	weapon_IndexGEt = 22; break;	
    case "rifle 4": 	weapon_IndexGEt = 23; break;	
    case "rifle 5": 	weapon_IndexGEt = 24; break;	


    case "shotgun 1": 	weapon_IndexGEt = 40; break;
    case "shotgun 2": 	weapon_IndexGEt = 41; break;
    case "shotgun 3": 	weapon_IndexGEt = 42; break;	
    case "shotgun 4": 	weapon_IndexGEt = 43; break;	
    case "shotgun 5": 	weapon_IndexGEt = 44; break;	
	

    case "ar 1": 	weapon_IndexGEt = 50; break;
    case "ar 2": 	weapon_IndexGEt = 51; break;
    case "ar 3": 	weapon_IndexGEt = 52; break;	
    case "ar 4": 	weapon_IndexGEt = 53; break;	
    case "ar 5": 	weapon_IndexGEt = 54; break;	

    case "heavy 1": 	weapon_IndexGEt = 60; break;
    case "heavy 2": 	weapon_IndexGEt = 61; break;
    case "heavy 3": 	weapon_IndexGEt = 62; break;	
    case "heavy 4": 	weapon_IndexGEt = 63; break;	
    case "heavy 5": 	weapon_IndexGEt = 64; break;	


    case "exotic 1": 	weapon_IndexGEt = 70; break;
    case "exotic 2": 	weapon_IndexGEt = 71; break;
    case "exotic 3": 	weapon_IndexGEt = 72; break;	
    case "exotic 4": 	weapon_IndexGEt = 73; break;	
    case "exotic 5": 	weapon_IndexGEt = 74; break;	

	
	
	
    case "attachment ammo":     weapon_IndexGEt = 80;   break;
    case "attachment grip":     weapon_IndexGEt = 81;   break;
    case "attachment laser":    weapon_IndexGEt = 82;   break;
    
	case "attachment muzzle":   weapon_IndexGEt = 83;   break;	
    case "attachment optics":   weapon_IndexGEt = 84;   break;
    case "attachment stock":    weapon_IndexGEt = 85;   break;
	
	
	
}


tempWeapon.impossibleDrop = impossible;
tempWeapon.image_blend    = impossibleColor;

// if reset is true, reset to default status
if(reset_ == true){
   state = "blink";
   image_alpha  = 0.6;
   sprite_index = spr_MiniGame_Pistol_Empty;
  }
  
  
// destroy left overs
 scr_Destroy_Type_alphabet();






// only spawn if set!
if ( weapon_IndexGEt != -999){

 var detailTxt = instance_create_layer(0,0, "Instances_MiniGame",   obj_Selected_WeaponDetailTxt);
     detailTxt.weaponSpr         = obj_Control_All.array_DetailWeaponText[weapon_IndexGEt].weaponSpr;
     detailTxt.headLineText      = obj_Control_All.array_DetailWeaponText[weapon_IndexGEt].headLineText;
     detailTxt.descriptionText1  = obj_Control_All.array_DetailWeaponText[weapon_IndexGEt].descriptionText1;
     detailTxt.descriptionText2  = obj_Control_All.array_DetailWeaponText[weapon_IndexGEt].descriptionText2;
     detailTxt.costText          = obj_Control_All.array_DetailWeaponText[weapon_IndexGEt].costText;
     detailTxt.cost              = obj_Control_All.array_DetailWeaponText[weapon_IndexGEt].cost; 
	 
	 
     detailTxt.indexActive = weapon_IndexGEt;
}


} // if positive create temp end

} // end of script