if ( instance_exists( obj_MiniGame_Result_Inst )){ instance_destroy(obj_MiniGame_Result_Inst); }

if ( instance_exists(obj_Selected_WeaponDetailTxt) ){ instance_destroy(obj_Selected_WeaponDetailTxt);  } 
// clear!

	if (obj_MiniGame_Parent.isTutorial == true) { scr_Tutorial_SetArrowsTxt( "pick one of selection" ); }



scr_ButtonResult_Create( "heavy 3"           , 0, "four");
scr_ButtonResult_Create( "attachment muzzle" , 1, "four");
scr_ButtonResult_Create( "smg 2"             , 2, "four");

