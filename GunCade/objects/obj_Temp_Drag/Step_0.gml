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
      
	  var overrideInst = obj_MiniGame_Drop_Weapon;
	  switch(whatisIt){
	    case "pistol 1": overrideInst = obj_MiniGame_Drop_Weapon; break;
	    case "pistol 2": overrideInst = obj_MiniGame_Drop_Weapon; break;
	    case "pistol 3": overrideInst = obj_MiniGame_Drop_Weapon; break;
					
	  }
	  
	  
	  if (instance_exists(overrideInst)){
		  
		     var resetAttachments = false;
			   if(overrideInst.sprite_index != sprite_index){ resetAttachments = true;   }
			 
		     overrideInst.sprite_index = sprite_index;
		     overrideInst.state        = "";
			 overrideInst.image_alpha  = 1;
			 
			 if ( resetAttachments == true){ overrideInst.update = true;  }
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