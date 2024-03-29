// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_ButtonResult_Create(inst_, slot_, totalAmount_){
 
 if(totalAmount_ == "six"){
	 var xx = obj_MiniGame_Parent.button_ResultSelected_X6; 
	 var yy = obj_MiniGame_Parent.button_ResultSelected_Y6[slot_];  
	 var size = obj_MiniGame_Parent.button_ResultSelected_Size6;  
 }
 
 if(totalAmount_ == "four"){
	 var xx = obj_MiniGame_Parent.button_ResultSelected_X4; 
	 var yy = obj_MiniGame_Parent.button_ResultSelected_Y4[slot_];  
	 var size = obj_MiniGame_Parent.button_ResultSelected_Size4;  
 } 
 
 

 var instSpr_ = spr_Nothing;
 var ooo = obj_Control_All;

 
 var indexGet = -999; 
 	  switch(inst_){
		  
	    case "melee 1":  indexGet = 0;  if(ooo.unlocked_WeaponType_Melee[1] ==0){ indexGet = -999; } break;
	    case "melee 2":  indexGet = 1;  if(ooo.unlocked_WeaponType_Melee[2] ==0){ indexGet = -999; } break;
	    case "melee 3":  indexGet = 2;  if(ooo.unlocked_WeaponType_Melee[3] ==0){ indexGet = -999; } break;
	    case "melee 4":  indexGet = 3;  if(ooo.unlocked_WeaponType_Melee[4] ==0){ indexGet = -999; } break;
		
		
	    case "pistol 1":  indexGet = 10;  if(ooo.unlocked_WeaponType_Pistol[1] ==0){ indexGet = -999; } break;
	    case "pistol 2":  indexGet = 11;  if(ooo.unlocked_WeaponType_Pistol[2] ==0){ indexGet = -999; } break;
	    case "pistol 3":  indexGet = 12;  if(ooo.unlocked_WeaponType_Pistol[3] ==0){ indexGet = -999; } break;
	    case "pistol 4":  indexGet = 13;  if(ooo.unlocked_WeaponType_Pistol[4] ==0){ indexGet = -999; } break;

	    case "rifle 1":  indexGet = 20;  if(ooo.unlocked_WeaponType_Rifle[1] ==0){ indexGet = -999; } break;
	    case "rifle 2":  indexGet = 21;  if(ooo.unlocked_WeaponType_Rifle[2] ==0){ indexGet = -999; } break;
	    case "rifle 3":  indexGet = 22;  if(ooo.unlocked_WeaponType_Rifle[3] ==0){ indexGet = -999; } break;
	    case "rifle 4":  indexGet = 23;  if(ooo.unlocked_WeaponType_Rifle[4] ==0){ indexGet = -999; } break;

	    case "smg 1":  indexGet = 30;  if(ooo.unlocked_WeaponType_Smg[1] ==0){ indexGet = -999; } break;
	    case "smg 2":  indexGet = 31;  if(ooo.unlocked_WeaponType_Smg[2] ==0){ indexGet = -999; } break;
	    case "smg 3":  indexGet = 32;  if(ooo.unlocked_WeaponType_Smg[3] ==0){ indexGet = -999; } break;
	    case "smg 4":  indexGet = 33;  if(ooo.unlocked_WeaponType_Smg[4] ==0){ indexGet = -999; } break;

	    case "shotgun 1":  indexGet = 40;  if(ooo.unlocked_WeaponType_Shotgun[1] ==0){ indexGet = -999; } break;
	    case "shotgun 2":  indexGet = 41;  if(ooo.unlocked_WeaponType_Shotgun[2] ==0){ indexGet = -999; } break;
	    case "shotgun 3":  indexGet = 42;  if(ooo.unlocked_WeaponType_Shotgun[3] ==0){ indexGet = -999; } break;
	    case "shotgun 4":  indexGet = 43;  if(ooo.unlocked_WeaponType_Shotgun[4] ==0){ indexGet = -999; } break;

	    case "ar 1":  indexGet = 50;  if(ooo.unlocked_WeaponType_Ar[1] ==0){ indexGet = -999; } break;
	    case "ar 2":  indexGet = 51;  if(ooo.unlocked_WeaponType_Ar[2] ==0){ indexGet = -999; } break;
	    case "ar 3":  indexGet = 52;  if(ooo.unlocked_WeaponType_Ar[3] ==0){ indexGet = -999; } break;
	    case "ar 4":  indexGet = 53;  if(ooo.unlocked_WeaponType_Ar[4] ==0){ indexGet = -999; } break;

	    case "heavy 1":  indexGet = 60;  if(ooo.unlocked_WeaponType_Heavy[1] ==0){ indexGet = -999; } break;
	    case "heavy 2":  indexGet = 61;  if(ooo.unlocked_WeaponType_Heavy[2] ==0){ indexGet = -999; } break;
	    case "heavy 3":  indexGet = 62;  if(ooo.unlocked_WeaponType_Heavy[3] ==0){ indexGet = -999; } break;
	    case "heavy 4":  indexGet = 63;  if(ooo.unlocked_WeaponType_Heavy[4] ==0){ indexGet = -999; } break;
	    case "heavy 5":  indexGet = 64;  if(ooo.unlocked_WeaponType_Heavy[5] ==0){ indexGet = -999; } break;
		
	    case "exotic 1":  indexGet = 70;  if(ooo.unlocked_WeaponType_Exotic[1] ==0){ indexGet = -999; } break;
	    case "exotic 2":  indexGet = 71;  if(ooo.unlocked_WeaponType_Exotic[2] ==0){ indexGet = -999; } break;
	    case "exotic 3":  indexGet = 72;  if(ooo.unlocked_WeaponType_Exotic[3] ==0){ indexGet = -999; } break;
	    case "exotic 4":  indexGet = 73;  if(ooo.unlocked_WeaponType_Exotic[4] ==0){ indexGet = -999; } break;
	    case "exotic 5":  indexGet = 74;  if(ooo.unlocked_WeaponType_Exotic[5] ==0){ indexGet = -999; } break;

	    case "attachment ammo" :   indexGet = 80;  if(ooo.unlocked_WeaponType_Accessory[1] == 0){ indexGet = -999; } break;
	    case "attachment laser":   indexGet = 81;  if(ooo.unlocked_WeaponType_Accessory[2] == 0){ indexGet = -999; } break;
	    case "attachment muzzle":  indexGet = 82;  if(ooo.unlocked_WeaponType_Accessory[3] == 0){ indexGet = -999; } break;
		
	    case "attachment stock":   indexGet = 83;  if(ooo.unlocked_WeaponType_Accessory[4] == 0){ indexGet = -999; } break;
	    case "attachment optics":  indexGet = 84;  if(ooo.unlocked_WeaponType_Accessory[5] == 0){ indexGet = -999; } break;
	    case "attachment grip":    indexGet = 85;  if(ooo.unlocked_WeaponType_Accessory[6] == 0){ indexGet = -999; } break;
	  }
	  
	  
 if(indexGet != -999){
    instSpr_ =  obj_Control_All.array_DetailWeaponText[indexGet].weaponSpr;
 
 
 
	var weapon = instance_create_layer( xx,yy, obj_MiniGame_Parent.layer_, obj_MiniGame_Result_Inst  );
	    weapon.sprite_index = instSpr_;
		weapon.whatisIt     = inst_;
		weapon.image_xscale = size;
		weapon.image_yscale = size; 
	   }



// 0 pepper spray, 1 folding batt, 2 knife
// 10 scaringer, 11 9Oclock, 12 beagle
// 20 bolt, 21 lever, 22 250cal
// 30 tammy, 31woozie, 32 shmup
// 40 pump, 41 sawed off, 42 tripple
// 50 m16, 51 french, 52 ak
// 60 lmg, 61 grenadel, 62 mini, 63 bazooka
// 70 blow, 71 canon, 72 ac, 73 dc
// 80 ammo, 81 las, 82 muzzl, 83 stock. 84 optic, 85 grip

/// for alphabetical
// 0: 11, 22,
// a: 72, 80
// b: 12, 20, 63, 70
// c: 71,
// d: 73
// g: 61, 85 
// j: 52,
// f: 1, 51, 
// k: 2
// l: 21,60, 81,
// m: 50, 62, 82,
// o: 84
// p: 0, 40, 
// s: 10, 32, 41, 83 
// t: 30, 42
// w: 31


//////////////////
} // end of script