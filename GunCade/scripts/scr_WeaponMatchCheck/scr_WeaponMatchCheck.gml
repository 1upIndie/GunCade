
function scr_WeaponMatchCheck( debug_){

var returnValue = 0;

 // get index to jump to
 var getIndex_Sale  = obj_MiniGame_Parent.result_Index_Sale;
 var getIndex_Fail  = obj_MiniGame_Parent.result_Index_Messup; 


var getMoney = obj_MiniGame_Parent.current_Costs;

var getWeaponIndex = obj_MiniGame_Drop_Weapon.save_Index_Weapon;

var getAttachment_Ammo   = -999;
var getAttachment_LaserP = -999;
var getAttachment_Muzzle = -999;  
var getAttachment_Optics = -999; 
//var getAttachment_Scope  = -999; /// fuuu
var getAttachment_Stock  = -999;  
var getAttachment_Grip   = -999;  

// only set if not blink aka is available and occupied to set!
if (instance_exists(obj_MiniGame_Drop_Ammo) ){
	  if( obj_MiniGame_Drop_Ammo.state != "blink"        ){  getAttachment_Ammo     = obj_MiniGame_Drop_Ammo.save_Index_Weapon; }}
	

if (instance_exists(obj_MiniGame_Drop_LaserPointer) ){ 
	  if( obj_MiniGame_Drop_LaserPointer.state != "blink"){  getAttachment_LaserP   = obj_MiniGame_Drop_LaserPointer.save_Index_Weapon; }}


if (instance_exists(obj_MiniGame_Drop_Muzzle) ){ 
	  if( obj_MiniGame_Drop_Muzzle.state != "blink"      ){  getAttachment_Muzzle   = obj_MiniGame_Drop_Muzzle.save_Index_Weapon; }}


if (instance_exists(obj_MiniGame_Drop_Optics) ){ 
	  if( obj_MiniGame_Drop_Optics.state != "blink"      ){  getAttachment_Optics   = obj_MiniGame_Drop_Optics.save_Index_Weapon; }}


//if (instance_exists(obj_MiniGame_Drop_Scope) ){ 
//	  if( obj_MiniGame_Drop_Scope.state != "blink"       ){  getAttachment_Scope   = obj_MiniGame_Drop_Scope.save_Index_Weapon; }}


if (instance_exists(obj_MiniGame_Drop_Stock)       ){ 
	  if( obj_MiniGame_Drop_Stock.state != "blink"       ){  getAttachment_Stock   = obj_MiniGame_Drop_Stock.save_Index_Weapon; }}

if (instance_exists(obj_MiniGame_Drop_Grip)       ){ 
	  if( obj_MiniGame_Drop_Grip.state != "blink"       ){  getAttachment_Stock   = obj_MiniGame_Drop_Grip.save_Index_Weapon; }}


var isPerfect = false;
var isGood    = false;

var perfect_Weapon = obj_MiniGame_Parent.possible_Weapon_Perfect; 

var perfect_Ammo   = obj_MiniGame_Parent.possible_Ammo_Perfect;
var perfect_LaserP = obj_MiniGame_Parent.possible_LaserPointer_Perfect;
var perfect_Muzzle = obj_MiniGame_Parent.possible_Muzzle_Perfect;  

 var perfect_Stock  = obj_MiniGame_Parent.possible_Stock_Perfect;
 var perfect_Optics = obj_MiniGame_Parent.possible_Optics_Perfect;
 var perfect_Grip   = obj_MiniGame_Parent.possible_Grip_Perfect; 
 
//var perfect_Scope  = obj_MiniGame_Parent.possible_Scope_Perfect;

 var perfect_Stock  = obj_MiniGame_Parent.possible_Stock_Perfect;

 

if(getWeaponIndex       == perfect_Weapon and
   
   getAttachment_Ammo   == perfect_Ammo   and
   getAttachment_LaserP == perfect_LaserP and
   getAttachment_Muzzle == perfect_Muzzle and
   getAttachment_Stock  == perfect_Stock  and      
   getAttachment_Optics == perfect_Optics and   
   getAttachment_Grip   == perfect_Grip       
   
   ){ isPerfect = true;
	   
	  indexJumpTo = getIndex_Sale;
      resultMoney = getMoney;
      resultTip   = obj_Control_All.static_Money_Tip;
	  resultScore = "perfect";
	  // spawn popup
	  if(debug_ == false){
	   instance_create_layer(0,0, "Instances_Effects", obj_Effect_Txt_PopUpGoUp_PerfectSale); }
	  
	  }




// #2 is it still a good sale? dont continue if sale is perfect

if(isPerfect == false){

// loop through all positive weapons -> if any match is good, is still a sale!
var pos_I = 0;
  repeat( array_length( obj_MiniGame_Parent.array_Positive_Weapons ) ){
    
	// is the weapon one of those=?
    if ( getWeaponIndex == obj_MiniGame_Parent.array_Positive_Weapons[pos_I] ){ isGood = true; }
 
   pos_I++;
   }
 
 
 
 // check for no goes, that cap it to a fail!
 
var neg_I = 0;
  repeat( array_length(obj_MiniGame_Parent.array_Negative) ){
    
	// is the weapon one of those=?
    if ( getWeaponIndex == obj_MiniGame_Parent.array_Negative[neg_I]){ isGood = false; }
 
   neg_I++;
   } 


// also single check if attachment is excluded!
 if(getAttachment_Ammo   == obj_MiniGame_Parent.negative_Ammo  ){ isGood = false; } 
 if(getAttachment_LaserP == obj_MiniGame_Parent.negative_LaserPointer){ isGood = false; }
 if(getAttachment_Muzzle == obj_MiniGame_Parent.negative_Muzzle){ isGood = false; }  
 if(getAttachment_Optics == obj_MiniGame_Parent.negative_Optics){ isGood = false; } 
 //if(getAttachment_Scope  == obj_MiniGame_Parent.negative_Scope ){ isGood = false; } 
 if(getAttachment_Stock  == obj_MiniGame_Parent.negative_Stock ){ isGood = false; }    
 if(getAttachment_Grip   == obj_MiniGame_Parent.negative_Grip  ){ isGood = false; }  
 
 if(getMoney             > obj_MiniGame_Parent.negative_Costs ){ isGood = false; }    



///////////// result!  /////////////////
if( isGood == true ){   resultScore = "good";
	resultMoney = getMoney;
	resultTip = 0; 
	indexJumpTo = getIndex_Sale;
	// spawn popup
		  if(debug_ == false){
	      instance_create_layer(0,0, "Instances_Effects", obj_Effect_Txt_PopUpGoUp_Sale);}
	  }
	  
if( isGood == false){  resultScore = "failed";
	resultMoney = 0;       
	resultTip = 0; 
	indexJumpTo = getIndex_Fail;
	// spawn popup
			  if(debug_ == false){
	          instance_create_layer(0,0, "Instances_Effects", obj_Effect_Txt_PopUpGoUp_Fail); }
	  
	  }	
	
   } // end of perfect false
   
  // var txt33 = "Good: " + string(isGood) + "  perf: " + string(isPerfect)
  // draw_text(x-20,y-20, txt33  );
  
  ///   var getToSet =  "getTo: " +  string(getWeaponIndex) + " " + string(getWeaponIndex)    + " ";
returnValue = resultScore + "  -Money: " + string(resultMoney) + "Tip: " + string(resultTip);

return returnValue;

/////////////////////////////////
}// end of script