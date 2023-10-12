

// check if result is sufficient!
if(enableSale == true){ 
 
var isTutorial = obj_MiniGame_Parent.isTutorial;

// if tutorial, destroy all
if( isTutorial == true){ scr_Tutorial_DestroyAll(); }


// #1 + #2 first round perfect match! if not is it still good? -> jump + enable from there
scr_WeaponMatchCheck( false );

// get rid of by type/name inst if there
scr_MiniGame_DeleteAll( "both" );

// unblock dialog + pass in daily temp money
scr_CleanUp_Minigameover("sale");
scr_Unblock_CashIn(indexJumpTo, resultMoney, resultTip, resultService,  isTutorial  );

// obj_Control_All.cashSumOnDay += (resultMoney + resultTip); 


	  // tranfer animation
	  if( resultMoney > 0 ){
	var transfer = instance_create_layer(-900,-900, layer, obj_MoneyTransfer);
	    transfer.TranferWhere       =  "dialog";
	    transfer.save_CurrentMoney  =  obj_Control_All.cashSumOnDay;                // what is the current pool of money
	    transfer.save_ToAddMoney    =  resultMoney + resultTip;                                          // what is the sum to be added/substracted
	    transfer.save_TotalMoney    =  obj_Control_All.cashSumOnDay + resultMoney + resultTip; // what is the outcome!
	  }
	  

scr_PlaySound( snd_MenueSfx_Start, 0);
scr_ShakeIt( obj_Control_All.screenShakeTime_PressButton, obj_Control_All.screenShakeAmount_PressButton );

// after clean up -> destroy self
instance_destroy();
} 