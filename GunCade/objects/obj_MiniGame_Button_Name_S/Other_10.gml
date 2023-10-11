if ( instance_exists( obj_MiniGame_Result_Inst )){ instance_destroy(obj_MiniGame_Result_Inst); }

if ( instance_exists(obj_Selected_WeaponDetailTxt) ){ instance_destroy(obj_Selected_WeaponDetailTxt);  } 
// clear!

	if (obj_MiniGame_Parent.isTutorial == true) { scr_Tutorial_SetArrowsTxt( "pick one of selection" ); }


scr_ButtonResult_Create( "pistol 1", 10, "four");
scr_ButtonResult_Create( "smg 3", 32, "four");
scr_ButtonResult_Create( "shotgun 2", 41, "four");
scr_ButtonResult_Create( "attachment stock", 83, "four");

