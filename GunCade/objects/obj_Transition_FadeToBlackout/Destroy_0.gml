/// @description command?

if (instance_exists(obj_Workspace_Control)){
  obj_Workspace_Control.blockInput = false;
  obj_Workspace_Control.dialogIndex++;
}
  


/*
if(command == "end reveal"){

obj_Workspace_Control.blockDraw = false;

instance_destroy(obj_PopUp_NewCharacterBgr);
instance_destroy(obj_PopUp_NewCharacter);

}
