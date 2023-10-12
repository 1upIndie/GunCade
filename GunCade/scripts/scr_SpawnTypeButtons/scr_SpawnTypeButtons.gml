
function scr_Spawn_TypeOrName_Buttons( sortBy_ ){

var ooo = obj_Control_All;
var bbb = obj_MiniGame_Parent;


#region sorted by type

if(sortBy_ == "type"){
	
	
// create instantly all types of weapons, first choise?
	if(ooo.unlocked_WeaponType_Melee_  == true ){
		var type_Melee  = instance_create_layer( bbb.button_Type_x[0], bbb.button_Type_Y[0],  bbb.layer_ , obj_MiniGame_Button_Type_Melee   );
		    type_Melee.image_xscale = bbb.button_TypeSize;
		    type_Melee.image_yscale = bbb.button_TypeSize;
	}

	if(ooo.unlocked_WeaponType_Pistol_  == true ){
	var type_Pistol = instance_create_layer( bbb.button_Type_x[1], bbb.button_Type_Y[0],  bbb.layer_ , obj_MiniGame_Button_Type_Pistol  );
	    type_Pistol.image_xscale = bbb.button_TypeSize;
	    type_Pistol.image_yscale = bbb.button_TypeSize;	
	}


	if(ooo.unlocked_WeaponType_Rifle_  == true ){
	var type_Smg    = instance_create_layer( bbb.button_Type_x[2], bbb.button_Type_Y[0],  bbb.layer_ , obj_MiniGame_Button_Type_Rifle     );
	    type_Smg.image_xscale = bbb.button_TypeSize;
	    type_Smg.image_yscale = bbb.button_TypeSize;
	}





	if(ooo.unlocked_WeaponType_Smg_  == true ){
		var type_Melee  = instance_create_layer( bbb.button_Type_x[0], bbb.button_Type_Y[1],  bbb.layer_ , obj_MiniGame_Button_Type_Smg   );
		    type_Melee.image_xscale = bbb.button_TypeSize;
		    type_Melee.image_yscale = bbb.button_TypeSize;
	}

	if(ooo.unlocked_WeaponType_Shotgun_  == true ){
	var type_Pistol = instance_create_layer( bbb.button_Type_x[1], bbb.button_Type_Y[1],  bbb.layer_ , obj_MiniGame_Button_Type_Shotgun  );
	    type_Pistol.image_xscale = bbb.button_TypeSize;
	    type_Pistol.image_yscale = bbb.button_TypeSize;	
	}


	if(ooo.unlocked_WeaponType_ARifle_  == true ){
	var type_Smg    = instance_create_layer( bbb.button_Type_x[2], bbb.button_Type_Y[1],  bbb.layer_ , obj_MiniGame_Button_Type_ARifle     );
	    type_Smg.image_xscale = bbb.button_TypeSize;
	    type_Smg.image_yscale = bbb.button_TypeSize;
	}	



	if(ooo.unlocked_WeaponType_Heavy_  == true ){
	var type_Smg    = instance_create_layer( bbb.button_Type_x[0], bbb.button_Type_Y[2], bbb.layer_ , obj_MiniGame_Button_Type_Heavy);
	    type_Smg.image_xscale = bbb.button_TypeSize;
	    type_Smg.image_yscale = bbb.button_TypeSize;
	}


	if(ooo.unlocked_WeaponType_Exotic_  == true ){
	var type_Smg    = instance_create_layer( bbb.button_Type_x[1], bbb.button_Type_Y[2], bbb.layer_ , obj_MiniGame_Button_Type_Exotic     );
	    type_Smg.image_xscale = bbb.button_TypeSize;
	    type_Smg.image_yscale = bbb.button_TypeSize;
	}



	if(ooo.unlocked_WeaponType_Accessory_  == true ){
	var type_Smg    = instance_create_layer( bbb.button_Type_x[2], bbb.button_Type_Y[2],  bbb.layer_ , obj_MiniGame_Button_Type_Accessory     );
	    type_Smg.image_xscale = bbb.button_TypeSize;
	    type_Smg.image_yscale = bbb.button_TypeSize;
	}

}
#endregion



#region sorted by type

if(sortBy_ == "abc"){
// create instantly all types of weapons, first choise?

		var sortBy_Numb  = instance_create_layer( bbb.button_Name_x[0], bbb.button_Name_Y[0],  bbb.layer_ , obj_MiniGame_Button_Name_0   );
		    sortBy_Numb.image_xscale = bbb.button_NameSize;
		    sortBy_Numb.image_yscale = bbb.button_NameSize;

		var sortBy_A  = instance_create_layer( bbb.button_Name_x[1], bbb.button_Name_Y[0],  bbb.layer_ , obj_MiniGame_Button_Name_A   );
		    sortBy_A.image_xscale = bbb.button_NameSize;
		    sortBy_A.image_yscale = bbb.button_NameSize;

		var sortBy_B  = instance_create_layer( bbb.button_Name_x[2], bbb.button_Name_Y[0],  bbb.layer_ , obj_MiniGame_Button_Name_B   );
		    sortBy_B.image_xscale = bbb.button_NameSize;
		    sortBy_B.image_yscale = bbb.button_NameSize;
			
		var sortBy_C  = instance_create_layer( bbb.button_Name_x[3], bbb.button_Name_Y[0],  bbb.layer_ , obj_MiniGame_Button_Name_C   );
		    sortBy_C.image_xscale = bbb.button_NameSize;
		    sortBy_C.image_yscale = bbb.button_NameSize;


			
		var sortBy_D  = instance_create_layer( bbb.button_Name_x[0], bbb.button_Name_Y[1],  bbb.layer_ , obj_MiniGame_Button_Name_D   );
		    sortBy_D.image_xscale = bbb.button_NameSize;
		    sortBy_D.image_yscale = bbb.button_NameSize;
			
		var sortBy_F  = instance_create_layer( bbb.button_Name_x[1], bbb.button_Name_Y[1],  bbb.layer_ , obj_MiniGame_Button_Name_F   );
		    sortBy_F.image_xscale = bbb.button_NameSize;
		    sortBy_F.image_yscale = bbb.button_NameSize;			
						
		var sortBy_G  = instance_create_layer( bbb.button_Name_x[2], bbb.button_Name_Y[1],  bbb.layer_ , obj_MiniGame_Button_Name_G   );
		    sortBy_G.image_xscale = bbb.button_NameSize;
		    sortBy_G.image_yscale = bbb.button_NameSize;
						
		var sortBy_J  = instance_create_layer( bbb.button_Name_x[3], bbb.button_Name_Y[1],  bbb.layer_ , obj_MiniGame_Button_Name_J   );
		    sortBy_J.image_xscale = bbb.button_NameSize;
		    sortBy_J.image_yscale = bbb.button_NameSize;			
			

			
		var sortBy_K  = instance_create_layer( bbb.button_Name_x[0], bbb.button_Name_Y[2],  bbb.layer_ , obj_MiniGame_Button_Name_K   );
		    sortBy_K.image_xscale = bbb.button_NameSize;
		    sortBy_K.image_yscale = bbb.button_NameSize;
			
		var sortBy_L  = instance_create_layer( bbb.button_Name_x[1], bbb.button_Name_Y[2],  bbb.layer_ , obj_MiniGame_Button_Name_L   );
		    sortBy_L.image_xscale = bbb.button_NameSize;
		    sortBy_L.image_yscale = bbb.button_NameSize;
			
		var sortBy_M  = instance_create_layer( bbb.button_Name_x[2], bbb.button_Name_Y[2],  bbb.layer_ , obj_MiniGame_Button_Name_M   );
		    sortBy_M.image_xscale = bbb.button_NameSize
		    sortBy_M.image_yscale = bbb.button_NameSize;
			
			
		var sortBy_O  = instance_create_layer( bbb.button_Name_x[3], bbb.button_Name_Y[2],  bbb.layer_ , obj_MiniGame_Button_Name_O   );
		    sortBy_O.image_xscale = bbb.button_NameSize;
		    sortBy_O.image_yscale = bbb.button_NameSize;			
			


			
		var sortBy_P  = instance_create_layer( bbb.button_Name_x[0], bbb.button_Name_Y[3],  bbb.layer_ , obj_MiniGame_Button_Name_P   );
		    sortBy_P.image_xscale = bbb.button_NameSize;
		    sortBy_P.image_yscale = bbb.button_NameSize;

			
		var sortBy_S  = instance_create_layer( bbb.button_Name_x[1], bbb.button_Name_Y[3],  bbb.layer_ , obj_MiniGame_Button_Name_S   );
		    sortBy_S.image_xscale = bbb.button_NameSize;
		    sortBy_S.image_yscale = bbb.button_NameSize;
			
			
		var sortBy_T  = instance_create_layer( bbb.button_Name_x[2], bbb.button_Name_Y[3],  bbb.layer_ , obj_MiniGame_Button_Name_T   );
		    sortBy_T.image_xscale = bbb.button_NameSize;
		    sortBy_T.image_yscale = bbb.button_NameSize;
			
			
		var sortBy_W  = instance_create_layer( bbb.button_Name_x[3], bbb.button_Name_Y[3],  bbb.layer_ , obj_MiniGame_Button_Name_W   );
		    sortBy_W.image_xscale = bbb.button_NameSize;
		    sortBy_W.image_yscale = bbb.button_NameSize;			

}	
#endregion



} // end of script