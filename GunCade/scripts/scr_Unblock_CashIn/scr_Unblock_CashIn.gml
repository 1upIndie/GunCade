
function scr_Unblock_CashIn( jumpToDialogIndex_, money_, tip_){

	   obj_Workspace_Control.dayTemp_Cash      += money_; 
	   obj_Workspace_Control.dayTemp_Cash_Tip  += tip_;
       
   
	   // unblock + ump to correct point
       obj_Workspace_Control.blockInput   = false;
	   obj_Workspace_Control.dialogIndex  = jumpToDialogIndex_;

}