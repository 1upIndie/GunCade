// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_ButtonResult_Create(inst_, slot_){
 
 
 var xx = obj_MiniGame_Parent.button_ResultSelected_X; 
 var yy = obj_MiniGame_Parent.button_ResultSelected_Y[slot_];  
 var size = obj_MiniGame_Parent.button_ResultSelected_Size;
 var instSpr_ = spr_Nothing;


 
 var indexGet = -999; 
 	  switch(inst_){
		  
	    case "melee 1":  indexGet = 0; break;
	    case "melee 2":  indexGet = 1; break;
	    case "melee 3":  indexGet = 2; break;
		
	    case "pistol 1":  indexGet = 10; break;
	    case "pistol 2":  indexGet = 11; break;
	    case "pistol 3":  indexGet = 12; break;

	    case "rifle 1":  indexGet = 20; break;
	    case "rifle 2":  indexGet = 21; break;
	    case "rifle 3":  indexGet = 22; break;

	    case "smg 1":  indexGet = 30; break;
	    case "smg 2":  indexGet = 31; break;
	    case "smg 3":  indexGet = 32; break;		

	    case "shotgun 1":  indexGet = 40; break;
	    case "shotgun 2":  indexGet = 41; break;
	    case "shotgun 3":  indexGet = 42; break;	

	    case "ar 1":  indexGet = 50; break;
	    case "ar 2":  indexGet = 51; break;
	    case "ar 3":  indexGet = 52; break;		

	    case "exotic 1":  indexGet = 60; break;
	    case "exotic 2":  indexGet = 61; break;
	    case "exotic 3":  indexGet = 62; break;		
		
	    case "attachment laser":   indexGet = 70; break;
	    case "attachment muzzle":  indexGet = 71; break;
	    case "attachment optics":  indexGet = 72; break;			
	    case "attachment scope":   indexGet = 73; break;
	    case "attachment stock":   indexGet = 74; break;		
	  }
	  
	  
 if(indexGet != -999){
    instSpr_ =  obj_Control_All.array_DetailWeaponText[indexGet].weaponSpr;
 
 
 
	var weapon = instance_create_layer( xx,yy, obj_MiniGame_Parent.layer_, obj_MiniGame_Result_Inst  );
	    weapon.sprite_index = instSpr_;
		weapon.whatisIt     = inst_;
		weapon.image_xscale = size;
		weapon.image_yscale = size; 
	   }



//////////////////
} // end of script