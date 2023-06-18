/// @description jump!

// unbreak
obj_Workspace_Control.blockInput = false;

/// jump to this dialog index point
obj_Workspace_Control.dialogIndex = toSkipTo_Index;


// destroy self
instance_destroy();