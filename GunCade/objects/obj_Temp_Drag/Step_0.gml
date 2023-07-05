/// @description 


x  = mouse_x;
y  = mouse_y;

var mbLeft = mouse_check_button_released( mb_left );

// check for collision -> a surface for all!
var onDropSpot = collision_rectangle(bbox_left,bbox_top, bbox_right, bbox_bottom, obj_MiniGame_DropSpot, 0,0 );

	if(onDropSpot != noone){
		
		// quick check if can be placed! -> only for attachment
		canPlace = true;
			
		} else { canPlace = false;  }
	
	
	
	if(mbLeft == 1 and canPlace == true and impossibleDrop == false ){ 
      
	  
	  var slotIsSetAlready = false;
	  var slotIsSetAlready_Old_Index = 0;
	  
	  var indexGet = -999;
	  var overrideInst = noone;
      // melee 0-10 pistols 10-20, rifles 20-30,  smg 30-40, shotgun 40-50, ar, 50-60, exotic 60-70, attachment 70-80	 
	  switch(whatisIt){
		  
	    case "melee 1": 
		  if(obj_MiniGame_Drop_Weapon.save_Index_Weapon != -999){ slotIsSetAlready = true;  }
		  overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 0; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
	    
		case "melee 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 1; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
	    
		case "melee 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 2; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
		
	    case "pistol 1": 
			if(obj_MiniGame_Drop_Weapon.save_Index_Weapon != -999){ slotIsSetAlready = true; slotIsSetAlready_Old_Index = obj_MiniGame_Drop_Weapon.save_Index_Weapon; }
			overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 10; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
			
	    case "pistol 2": 
			if(obj_MiniGame_Drop_Weapon.save_Index_Weapon != -999){ slotIsSetAlready = true; slotIsSetAlready_Old_Index = obj_MiniGame_Drop_Weapon.save_Index_Weapon; }
			overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 11; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
		
	    case "pistol 3":
			if(obj_MiniGame_Drop_Weapon.save_Index_Weapon != -999){ slotIsSetAlready = true; slotIsSetAlready_Old_Index = obj_MiniGame_Drop_Weapon.save_Index_Weapon; }
			overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 12; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;

	    case "rifle 1": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 20; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
	    case "rifle 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 21; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
	    case "rifle 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 22; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;

	    case "smg 1": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 30; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
	    case "smg 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 31; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
	    case "smg 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 32; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;

	    case "shotgun 1": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 40; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
	    case "shotgun 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 41; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
	    case "shotgun 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 42; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;

	    case "ar 1": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 50; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
	    case "ar 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 51; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
	    case "ar 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 52; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;

	    case "exotic 1": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 60; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
	    case "exotic 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 61; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
	    case "exotic 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 62; obj_MiniGame_Drop_Weapon.save_Index_Weapon = indexGet; break;
		
		
	    case "attachment ammo":   indexGet = 80;  break;				
	    case "attachment grip":   indexGet = 81; break;		
	    case "attachment laser":  indexGet = 82; break;
		
	    case "attachment muzzle": indexGet = 83; break;
	    case "attachment optics": indexGet = 84; break;			
	    case "attachment stock":  indexGet = 85; break;	

	  }
	  
	  
	  if (overrideInst != noone){
		  
		  // is there a weapon already? ->
		  
		  // weapon swap!
		  if(slotIsSetAlready == true){
			  
			  // first deduct cost of old weapon
			  obj_MiniGame_Parent.current_Costs -= obj_Control_All.array_DetailWeaponText[slotIsSetAlready_Old_Index].cost;
		  }
			  
		     var resetAttachments = false;
			   if(overrideInst.sprite_index != sprite_index ){ resetAttachments = true;   }
			 
		     overrideInst.sprite_index = sprite_index;
		     overrideInst.state        = "";
			 overrideInst.image_alpha  = 1;
			 
			 
			 // enable sale
			 obj_MiniGame_Button_Sale.enableSale = true;
			 
	  if ( resetAttachments == true){ overrideInst.update = true;  }

      // add to costs in any case
	   obj_MiniGame_Parent.current_Costs += obj_Control_All.array_DetailWeaponText[indexGet].cost; 
	  
	  
	  // unblock attachements if true
  if (obj_Control_All.array_DetailWeaponText[indexGet].canHave_Ammo          == 1 and instance_exists(obj_MiniGame_Drop_Ammo)         ){ obj_MiniGame_Drop_Ammo.state          = "blink"; obj_MiniGame_Drop_Ammo.isBlocked         = false; } else { obj_MiniGame_Drop_Ammo.isBlocked         = true; }	  
  if (obj_Control_All.array_DetailWeaponText[indexGet].canHave_LaserPointer  == 1 and instance_exists(obj_MiniGame_Drop_LaserPointer) ){ obj_MiniGame_Drop_LaserPointer.state  = "blink"; obj_MiniGame_Drop_LaserPointer.isBlocked = false; } else { obj_MiniGame_Drop_LaserPointer.isBlocked = true; }	  
  if (obj_Control_All.array_DetailWeaponText[indexGet].canHave_Muzzle        == 1 and instance_exists(obj_MiniGame_Drop_Muzzle)       ){ obj_MiniGame_Drop_Muzzle.state        = "blink"; obj_MiniGame_Drop_Muzzle.isBlocked       = false; } else { obj_MiniGame_Drop_Muzzle.isBlocked       = true; }	  
  
  if (obj_Control_All.array_DetailWeaponText[indexGet].canHave_Stock         == 1 and instance_exists(obj_MiniGame_Drop_Stock)        ){ obj_MiniGame_Drop_Stock.state         = "blink"; obj_MiniGame_Drop_Stock.isBlocked        = false; } else { obj_MiniGame_Drop_Stock.isBlocked        = true; }	  
  if (obj_Control_All.array_DetailWeaponText[indexGet].canHave_Optics        == 1 and instance_exists(obj_MiniGame_Drop_Optics)       ){ obj_MiniGame_Drop_Optics.state        = "blink"; obj_MiniGame_Drop_Optics.isBlocked       = false; } else { obj_MiniGame_Drop_Optics.isBlocked       = true; }	  
  if (obj_Control_All.array_DetailWeaponText[indexGet].canHave_Grip          == 1 and instance_exists(obj_MiniGame_Drop_Grip)         ){ obj_MiniGame_Drop_Grip.state          = "blink"; obj_MiniGame_Drop_Grip.isBlocked         = false; } else { obj_MiniGame_Drop_Grip.isBlocked         = true; }	  
	  
	  
	  }// end of instance exists 
	
	 
   // special case if ammo/attachement -> weapon must be already assigned!
   if(indexGet >= 80  and  obj_MiniGame_Drop_Weapon.save_Index_Weapon != -999){
	   var savedIndex = obj_MiniGame_Drop_Weapon.save_Index_Weapon;
	   var stackCosts = false;
	// check if not set already	
  if (obj_Control_All.array_DetailWeaponText[savedIndex].canHave_Ammo          == 1 and indexGet == 80 and instance_exists(obj_MiniGame_Drop_Ammo)         and obj_MiniGame_Drop_Ammo.state         == "blink" ){ obj_MiniGame_Drop_Ammo.state = "";         stackCosts = true;  } 	  
  if (obj_Control_All.array_DetailWeaponText[savedIndex].canHave_LaserPointer  == 1 and indexGet == 81 and instance_exists(obj_MiniGame_Drop_LaserPointer) and obj_MiniGame_Drop_LaserPointer.state == "blink" ){ obj_MiniGame_Drop_LaserPointer.state = ""; stackCosts = true;  } 
  if (obj_Control_All.array_DetailWeaponText[savedIndex].canHave_Muzzle        == 1 and indexGet == 82 and instance_exists(obj_MiniGame_Drop_Muzzle)       and obj_MiniGame_Drop_Muzzle.state       == "blink" ){ obj_MiniGame_Drop_Muzzle.state = "";       stackCosts = true;  } 
  
  if (obj_Control_All.array_DetailWeaponText[savedIndex].canHave_Stock         == 1 and indexGet == 83 and instance_exists(obj_MiniGame_Drop_Stock)        and obj_MiniGame_Drop_Stock.state        == "blink" ){ obj_MiniGame_Drop_Stock.state = "";        stackCosts = true;  } 
  if (obj_Control_All.array_DetailWeaponText[savedIndex].canHave_Optics        == 1 and indexGet == 84 and instance_exists(obj_MiniGame_Drop_Optics)       and obj_MiniGame_Drop_Optics.state       == "blink" ){ obj_MiniGame_Drop_Optics.state = "";       stackCosts = true;  } 
  if (obj_Control_All.array_DetailWeaponText[savedIndex].canHave_Grip          == 1 and indexGet == 85 and instance_exists(obj_MiniGame_Drop_Grip)         and obj_MiniGame_Drop_Grip.state         == "blink" ){ obj_MiniGame_Drop_Grip.state = "";         stackCosts = true;  } 
 
  
  /// if true, add to costs
  if( stackCosts == true ){	obj_MiniGame_Parent.current_Costs += obj_Control_All.array_DetailWeaponText[indexGet].cost; }	
 
   } // end of special case attachments



	
	  instance_destroy();	
	} // end of pressed
	
	
	
	
	
	
	
////////////////////////////////////////////////////////////////////////////////////	
// right mouse button destroy if not on a drop off spot!
var mbRight = mouse_check_button_released( mb_right );
if(onDropSpot == noone and mbRight == 1 ){ instance_destroy(); }
	
	
	