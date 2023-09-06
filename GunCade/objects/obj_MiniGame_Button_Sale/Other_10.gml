

// check if result is sufficient!
if(enableSale == true){ 
 


// if tutorial, destroy all
if(obj_MiniGame_Parent.isTutorial == true){ scr_Tutorial_DestroyAll(); }


// #1 + #2 first round perfect match! if not is it still good? -> jump + enable from there
scr_WeaponMatchCheck();


// unblock dialog + pass in daily temp money
scr_CleanUp_Minigameover("sale");
scr_Unblock_CashIn(indexJumpTo, resultMoney, resultTip  );

// after clean up -> destroy self

instance_destroy();
} 