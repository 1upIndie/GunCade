

// check if result is sufficient!


  // check what it is !

var jumpPoint = obj_MiniGame_Parent.result_Index_Refuse;


   scr_CleanUp_Minigameover("refuse");
   scr_Unblock_CashIn( jumpPoint, 0, 0, "refuse", false  );


// after clean up -> destroy self
 instance_destroy();
// inactive
