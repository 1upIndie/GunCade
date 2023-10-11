if ( instance_exists( obj_MiniGame_Result_Inst )){ instance_destroy(obj_MiniGame_Result_Inst); }
if ( instance_exists(obj_Selected_WeaponDetailTxt) ){ instance_destroy(obj_Selected_WeaponDetailTxt);  } 

// delete also temp carried if there!
if ( instance_exists( obj_Temp_Drag )){ instance_destroy(obj_Temp_Drag); }


// delete also sorting by name buttons if there!
if ( instance_exists( obj_Temp_Drag )){ instance_destroy(obj_Temp_Drag); }


// get rid of by name inst if there
scr_MiniGame_DeleteAll( "by name" );

// spawn in type buttons
scr_Spawn_TypeOrName_Buttons( "type" );

