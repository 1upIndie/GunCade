/// @description 

if ( instance_exists( obj_MiniGame_Result_Inst )){ instance_destroy(obj_MiniGame_Result_Inst); }

if ( instance_exists(obj_Selected_WeaponDetailTxt) ){ instance_destroy(obj_Selected_WeaponDetailTxt);  } 
// clear!


scr_ButtonResult_Create( "pistol 1", 0);
scr_ButtonResult_Create( "pistol 2", 1);
scr_ButtonResult_Create( "pistol 3", 2);
//scr_ButtonResult_Create( "pistol 1", 3);
//scr_ButtonResult_Create( "pistol 2", 4);
