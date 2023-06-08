

// check if result is sufficient!
if(hasWeapon == true){  image_alpha = 1;

  // check what it is !

 var getIndex_Refuse  = obj_MiniGame_Parent.result_Index_Refuse;

 scr_CleanUp_Minigameover("refuse");
 
 scr_Unblock_CashIn( obj_MiniGame_Parent.result_Index_Refuse, 0, 0  );
 
// inactive
} else { image_alpha = inactiveAlpha; }