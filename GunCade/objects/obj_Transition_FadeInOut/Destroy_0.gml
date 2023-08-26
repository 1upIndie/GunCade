/// @description command?

if ( command == "unblock disable layer visible"){ 
  obj_Workspace_Control.blockInput = false;
  obj_Workspace_Control.dialogIndex++;
  
  
  var lay_id = layer_get_id("Instances_CharacterReveal_Bgr");
if( layer_get_visible(lay_id) == 0){ 
	layer_set_visible(lay_id, 1);	
	}
  
}


/*
if(command == "end reveal"){

obj_Workspace_Control.blockDraw = false;

instance_destroy(obj_PopUp_NewCharacterBgr);
instance_destroy(obj_PopUp_NewCharacter);

}
