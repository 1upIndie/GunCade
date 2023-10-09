/// @description pos set once + spawn in props! + spanw in result btn + exit btn


var camX  = camera_get_view_x(view_camera[0] );
var camY  = camera_get_view_y(view_camera[0] );

var camWidth  = camera_get_view_width(view_camera[0] );
var camHeight = camera_get_view_height(view_camera[0] );

x = camX + (camWidth/2);
 if (instance_exists(obj_CameraDummy)){
  x = obj_CameraDummy.x;
 }
y = camY -10;


// fill in later!
 var spawn_Car     = true;
 var spawn_Flowers = true; 
 var spawn_Coffee  = true; 
 var spawn_Mono    = true; 
 var spawn_Hawaii   = true; 



var layerSet   = "Instances_Buttons";
var scale_XSet = image_xscale;
var scale_YSet = image_yscale;
// hawaii card
var centerX = x - ( (sprite_width)/2);


// auto spawn all office things
var arrayOffice_L = array_length( obj_Control_All.array_OfficeProp);
var arrayOffice_I = 0;

	repeat(arrayOffice_L){
 var spawn = false;
   
   // bigger or equal current day/ current day bigger -> not spawn
   if( obj_Control_All.currentCutscene_DAY >= obj_Control_All.array_OfficeProp[arrayOffice_I].prop_UnlockedByDay  ){ spawn = true; }
   if( obj_Control_All.currentCutscene_DAY >  obj_Control_All.array_OfficeProp[arrayOffice_I].prop_EndsByDay      ){ spawn = false; } 
   
   
   // can it be spawned?
   if( spawn == true){
   	var prop_Office_X  = centerX + (obj_Control_All.array_OfficeProp[arrayOffice_I].prop_X  *  image_xscale);
	var prop_Office_Y  = y       + (obj_Control_All.array_OfficeProp[arrayOffice_I].prop_Y  *  image_yscale);	
	var sprSet =   obj_Control_All.array_OfficeProp[arrayOffice_I].prop_Spr;
	 
	 var propOffice = instance_create_layer( prop_Office_X, prop_Office_Y, layerSet, obj_Office_Props_Parent, {
	     image_xscale : scale_XSet,
	     image_yscale : scale_YSet,
		 sprite_index : sprSet
	  }  );    
      propOffice.office_Index     =  arrayOffice_I;
	  propOffice.hoverOver_Price  =  obj_Control_All.array_OfficeProp[arrayOffice_I].prop_Cost;
	  propOffice.isBaught         =  obj_Control_All.array_OfficeProp[arrayOffice_I].prop_isUnlocked;
	  
	  propOffice.hoverOver_Spr    = obj_Control_All.array_OfficeProp[arrayOffice_I].prop_Pop_Spr;
	  propOffice.hoverOver_X      = obj_Control_All.array_OfficeProp[arrayOffice_I].prop_Pop_X;
	  propOffice.hoverOver_Y      = obj_Control_All.array_OfficeProp[arrayOffice_I].prop_Pop_Y;	  
   }

  // loop!
  arrayOffice_I++;
	} // repeat end




// spawn in result button for safe! + popup for result
   	var result_X  = centerX + (491  *  image_xscale);
	var result_Y  = y       + (332  *  image_yscale);	

	 var result_Btn   = instance_create_layer( result_X, result_Y, layerSet, obj_Office_Result_Btn, {
	     image_xscale : scale_XSet,
	     image_yscale : scale_YSet
	  }  );

alarm[1] = alarm1_TimeSpawnResult;


// exit btn
var exit_Btn_Scale = 0.4; 

	 var exit_Btn   = instance_create_layer( camX + 280, camY + camHeight/2 , layerSet, obj_Office_Exit_Btn, {
	     image_xscale : exit_Btn_Scale,
	     image_yscale : exit_Btn_Scale
	  }  );		 
		 

/*
 if(spawn_Hawaii == true){
	var prop_Hawaii_X  = centerX + (1177 * image_xscale);
	var prop_Hawaii_Y  = y       + (122  * image_yscale);	 
	  instance_create_layer( prop_Hawaii_X, prop_Hawaii_Y, layerSet, obj_Office_Props_Hawai, {
	     image_xscale : scale_XSet,
	     image_yscale : scale_YSet     
	  }  );  
}


 if(spawn_Car == true){
	var prop_Car_X  = centerX + (572 * image_xscale);
	var prop_Car_Y  = y       + (513 * image_yscale);	 
	  instance_create_layer( prop_Car_X, prop_Car_Y, layerSet, obj_Office_Props_Car, {
	     image_xscale : scale_XSet,
	     image_yscale : scale_YSet     
	  }  );  
}



 if(spawn_Coffee == true){
	var prop_Coffee_X  = centerX + (1258 * image_xscale);
	var prop_Coffee_Y  = y       + (548 * image_yscale);	 
	  instance_create_layer( prop_Coffee_X, prop_Coffee_Y, layerSet, obj_Office_Props_Coffee, {
	     image_xscale : scale_XSet,
	     image_yscale : scale_YSet     
	  }  );  
}


 if(spawn_Flowers == true){
	var prop_Flowers_X  = centerX + (741 * image_xscale);
	var prop_Flowers_Y  = y       + (418 * image_yscale);	 
	  instance_create_layer( prop_Flowers_X, prop_Flowers_Y, layerSet, obj_Office_Props_Flowers, {
	     image_xscale : scale_XSet,
	     image_yscale : scale_YSet     
	  }  );  
}


 if(spawn_Mono == true){
	var prop_Mono_X  = centerX + (792 * image_xscale);
	var prop_Mono_Y  = y       + (353 * image_yscale);	 
	  instance_create_layer( prop_Mono_X, prop_Mono_Y, layerSet, obj_Office_Props_Mono, {
	     image_xscale : scale_XSet,
	     image_yscale : scale_YSet     
	  }  );  
}
*/