/// @description jump!


/// jump to this dialog index point
obj_Workspace_Control.dialogIndex = toSkipTo_Index;


// unbreak
obj_Workspace_Control.blockInput = false;

// destroy self
instance_destroy();