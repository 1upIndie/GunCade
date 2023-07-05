/// @description 

// spawn in buttons menue system
  oo = obj_Control_All;
  camX        = camera_get_view_x( view_camera[0] );
  camY        = camera_get_view_y( view_camera[0] );
  camWidth    = camera_get_view_width( view_camera[0] );
  camHeight   = camera_get_view_height( view_camera[0] );
  layer_ = "Instances_MiniGame";
 
 // button clicked, spawn things and destroy others
 update = false;
   spawn = "";
 
 
 // costs input values to be compared by

current_Costs               = 0; // total value
/* current_Type                = ""; 
 current_Weapon              = ""; 
 current_Attachment__LaserP  = 0;
 current_Attachment__Muzzle  = 0; 
 current_Attachment__Optics  = 0; 
 current_Attachment__Scope   = 0; 
 current_Attachment__Stock   = 0; 
 
 
 player_Wish_Type   = "";
*/
 
 #region sale 2x, fail, refuse

 // possible variations!
 // perfect combo!
 possible_Weapon_Perfect          = -999;   // index numbers!
 possible_LaserPointer_Perfect    = -999;  // attachments not set on default
 possible_Muzzle_Perfect          = -999;  
 possible_Optics_Perfect          = -999; 
 possible_Scope_Perfect           = -999; 
 possible_Stock_Perfect           = -999; 
 
 
 // all other combos -> good sale, no tip
 array_Positive_Weapons   = array_create(0); 
 

 // negatives!
 array_Negative           = array_create(0); // values that make it a bad sale -> fail!
 negative_LaserPointer    = false;
 negative_Muzzle          = false;  
 negative_Optics          = false; 
 negative_Scope           = false; 
 negative_Stock           = false;   

 negative_Costs           = 9999999;  

 // jump points
 result_Index_Sale     = 0;
 result_Index_Messup   = 0; 
 result_Index_Refuse   = 0;

 #endregion



 #region input cooldown
 inputCoolDown_Time  = 15;
 inputCoolDown_Timer = inputCoolDown_Time;
 inputCoolDown       = false;
 
 #endregion
 
 
  
 var tabStart = 46;
 var tabXX = 158;

bgrX = camX + 32;
bgrY = camY + 20;
 bgrXscale = 650;
 bgrYscale = 420; 

costsTotal_X = camX + 700;
costsTotal_Y = camY + 600;

detailSpr_X    = camX + 45;
detailSpr_Y    = camY + 90;
detailSpr_Size = 0.7;

detailTxt_Headline_x    = camX + 230;
detailTxt_Cost_x        = camX + 230;
detailTxt_Description_x = camX + 50;

detailTxt_Headline_y       = camY + 75;
detailTxt_Cost_y           = camY + 120;
detailTxt_Description_y[0] = camY + 210;
detailTxt_Description_y[1] = camY + 250;

// stat poiunts
detail_Stats_Size[0] = 0.10;
detail_Stats_Size[1] = 0.10;

detail_Stats_X[0]   = camY + 50; // what is it icon
detail_Stats_X[1]   = detail_Stats_X[0] + 50; // what is it icon

var statsYY = 20; 
var statsStart = 135;

detail_Stats_Y[0]   =  camY + statsStart + (statsYY * 0);
detail_Stats_Y[1]   =  camY + statsStart + (statsYY * 1);
detail_Stats_Y[2]   =  camY + statsStart + (statsYY * 2);
detail_Stats_Y[3]   =  camY + statsStart + (statsYY * 3);
detail_Stats_Y[4]   =  camY + statsStart + (statsYY * 4);


dropOffSpot_X = camX + 690;
dropOffSpot_Y = camY + 280;
  dropOffSpot_Weapon_X = dropOffSpot_X + 155;
  dropOffSpot_Weapon_Y = dropOffSpot_Y + 60;

// attachements ammo spots
var AttachAmmoXX = 105; var AttachAmmoStartX = 745;
  dropOffSpot_AttachAmmo_X[0] = camX + AttachAmmoStartX + (AttachAmmoXX * 0);
  dropOffSpot_AttachAmmo_X[1] = camX + AttachAmmoStartX + (AttachAmmoXX * 1);
  dropOffSpot_AttachAmmo_X[2] = camX + AttachAmmoStartX + (AttachAmmoXX * 2);  
  
  dropOffSpot_AttachAmmo_Y[0] = camY + 305; // Ammo, laser, muzzle
  dropOffSpot_AttachAmmo_Y[1] = camY + 330; // stock, optics, scope 


  // 3 rows -> new override
  dropOffSpot_AttachAmmo_X[0] = camX + AttachAmmoStartX + (AttachAmmoXX * 0);
  dropOffSpot_AttachAmmo_X[1] = camX + AttachAmmoStartX + (AttachAmmoXX * 2);

var AttachAmmoYY = 35; var AttachAmmoStartY = 305;  
  dropOffSpot_AttachAmmo_Y[0] = camY + AttachAmmoStartY + (AttachAmmoYY * 0); // Ammo, laser, muzzle
  dropOffSpot_AttachAmmo_Y[1] = camY + AttachAmmoStartY + (AttachAmmoYY * 1); // stock, optics, scope 
  dropOffSpot_AttachAmmo_Y[2] = camY + AttachAmmoStartY + (AttachAmmoYY * 2); // stock, optics, scope 

 button_ResultSelectedAttach_XSize = 0.09;
 button_ResultSelectedAttach_YSize = 0.055;



button_Tab_x[0] = camX + tabStart + (tabXX  * 0);
button_Tab_x[1] = camX + tabStart + (tabXX  * 1);
button_Tab_x[2] = camX + tabStart + (tabXX  * 2);
button_Tab_y    = camY + 30;

 var typeStartX = 45;
 var typeStartY = 90; 
 
 var typeXX    = 125;
 var typeYY    = 100; 
 
button_Type_x[0] = camX + typeStartX + typeXX * 0;
button_Type_x[1] = camX + typeStartX + typeXX * 1;
button_Type_x[2] = camX + typeStartX + typeXX * 2;
button_Type_x[3] = camX + typeStartX + typeXX * 3;

button_Type_Y[0] = camY + typeStartY + typeYY * 0;
button_Type_Y[1] = camY + typeStartY + typeYY * 1;
button_Type_Y[2] = camY + typeStartY + typeYY * 2;
button_TypeSize = 0.15;


 var nameStartX = 45;
 var nameStartY = 90; 
 
 var nameXX    = 125;
 var nameYY    = 100; 
button_Name_x[0] = camX + nameStartX + nameXX * 0;
button_Name_x[1] = camX + nameStartX + nameXX * 1;
button_Name_x[2] = camX + nameStartX + nameXX * 2;
button_Name_x[3] = camX + nameStartX + nameXX * 3;
button_Name_x[4] = camX + nameStartX + nameXX * 4;
button_Name_x[5] = camX + nameStartX + nameXX * 5;


button_Name_Y[0] = camY + nameStartY + nameYY * 0;
button_Name_Y[1] = camY + nameStartY + nameYY * 1;
button_Name_Y[2] = camY + nameStartY + nameYY * 2;
button_Name_Y[3] = camY + nameStartY + nameYY * 2;
button_Name_Y[4] = camY + nameStartY + nameYY * 2;
button_NameSize = 0.3;




var resultY_Start = 21;
var resultY_YY = 67;
button_ResultSelected_X    = camX + 500;
button_ResultSelected_Y[0] = camY + resultY_Start + (resultY_YY * 0);
button_ResultSelected_Y[1] = camY + resultY_Start + (resultY_YY * 1);
button_ResultSelected_Y[2] = camY + resultY_Start + (resultY_YY * 2);
button_ResultSelected_Y[3] = camY + resultY_Start + (resultY_YY * 3);
button_ResultSelected_Y[4] = camY + resultY_Start + (resultY_YY * 4);
button_ResultSelected_Y[5] = camY + resultY_Start + (resultY_YY * 5);
button_ResultSelected_Y[6] = camY + resultY_Start + (resultY_YY * 6);

button_ResultSelected_Size = 0.14;



var sizeAttach = button_ResultSelected_Size;



// right buttons -> refuse/sale
button_Right_X[0]  = camX + 765;
button_Right_X[1]  = camX + 920;
button_Right_Y     = camY + 415;



 #region set attachments
 
 function attachmentsCreate( name_) constructor {
	  
	  
	  Lpointer_Spr   =  spr_MiniGame_Invisible;
	  Lpointer_X     =  -999;
	  Lpointer_Y     =  -999; 
	  Lpointer_Size  = 1;

	  optics_Spr   =  spr_MiniGame_Invisible;
	  optics_X     =  -999;
	  optics_Y     =  -999;  
	  optics_Size  = 1;

	  scope_Spr   =  spr_MiniGame_Invisible;
	  scope_X     =  -999;
	  scope_Y     =  -999;  
	  scope_Size  = 1;

	  stock_Spr   =  spr_MiniGame_Invisible;
	  stock_X     =  -999;
	  stock_Y     =  -999;  
	  stock_Size  = 1;


	  muzzle_Spr   =  spr_MiniGame_Invisible;
	  muzzle_X     =  -999;
	  muzzle_Y     =  -999;  
	  muzzle_Size  = 1;

  function setAttachement(attachmenType_, spr_, x_, y_, size_){
	   if(attachmenType_ == "laser"){
		  Lpointer_Spr  =  spr_;
		  Lpointer_X    =  x_;
		  Lpointer_Y    =  y_;  
	      Lpointer_Size  = size_;		  
	   }
	   
	   if(attachmenType_ == "optics"){
		  optics_Spr  =  spr_;
		  optics_X    =  x_;
		  optics_Y    =  y_;  
	      optics_Size  = size_;			  
	   }
	   
	   if(attachmenType_ == "muzzle"){
		  muzzle_Spr  =  spr_;
		  muzzle_X    =  x_;
		  muzzle_Y    =  y_;  
	      muzzle_Size  = size_;			  
	   }
	   
	   if(attachmenType_ == "scope"){
		  scope_Spr  =  spr_;
		  scope_X    =  x_;
		  scope_Y    =  y_; 
	      scope_Size  = size_;			  
	   }
	   
	   if(attachmenType_ == "stock"){
		  stock_Spr  =  spr_;
		  stock_X    =  x_;
		  stock_Y    =  y_;   
	      stock_Size  = size_;			  
	   }
  } // end of setter function

 } // end of constructor
 
 arrayAttachments = array_create(0);  
 
 // melee 0-10 pistols 10-20, rifles 20-30,  smg 30-40, shotgun 40-50, ar, 50-60, exotics 60-70
 var attachment_I = 0;
  var attack_Default_Laser_X  = 50;
  var attack_Default_Laser_Y  = 50;
  var attack_Default_Optics_X = 100;
  var attack_Default_Optics_Y = 20;  
  var attack_Default_Muzzle_X = 100;
  var attack_Default_Muzzle_Y = 20;    
  var attack_Default_Stock_X = 200;
  var attack_Default_Stock_Y = 50; 
  var attack_Default_Scope_X = 200;
  var attack_Default_Scope_Y = 50; 


 attachment_I = 10;
 arrayAttachments[attachment_I] = new attachmentsCreate("pistol 1");  // 
   arrayAttachments[attachment_I].setAttachement("laser" , spr_MiniGame_Attachment_LaserPointer,   attack_Default_Laser_X  + 0, attack_Default_Laser_Y  + 0, sizeAttach);
   arrayAttachments[attachment_I].setAttachement("optics", spr_MiniGame_Attachment_Optics,         attack_Default_Optics_X + 0, attack_Default_Optics_Y + 0, sizeAttach);
   arrayAttachments[attachment_I].setAttachement("muzzle", spr_MiniGame_Attachment_Muzzle,         attack_Default_Muzzle_X + 0, attack_Default_Muzzle_Y + 0, sizeAttach);
   arrayAttachments[attachment_I].setAttachement("stock" , spr_MiniGame_Attachment_Stock,          attack_Default_Stock_X  + 0, attack_Default_Stock_Y  + 0, sizeAttach);
   attachment_I++;

 arrayAttachments[attachment_I] = new attachmentsCreate("pistol 2");  // 
   arrayAttachments[attachment_I].setAttachement("laser" , spr_MiniGame_Attachment_LaserPointer,   attack_Default_Laser_X  + 0, attack_Default_Laser_Y  + 0, sizeAttach);
   arrayAttachments[attachment_I].setAttachement("optics", spr_MiniGame_Attachment_Optics,         attack_Default_Optics_X + 0, attack_Default_Optics_Y + 0, sizeAttach);
   arrayAttachments[attachment_I].setAttachement("muzzle", spr_MiniGame_Attachment_Muzzle,         attack_Default_Muzzle_X + 0, attack_Default_Muzzle_Y + 0, sizeAttach);
   arrayAttachments[attachment_I].setAttachement("stock" , spr_MiniGame_Attachment_Stock,          attack_Default_Stock_X  + 0, attack_Default_Stock_Y  + 0, sizeAttach);
   attachment_I++;;
   
 arrayAttachments[attachment_I] = new attachmentsCreate("pistol 3");  // 
  // arrayAttachments[attachment_I]setAttachement("laser" , spr_MiniGame_Attachment_LaserPointer, 100,20);
   arrayAttachments[attachment_I].setAttachement("optics", spr_MiniGame_Attachment_Optics,         attack_Default_Optics_X + 0, attack_Default_Optics_Y + 0, sizeAttach);
   //arrayAttachments[attachment_I]setAttachement("muzzle", spr_MiniGame_Attachment_Muzzle, 100,20);   
   //arrayAttachments[attachment_I]setAttachement("stock" , spr_MiniGame_Attachment_Stock, 100,20);


 // flags to set
 Attachments_CanPlace_Laser  = false;
 Attachments_CanPlace_Optics = false; 
 Attachments_CanPlace_Muzzle = false;
 Attachments_CanPlace_Stock  = false; 
 Attachments_CanPlace_Scope  = false;
 
 #endregion



// background
    gbr = instance_create_layer( bgrX, bgrY, "Instances_MiniGame_Bgr", obj_MiniGame_Bgr_Left );
    gbr.image_xscale = bgrXscale;
    gbr.image_yscale = bgrYscale;
	gbr.image_blend  = #0B0914;
	//gbr.image_blend  = c_red;	
// drop of area!
    dropOffSpot = instance_create_layer( dropOffSpot_X, dropOffSpot_Y, "Instances_MiniGame_Bgr", obj_MiniGame_DropSpot );
 
 
    // drop off area firt weapons "slot" -> right bottom side
    dropOffSpot_Weapon = instance_create_layer( dropOffSpot_Weapon_X, dropOffSpot_Weapon_Y, "Instances_MiniGame", obj_MiniGame_Drop_Weapon );	

    dropOffSpot_Ammo    = instance_create_layer( dropOffSpot_AttachAmmo_X[0], dropOffSpot_AttachAmmo_Y[0], "Instances_MiniGame", obj_MiniGame_Drop_Ammo );	
    dropOffSpot_LaserP  = instance_create_layer( dropOffSpot_AttachAmmo_X[0], dropOffSpot_AttachAmmo_Y[1], "Instances_MiniGame", obj_MiniGame_Drop_LaserPointer );		
    dropOffSpot_Muzzle  = instance_create_layer( dropOffSpot_AttachAmmo_X[0], dropOffSpot_AttachAmmo_Y[2], "Instances_MiniGame", obj_MiniGame_Drop_Muzzle );

    dropOffSpot_Stock   = instance_create_layer( dropOffSpot_AttachAmmo_X[2], dropOffSpot_AttachAmmo_Y[0], "Instances_MiniGame", obj_MiniGame_Drop_Stock );
    dropOffSpot_Optics  = instance_create_layer( dropOffSpot_AttachAmmo_X[2], dropOffSpot_AttachAmmo_Y[1], "Instances_MiniGame", obj_MiniGame_Drop_Optics );	
    dropOffSpot_Scope   = instance_create_layer( dropOffSpot_AttachAmmo_X[2], dropOffSpot_AttachAmmo_Y[2], "Instances_MiniGame", obj_MiniGame_Drop_Grip );	




// top tabs
    tab1 = instance_create_layer( button_Tab_x[0], button_Tab_y, layer_, obj_MiniGame_Button_SortBy_Type );
    tab1.text_ = oo.textPrefix_Tab + "Type" + oo.textSuffix_Tab;
	
    tab2 = instance_create_layer( button_Tab_x[1], button_Tab_y, layer_, obj_MiniGame_Button_SortBy_Name );
    tab2.text_ = oo.textPrefix_Tab + "Name" + oo.textSuffix_Tab;	


// right buttons
    btnRefuse = instance_create_layer( button_Right_X[0], button_Right_Y, layer_, obj_MiniGame_Button_Refuse );
    btnRefuse.text_ = oo.textPrefix_Tab + "Refuse" + oo.textSuffix_Tab;
	
    btnRefuse = instance_create_layer( button_Right_X[1], button_Right_Y, layer_, obj_MiniGame_Button_Sale );
    btnRefuse.text_ = oo.textPrefix_Tab + "Sell" + oo.textSuffix_Tab;






// spawn types
event_user(0);

