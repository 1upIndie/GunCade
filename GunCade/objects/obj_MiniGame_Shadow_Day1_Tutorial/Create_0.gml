// Inherit the parent event
event_inherited();

 possible_Weapon_Perfect          = 40;   // index numbers!
 // possible_LaserPointer_Perfect    = -999;  // attachments not set on default
 // possible_Muzzle_Perfect          = -999;  
 // possible_Optics_Perfect          = -999; 
 // possible_Scope_Perfect           = -999; 
 // possible_Stock_Perfect           = -999; 
 
 
 // all other combos -> good sale, no tip
 array_Positive_Weapons   = array_create(0); 
 
 var stack_ = 0;
 array_Positive_Weapons[stack_] = 40; stack_++;
 array_Positive_Weapons[stack_] = 41; stack_++; 
 array_Positive_Weapons[stack_] = 42; stack_++; 
 
 
 // negatives!
 //array_Negative           = array_create(0); // values that make it a bad sale -> fail!
 negative_LaserPointer    = false;
 negative_Muzzle          = false;  
 negative_Optics          = false; 
 negative_Scope           = false; 
 negative_Stock           = false;   

 negative_Costs           = 3000; 
 
 
 // jump to points
  result_Index_Sale     = 10;
 result_Index_Messup   = 0; 
 result_Index_Refuse   = 7;
 
 /*
 0,1,2 melee
11,12,13 pistol
20,21,22 rifle
30,31,32 smg
40,41,42 shotgun
50 ar
60 exotics
70 attach
*/