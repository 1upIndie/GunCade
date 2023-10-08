/// @description pos set once + spawn in props!


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