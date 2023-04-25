/// @description 


x  = mouse_x;
y  = mouse_y;

var mbLeft = mouse_check_button_released( mb_left );

// check for collision
var onDropSpot = collision_rectangle(bbox_left,bbox_top, bbox_right, bbox_bottom, obj_MiniGame_DropSpot, 0,0 );

	if(onDropSpot != noone){
		
		// quick check if can be placed! -> only for attachment
		canPlace = true;
		
	  switch(whatisIt){
	    case "pistol 1": overrideInst = obj_MiniGame_Drop_Weapon; break;
	    case "pistol 2": overrideInst = obj_MiniGame_Drop_Weapon; break;
	    case "pistol 3": overrideInst = obj_MiniGame_Drop_Weapon; break;
					
	  }		
		
		
		} else { canPlace = false;  }
	
	
	if(mbLeft == 1 and canPlace == true and impossibleDrop == false ){ 
      
	  var indexGet = -999;
	  var overrideInst = obj_MiniGame_Drop_Weapon;
      // melee 0-10 pistols 10-20, rifles 20-30,  smg 30-40, shotgun 40-50, ar, 50-60, exotic 60-70, attachment 70-80	 
	  switch(whatisIt){
		  
	    case "melee 1": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 0; break;
	    case "melee 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 1; break;
	    case "melee 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 2; break;
		
	    case "pistol 1": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 10; break;
	    case "pistol 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 11; break;
	    case "pistol 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 12; break;

	    case "rifle 1": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 20; break;
	    case "rifle 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 21; break;
	    case "rifle 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 22; break;

	    case "smg 1": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 30; break;
	    case "smg 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 31; break;
	    case "smg 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 32; break;		

	    case "shotgun 1": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 40; break;
	    case "shotgun 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 41; break;
	    case "shotgun 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 42; break;	

	    case "ar 1": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 50; break;
	    case "ar 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 51; break;
	    case "ar 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 52; break;		

	    case "exotic 1": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 60; break;
	    case "exotic 2": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 61; break;
	    case "exotic 3": overrideInst = obj_MiniGame_Drop_Weapon; indexGet = 62; break;		
		
	    case "attachment laser":  overrideInst = obj_MiniGame_Drop_LaserPointer; indexGet = 70; break;
	    case "attachment muzzle": overrideInst = obj_MiniGame_Drop_Muzzle;  indexGet = 71; break;
	    case "attachment optics": overrideInst = obj_MiniGame_Drop_Optics;  indexGet = 72; break;			
	    case "attachment scope":  overrideInst = obj_MiniGame_Drop_Scope;   indexGet = 73; break;
	    case "attachment stock":  overrideInst = obj_MiniGame_Drop_Stock;   indexGet = 74; break;	
			
	  }
	  
	  
	  if (instance_exists(overrideInst)){
		  
		     var resetAttachments = false;
			   if(overrideInst.sprite_index != sprite_index){ resetAttachments = true;   }
			 
		     overrideInst.sprite_index = sprite_index;
		     overrideInst.state        = "";
			 overrideInst.image_alpha  = 1;
			 
			 if ( resetAttachments == true){ overrideInst.update = true;  }
	  }

      // add to costs
	  if (indexGet != -999){
	      obj_MiniGame_Parent.costsTotal += obj_Control_All.array_DetailWeaponText[indexGet].cost;
	  }
	
	
	  instance_destroy();	
	} // end of pressed
	
	  
// right mouse button reset!
var mbRight = mouse_check_button_released( mb_right );

if (mbLeft == 0 and mbRight == 1 and obj_MiniGame_Parent.inputCoolDown == false){
   
   //check if not hovering over
   obj_MiniGame_Parent.inputCoolDown = true;
   instance_destroy();
}