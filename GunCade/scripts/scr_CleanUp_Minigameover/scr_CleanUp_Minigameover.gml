// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_CleanUp_Minigameover(buttonSelected_){

// clean up!
if ( instance_exists( obj_MiniGame_Result_Inst )){ instance_destroy(obj_MiniGame_Result_Inst); }
if ( instance_exists(obj_Selected_WeaponDetailTxt) ){ instance_destroy(obj_Selected_WeaponDetailTxt);  } 

// delete also temp carried if there!
if ( instance_exists( obj_Temp_Drag )){ instance_destroy(obj_Temp_Drag); }

// get rid of all minigame left overs
if ( instance_exists( obj_MiniGame_Button_SortBy_Type )){ instance_destroy(obj_MiniGame_Button_SortBy_Type); }
if ( instance_exists( obj_MiniGame_Button_SortBy_Name )){ instance_destroy(obj_MiniGame_Button_SortBy_Name); }

if ( instance_exists( obj_MiniGame_DropSpot )){ instance_destroy(obj_MiniGame_DropSpot); }
if ( instance_exists( obj_MiniGame_Drop_Weapon )){ instance_destroy(obj_MiniGame_Drop_Weapon); }
if ( instance_exists( obj_MiniGame_Bgr_Left )){ instance_destroy(obj_MiniGame_Bgr_Left); }
if ( instance_exists( obj_Temp_Drag )){ instance_destroy(obj_Temp_Drag); }
if ( instance_exists( obj_Selected_WeaponDetailTxt )){ instance_destroy(obj_Selected_WeaponDetailTxt); }

if ( instance_exists( obj_MiniGame_Parent )){ instance_destroy(obj_MiniGame_Parent); }


// destroy other button, choise dependent
if(buttonSelected_ == "sale"){
   if ( instance_exists( obj_MiniGame_Button_Refuse )){ instance_destroy(obj_MiniGame_Button_Refuse); }
}

if(buttonSelected_ == "refuse"){
   if ( instance_exists( obj_MiniGame_Button_Sale )){ instance_destroy(obj_MiniGame_Button_Sale); }
}


} // end of script