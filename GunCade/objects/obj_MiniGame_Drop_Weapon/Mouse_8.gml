/// @description 


if (!instance_exists(obj_Temp_Drag) and obj_MiniGame_Parent.inputCoolDown == false and save_Index_Weapon != -999){
   state = "blink";
   image_alpha  = 0.6;
   //sprite_index = spr_MiniGame_Pistol_Empty;
   whatisIt = "";
   //update = true; // if weapon removed,
  // obj_MiniGame_Parent.costsTotal = 0;
   
   
   // refund!
   //obj_MiniGame_Parent.current_Costs  -= obj_Control_All.array_DetailWeaponText[save_Index_Weapon].cost;
   obj_MiniGame_Parent.current_Costs    = 0; // zero it! 
   save_Index_Weapon = -999; // null!
   
   event_user(1); /// clean up attachments
   
   // check what is assigned, if nothing is there disable sell button
   var isAnythingAssigned = false;
   
   // check all the others
   /*
   if ( instance_exists(obj_MiniGame_Drop_LaserPointer) ){  
	    if(obj_MiniGame_Drop_LaserPointer.save_Index_Weapon != -999){ isAnythingAssigned = true; } }
   
   if ( instance_exists(obj_MiniGame_Drop_Muzzle) ){  
	    if(obj_MiniGame_Drop_Muzzle.save_Index_Weapon != -999){ isAnythingAssigned = true; } }   
   
   if ( instance_exists(obj_MiniGame_Drop_Optics) ){  
	    if(obj_MiniGame_Drop_Optics.save_Index_Weapon != -999){ isAnythingAssigned = true; } } 
   
   if ( instance_exists(obj_MiniGame_Drop_Scope) ){  
	    if(obj_MiniGame_Drop_Scope.save_Index_Weapon != -999){ isAnythingAssigned = true; } }
		   
   if ( instance_exists(obj_MiniGame_Drop_Stock) ){  
	    if(obj_MiniGame_Drop_Stock.save_Index_Weapon != -999){ isAnythingAssigned = true; } }
	*/
	
	// nothing assigned? -> disable button
    if(isAnythingAssigned == false){ obj_MiniGame_Button_Sale.enableSale = false; }

}