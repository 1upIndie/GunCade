/// @description 

     // negative value!
	var transfer = instance_create_layer(-900,-900, layer, obj_MoneyTransfer);
	    transfer.TranferWhere       =  "dialog";
	    transfer.save_CurrentMoney  =  obj_Control_All.cashSumOnDay;                // what is the current pool of money
	    transfer.save_ToAddMoney    =  obj_Control_All.array_DetailWeaponText[30].cost;                                          // what is the sum to be added/substracted
	    transfer.save_TotalMoney    =  obj_Control_All.cashSumOnDay + obj_Control_All.array_DetailWeaponText[30].cost; // what is the outcome!
	  

	   // unblock + ump to correct point
       obj_Workspace_Control.blockInput   = false;
	   obj_Workspace_Control.dialogIndex++;
