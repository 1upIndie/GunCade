if ( instance_exists( obj_MiniGame_Result_Inst )){ instance_destroy(obj_MiniGame_Result_Inst); }

if ( instance_exists(obj_Selected_WeaponDetailTxt) ){ instance_destroy(obj_Selected_WeaponDetailTxt);  } 
// clear!



scr_ButtonResult_Create( "attachment ammo",   0);
scr_ButtonResult_Create( "attachment laser",  1);
scr_ButtonResult_Create( "attachment muzzle", 2);

scr_ButtonResult_Create( "attachment stock",  3);
scr_ButtonResult_Create( "attachment optics", 4);
scr_ButtonResult_Create( "attachment grip",   5);

