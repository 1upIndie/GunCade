/// @description spawn one news off button!
	var camX        = camera_get_view_x( view_camera[0] );
	var camY        = camera_get_view_y( view_camera[0] );
	var camWidth    = camera_get_view_width( view_camera[0] );
	var camHeight   = camera_get_view_height( view_camera[0] );	
	
	x = camX + (camWidth/2);
	
	
if ( isNews == true ){
    
	instance_create_depth(camX+ camWidth + buttonX, camY + buttonY, -16000, obj_NewsTv_Button );
}

// is arcade? -> spawn in arcade programms!
if ( isNews == false ){
	 
	 var layerSet   = "Instances_BgrAraceProgs";
	 var getScaleX  = image_xscale;
	 var getScaleY  = image_yscale;	 
  
  var centerX = x - ((sprite_get_width(spr_WorkStation_Background)/2) *getScaleX) ;

  
  var setX1 = centerX + 322 * getScaleX; // left office orc
  var setY1 = y + (388 * getScaleY);    
  instance_create_layer(setX1, setY1, layerSet, obj_Arcade_OfficeOrc,{
    image_xscale : getScaleX,
    image_yscale : getScaleY	  
  } );
  
  
  var setX2 = centerX + ( 988 * getScaleX); // shmup center right
  var setY2 = y + (411  * getScaleY);    
  instance_create_layer(setX2, setY2, layerSet, obj_Arcade_Shmup,{
    image_xscale : getScaleX,
    image_yscale : getScaleY	  
  } );  
  
  
  var setX3 = centerX + ( 708 * getScaleX); // left mullet hell
  var setY3 = y + (403  * getScaleY);    
  instance_create_layer(setX3, setY3, layerSet, obj_Arcade_MulletHellCenter,{
    image_xscale : getScaleX,
    image_yscale : getScaleY	  
  } );  

	 
}

	// instance_create_depth(camX+ buttonX, camY + buttonY, -17000, obj_NewsTv_Button );