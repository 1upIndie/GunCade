
function scr_CreateTempWeapon(reset_, setSprite_){


if (!instance_exists(obj_Temp_Drag) and obj_MiniGame_Parent.inputCoolDown == false){

var size = obj_MiniGame_Parent.button_ResultSelected_Size;
var getSpr      = setSprite_;
var setWhatIsIt = whatisIt;


	var tempWeapon = instance_create_layer(mouse_x, mouse_y, "Instances_MiniGame", obj_Temp_Drag, {
		 sprite_index : getSpr,
		 image_xscale : size,
		 image_yscale : size 
 
	}  );

tempWeapon.whatisIt  = whatisIt;
obj_MiniGame_Parent.inputCoolDown      = true;

// set to be not placeable!!
var indexAttach = 0;

var impossible      = false;
var impossibleColor = c_white;

switch(whatisIt){
    case "laser pointer":  if( obj_MiniGame_Parent.Attachments_CanPlace_Laser  == false ){ impossible = true; impossibleColor = c_red; } break;
    case "muzzle":         if( obj_MiniGame_Parent.Attachments_CanPlace_Muzzle  == false ){ impossible = true; impossibleColor = c_red; } break;
    case "optics":         if( obj_MiniGame_Parent.Attachments_CanPlace_Optics  == false ){ impossible = true; impossibleColor = c_red; } break;
	
    case "stock":          if( obj_MiniGame_Parent.Attachments_CanPlace_Stock  == false ){ impossible = true; impossibleColor = c_red; } break;
    case "scope":          if( obj_MiniGame_Parent.Attachments_CanPlace_Scope  == false ){ impossible = true; impossibleColor = c_red; } break;
}


tempWeapon.impossibleDrop = impossible;
tempWeapon.image_blend    = impossibleColor;

// if reset is true, reset to default status
if(reset_ == true){
   state = "blink";
   image_alpha  = 0.6;
   sprite_index = spr_MiniGame_Pistol_Empty;
  }
}

} // end of script