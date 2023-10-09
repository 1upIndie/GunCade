
function scr_Unblock_CashIn( jumpToDialogIndex_, money_, tip_, service_, tutorial_){
       
	   
  if( tutorial_ == false){
	   var getArray_Sold_L    = array_length( obj_Control_All.tempDay_Sold );
	   var getArray_Tips_L    = array_length( obj_Control_All.tempDay_Tips );	   
	   var getArray_Service_L = array_length( obj_Control_All.tempDay_Service );		   
	   
	   obj_Control_All.tempDay_Sold[ getArray_Sold_L ]       = money_;
       obj_Control_All.tempDay_Tips[ getArray_Tips_L ]       = tip_;
       obj_Control_All.tempDay_Service[ getArray_Service_L ] = service_;
	   
	   
	   
	   //obj_Workspace_Control.dayTemp_Cash      += money_; 
	   //obj_Workspace_Control.dayTemp_Cash_Tip  += tip_;
  }       
   
	   // unblock + ump to correct point
       obj_Workspace_Control.blockInput   = false;
	   obj_Workspace_Control.dialogIndex  = jumpToDialogIndex_;

}