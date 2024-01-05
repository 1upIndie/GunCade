/// @description choise 1

// set variable
toSkipTo_Index = 610;
//obj_Control_All.nunChoise_Day3 = true 
	
		
	var sum = -8000;


     // negative value!
	var transfer = instance_create_layer(-900,-900, layer, obj_MoneyTransfer);
	    transfer.TranferWhere       =  "dialog";
	    transfer.save_CurrentMoney  =  obj_Control_All.cashSumOnDay;                // what is the current pool of money
	    transfer.save_ToAddMoney    =  sum;                                          // what is the sum to be added/substracted
	    transfer.save_TotalMoney    =  obj_Control_All.cashSumOnDay + sum; // what is the outcome!
	  

	   // unblock + ump to correct point
	
// jump to plus unblock
obj_Workspace_Control.dialogIndex = toSkipTo_Index;
obj_Workspace_Control.blockInput = false;