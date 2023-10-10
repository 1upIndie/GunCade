/// @description calculate cost new!

 // null
 cost_Gun = 0;
  cost_ammo    =  0;
  cost_laser   =  0; 
  cost_muzzle  =  0; 
  cost_stock   =  0; 
  cost_optic   =  0;
  cost_grip    =  0;

   var cost_Ammo    = obj_Control_All.array_DetailWeaponText[80].cost;
   var cost_Laser   = obj_Control_All.array_DetailWeaponText[81].cost;   
   var cost_Muzzle  = obj_Control_All.array_DetailWeaponText[82].cost;   
   var cost_Stock   = obj_Control_All.array_DetailWeaponText[83].cost;      
   var cost_Optics  = obj_Control_All.array_DetailWeaponText[84].cost;      
   var cost_Grip    = obj_Control_All.array_DetailWeaponText[85].cost;      
   

// get weapon index, if has -> set correct cost!
if (obj_MiniGame_Drop_Weapon.save_Index_Weapon != -999){
    cost_Gun = obj_Control_All.array_DetailWeaponText[ obj_MiniGame_Drop_Weapon.save_Index_Weapon ].cost;
}




if ( instance_exists( obj_MiniGame_Drop_Ammo)){
   if (obj_MiniGame_Drop_Ammo.isBlocked == false){
      if (obj_MiniGame_Drop_Ammo.state != "blink"){ cost_ammo = cost_Ammo; }}}


if ( instance_exists( obj_MiniGame_Drop_LaserPointer)){
   if (obj_MiniGame_Drop_LaserPointer.isBlocked == false){
      if (obj_MiniGame_Drop_LaserPointer.state != "blink"){ cost_laser = cost_Laser; }}}


if ( instance_exists( obj_MiniGame_Drop_Muzzle)){
   if (obj_MiniGame_Drop_Muzzle.isBlocked == false){
      if (obj_MiniGame_Drop_Muzzle.state != "blink"){ cost_muzzle = cost_Muzzle; }}}


if ( instance_exists( obj_MiniGame_Drop_Stock)){
   if (obj_MiniGame_Drop_Stock.isBlocked == false){
      if (obj_MiniGame_Drop_Stock.state != "blink"){  cost_stock = cost_Stock; }}}


if ( instance_exists( obj_MiniGame_Drop_Optics)){
   if (obj_MiniGame_Drop_Optics.isBlocked == false){
      if (obj_MiniGame_Drop_Optics.state != "blink"){  cost_optic = cost_Optics;  }}}


if ( instance_exists( obj_MiniGame_Drop_Grip)){
   if (obj_MiniGame_Drop_Grip.isBlocked == false){
      if (obj_MiniGame_Drop_Grip.state != "blink"){  cost_grip = cost_Grip; }}}



// apply
var calc = cost_Gun +  cost_ammo + cost_laser + cost_muzzle + cost_stock + cost_optic + cost_grip;
current_Costs = calc;




