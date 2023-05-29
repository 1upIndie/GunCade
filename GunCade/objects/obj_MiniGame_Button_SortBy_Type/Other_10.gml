if ( instance_exists( obj_MiniGame_Result_Inst )){ instance_destroy(obj_MiniGame_Result_Inst); }
if ( instance_exists(obj_Selected_WeaponDetailTxt) ){ instance_destroy(obj_Selected_WeaponDetailTxt);  } 

// delete also temp carried if there!
if ( instance_exists( obj_Temp_Drag )){ instance_destroy(obj_Temp_Drag); }


// spawn in type buttons
scr_SpawnTypeButtons();