
// Inherit the parent event
event_inherited();


 possible_Weapon_Perfect             = 20;   //  tammy gun
 // possible_LaserPointer_Perfect    = -999;  // attachments not set on default
 // possible_Muzzle_Perfect          = -999;  
 // possible_Optics_Perfect          = -999; 
 // possible_Scope_Perfect           = -999; 
 // possible_Stock_Perfect           = -999; 

 
 // all other combos -> good sale, no tip

 
 var stack_ = 0;
 array_Positive_Weapons[stack_]  = 21; stack_++;  //  smgs 
 array_Positive_Weapons[stack_]  = 22; stack_++;  //  


 // negatives!
 //array_Negative           = array_create(0); // values that make it a bad sale -> fail!
 negative_LaserPointer    = false;
 negative_Muzzle          = false;  
 negative_Optics          = false; 
 //negative_Scope           = false; 
 negative_Stock           = false;   
 negative_Grip            = false;
 negative_Costs           = 5000; 
 
 
 // jump to points
  result_Index_Sale      = 100;
  result_Index_Refuse    = 120; // both the same
  result_Index_Messup    = 120;  
  
  
 // sale 100
// refuse 110
// botch 120

// jumper to 130
 
  
 /*
 0,1,2 melee
10,11,12 pistol
20,21,22 rifle
30,31,32 smg
40,41,42 shotgun
50 ar
60 heavy
70 exotics
80 attach
*/