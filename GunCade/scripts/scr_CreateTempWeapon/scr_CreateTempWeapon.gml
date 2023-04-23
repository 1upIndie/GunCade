
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

// destroy or reset weapon attachments
switch(whatisIt){



}




// if reset is true, reset to default status
if(reset_ == true){
   state = "blink";
   image_alpha  = 0.6;
   sprite_index = spr_MiniGame_Pistol_Empty;
  }
}

} // end of script