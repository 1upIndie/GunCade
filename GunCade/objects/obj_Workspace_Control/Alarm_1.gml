/// @description update values once, spawn tv and radio!
 // reset values once!
 camX        = camera_get_view_x( view_camera[0] );
 camY        = camera_get_view_y( view_camera[0] );
 camWidth    = camera_get_view_width( view_camera[0] );
 camHeight   = camera_get_view_height( view_camera[0] );

 camWidth_Half = camWidth/2;
 
var oo = obj_Control_All; 
 
// spawn tv  +  radio + arcade programs!
if( oo.arrayCutscenes[oo.currentCutscene_DAY].isNews == false){ 
	
	// main tb
	var layerSet = "Instances_TV";
	var mainX       = camX + camWidth + tv_Main_X;
	var mainY       = camY +            tv_Main_Y;	
	var mainScaleX  = tv_Main_ScaleX;		
	var mainScaleY  = tv_Main_ScaleY;	
	
	
		instance_create_layer( mainX, mainY, layerSet, obj_Workspace_Tv_Main, {
		 image_xscale : mainScaleX,
		 image_yscale : mainScaleY	 
		}  );


    // sub tv 1+ 2
	var subX       = camX + camWidth + tv_Sub_X;
	var subY1      = camY +            tv_Sub_Y[1];	
	var subY2      = camY +            tv_Sub_Y[2];		
	var subScaleX  = tv_Sub_ScaleX;		
	var subScaleY  = tv_Sub_ScaleY;	


		instance_create_layer( subX, subY1, layerSet, obj_Workspace_Tv_Small, {
		 image_xscale : subScaleX,
		 image_yscale : subScaleY	 
		}  );
	
		instance_create_layer( subX, subY2, layerSet, obj_Workspace_Tv_Small, {
		 image_xscale : subScaleX,
		 image_yscale : subScaleY	 
		}  );



    // radio
	var radioX       = camX + camWidth + radio_X;
	var radioY       = camY +            radio_Y;	
	var radioScaleX  = radio_ScaleX;		
	var radioScaleY  = radio_ScaleY;	

		instance_create_layer( radioX, radioY, layerSet, obj_Radio, {
		 image_xscale : radioScaleX,
		 image_yscale : radioScaleY	 
		}  );
	
	
}


