/// @description choise 2

// set variable
toSkipTo_Index = 620;
	
	
	
var sum = obj_Control_All.cashTotalInSave_Office + obj_Control_All.cashSumOnDay;
// special case pacifist run
// if ( sum < 8000 and .... ){  toSkipTo_Index  = 630;   }


// jump to plus unblock
obj_Workspace_Control.dialogIndex = toSkipTo_Index;
obj_Workspace_Control.blockInput = false;