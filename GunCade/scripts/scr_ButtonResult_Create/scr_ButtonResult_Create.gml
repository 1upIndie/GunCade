// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_ButtonResult_Create(inst_, slot_){
 
 
 var xx = obj_MiniGame_Parent.button_ResultSelected_X; 
 var yy = obj_MiniGame_Parent.button_ResultSelected_Y[slot_];  
 var size = obj_MiniGame_Parent.button_ResultSelected_Size;
 var instSpr_ = spr_MiniGame_Pistol_2;

 switch(inst_){
	  case "pistol 1":  instSpr_ = spr_MiniGame_Pistol_2;
	  break;
 
	  case "pistol 2": instSpr_  = spr_MiniGame_Pistol_1;
	  break; 
 
	  case "pistol 3":  instSpr_ = spr_MiniGame_Pistol_3;
	  break; 
	  
	  
 }
 
 
var weapon = instance_create_layer( xx,yy, obj_MiniGame_Parent.layer_, obj_MiniGame_Result_Inst  );
    weapon.sprite_index = instSpr_;
	weapon.whatisIt     = inst_;
	weapon.image_xscale = size;
	weapon.image_yscale = size; 


}