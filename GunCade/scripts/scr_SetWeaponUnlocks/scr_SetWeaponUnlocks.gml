// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_SetWeaponUnlocks(day_){

 var oo = obj_Control_All;
 
 
 #region vars
 
 // default start settings!
 var typeMelee      = 1;
 var typePistol     = 1; 
 var typeRifle      = false; 
 
 var typeSmg        = 1;  
 var typeShotgun    = 1;   
 var typeArifle     = 1;   

 var typeHeavy      = false;   
 var typeExotic     = 1;   
 var typeAccessory  = 1;    
 
 
 var melee1 = 1;
 var melee2 = 1;
 var melee3 = 1; 
 var melee4 = false; 

 var pistol1 = 1;
 var pistol2 = 1;
 var pistol3 = 1; 
 var pistol4 = false; 
 
 var rifle1 = 1;
 var rifle2 = false;
 var rifle3 = false; 
 var rifle4 = false;  
 
 var smg1 = 1;
 var smg2 = 1;
 var smg3 = 1; 
 var smg4 = false;   
 
 var shotgun1 = 1;
 var shotgun2 = 1;
 var shotgun3 = 1; 
 var shotgun4 = false;
 
 var arifle1 = 1; // instantly available
 var arifle2 = 0;
 var arifle3 = 0; 
 var arifle4 = false;  
 
 var heavy1 = false; // lmg
 var heavy2 = false; // grenade launcher
 var heavy3 = false;  // minigun
 var heavy4 = false;  // bazooka
 var heavy5 = false; 
 
 var exotic1 = 1;
 var exotic2 = false;  // canon
 var exotic3 = false;  // ac
 var exotic4 = false;  // dc
 var exotic5 = false;   

 var accessory1 = 1;
 var accessory2 = false;
 var accessory3 = false; 
 var accessory4 = false;  
 var accessory5 = false;  
 var accessory6 = false;   
 

 
 #endregion
 
 // stack up!
 if (day_>= 2){
 
 }

 if (day_>= 4){
	 
   accessory2 = 1;
   accessory3 = 1; 
   accessory4 = 1;  
   accessory5 = 1;  
   accessory6 = 1;  
   
     typeArifle = 1
     arifle1    = 1;
 }

 if (day_>= 6){
  
  rifle2 = 1;
  rifle3 = 1; 

  
  heavy1 = 1; // lmg
  heavy3 = 1;  // minigun
 
 }
 
 
 if (day_>= 9){

  heavy2 = 1; // grenade launcher
  heavy4 = 1;  // bazooka
  
  exotic2 = 1;  // canon
  exotic3 = 1;  // ac
  exotic4 = 1;  // dc
 }

 oo.unlocked_WeaponType_Melee_       = typeMelee;
 oo.unlocked_WeaponType_Pistol_      = typePistol;
 oo.unlocked_WeaponType_Rifle_       = typeRifle;

 oo.unlocked_WeaponType_Smg_         = typeSmg;
 oo.unlocked_WeaponType_Shotgun_     = typeShotgun;
 oo.unlocked_WeaponType_ARifle_      = typeArifle;

 oo.unlocked_WeaponType_Heavy_       = typeHeavy;
 oo.unlocked_WeaponType_Exotic_      = typeExotic;
 oo.unlocked_WeaponType_Accessory_   = typeAccessory;



// specfic weapons unlocked
 oo.unlocked_WeaponType_Melee[1] = melee1;
 oo.unlocked_WeaponType_Melee[2] = melee2;
 oo.unlocked_WeaponType_Melee[3] = melee3;
 oo.unlocked_WeaponType_Melee[4] = melee4;

 oo.unlocked_WeaponType_Pistol[1] = pistol1;
 oo.unlocked_WeaponType_Pistol[2] = pistol2;
 oo.unlocked_WeaponType_Pistol[3] = pistol3;
 oo.unlocked_WeaponType_Pistol[4] = pistol4;


 oo.unlocked_WeaponType_Rifle[1] = rifle1;
 oo.unlocked_WeaponType_Rifle[2] = rifle2;
 oo.unlocked_WeaponType_Rifle[3] = rifle3;
 oo.unlocked_WeaponType_Rifle[4] = rifle4;
 
 
 oo.unlocked_WeaponType_Smg[1] = smg1;
 oo.unlocked_WeaponType_Smg[2] = smg2;
 oo.unlocked_WeaponType_Smg[3] = smg3;
 oo.unlocked_WeaponType_Smg[4] = smg4;

 oo.unlocked_WeaponType_Shotgun[1] = shotgun1;
 oo.unlocked_WeaponType_Shotgun[2] = shotgun2;
 oo.unlocked_WeaponType_Shotgun[3] = shotgun3;
 oo.unlocked_WeaponType_Shotgun[4] = shotgun4;

 oo.unlocked_WeaponType_Ar[1] = arifle1;
 oo.unlocked_WeaponType_Ar[2] = arifle2;
 oo.unlocked_WeaponType_Ar[3] = arifle3;
 oo.unlocked_WeaponType_Ar[4] = arifle4;

 
 oo.unlocked_WeaponType_Heavy[1] = heavy1;
 oo.unlocked_WeaponType_Heavy[2] = heavy2;
 oo.unlocked_WeaponType_Heavy[3] = heavy3;
 oo.unlocked_WeaponType_Heavy[4] = heavy4;
 oo.unlocked_WeaponType_Heavy[5] = heavy5;

 oo.unlocked_WeaponType_Exotic[1] = exotic1; // blowdart
 oo.unlocked_WeaponType_Exotic[2] = exotic2; // canon
 oo.unlocked_WeaponType_Exotic[3] = exotic3; // ac
 oo.unlocked_WeaponType_Exotic[4] = exotic4; // dc
 oo.unlocked_WeaponType_Exotic[5] = exotic5;


 oo.unlocked_WeaponType_Accessory[1] = accessory1;
 oo.unlocked_WeaponType_Accessory[2] = accessory2;
 oo.unlocked_WeaponType_Accessory[3] = accessory3;
 oo.unlocked_WeaponType_Accessory[4] = accessory4;
 oo.unlocked_WeaponType_Accessory[5] = accessory5;
 oo.unlocked_WeaponType_Accessory[6] = accessory6;


 
 
} // end of script