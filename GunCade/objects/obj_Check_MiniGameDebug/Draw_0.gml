/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben



if ( instance_exists(obj_MiniGame_Parent) ){
	
	var txt = scr_WeaponMatchCheck( true );
	draw_text( mouse_x, mouse_y+30, txt );



var perfect_Weapon = obj_MiniGame_Parent.possible_Weapon_Perfect; 

var perfect_Ammo   = obj_MiniGame_Parent.possible_Ammo_Perfect;
var perfect_LaserP = obj_MiniGame_Parent.possible_LaserPointer_Perfect;
var perfect_Muzzle = obj_MiniGame_Parent.possible_Muzzle_Perfect;  
var perfect_Optics = obj_MiniGame_Parent.possible_Optics_Perfect;
//var perfect_Scope  = obj_MiniGame_Parent.possible_Scope_Perfect;
var perfect_Stock  = obj_MiniGame_Parent.possible_Stock_Perfect;
var perfect_Grip   = obj_MiniGame_Parent.possible_Grip_Perfect;

var perfectAll = "perfect W: " + string(perfect_Weapon)  
                  + " /Amo: " + string(perfect_Ammo)
				  + " /Las: " + string(perfect_LaserP)
				  + " /Muz: " + string(perfect_Muzzle) 				  
				  + " /Opt: " + string(perfect_Optics) 
				  //+ " /Scop: " + string(perfect_Scope) 
				  + " /Stck: " + string(perfect_Stock) 
				  + " /Grp: " + string(perfect_Grip); 
				  
				  
	draw_text( mouse_x - 100, mouse_y+60, perfectAll );



var perfect_Weapon = obj_MiniGame_Parent.possible_Weapon_Perfect; 

var perfect_Ammo   = obj_MiniGame_Parent.possible_Ammo_Perfect;
var perfect_LaserP = obj_MiniGame_Parent.possible_LaserPointer_Perfect;
var perfect_Muzzle = obj_MiniGame_Parent.possible_Muzzle_Perfect;  
var perfect_Optics = obj_MiniGame_Parent.possible_Optics_Perfect;
//var perfect_Scope  = obj_MiniGame_Parent.possible_Scope_Perfect;
var perfect_Stock  = obj_MiniGame_Parent.possible_Stock_Perfect;
var perfect_Grip   = obj_MiniGame_Parent.possible_Grip_Perfect;

var perfectAll = "perfect W: " + string(perfect_Weapon)  
                  + " /Amo: " + string(perfect_Ammo)
				  + " /Las: " + string(perfect_LaserP)
				  + " /Muz: " + string(perfect_Muzzle) 				  
				  + " /Opt: " + string(perfect_Optics) 
				  //+ " /Scop: " + string(perfect_Scope) 
				  + " /Stck: " + string(perfect_Stock) 
				  + " /Grp: " + string(perfect_Grip); 


}