

function scr_Tutorial_SetArrowsTxt( order){
	
	var getOrder = order;
	// always first destroy
    scr_Tutorial_DestroyAll();

var camX        = camera_get_view_x( view_camera[0] );
var camY        = camera_get_view_y( view_camera[0] );
var bb	        = obj_MiniGame_Parent;
var depthSet    = -12000;

	if(getOrder == "start"){ 
		// instance_create_layer()
		
		}


    // if pressed sort by type or alphabet -> pick one of the results
	if( getOrder == "pick one category" ){ 
		
		var xx1 = camX + bb.spawn_tutorial_Txt_CategoryAlp_X;		
		var yy1 = camY + bb.spawn_tutorial_Txt_CategoryAlp_Y;	
			
		//if (!instance_exists(obj_Tutorial_Arrow_Side_Left)){
		  var arrowTxt =  instance_create_depth( xx1, yy1, depthSet, obj_Tutorial_Arrow_Side_Left );
			  arrowTxt.Sprite_Text_Spr = spr_Tutorial_txt_Select;
		// }
		
		
	}



    // if pressed sort by type or alphabet -> pick one of the results
	if( getOrder == "pick one of selection" ){ 
		
		var xx1 = camX + bb.spawn_tutorial_Txt_Selectable_X;		
		var yy1 = camY + bb.spawn_tutorial_Txt_Selectable_Y;	
	
		//if (!instance_exists(obj_Tutorial_Arrow_Side_Left)){
		  var arrowTxt =  instance_create_depth( xx1, yy1, depthSet, obj_Tutorial_Arrow_Side_Left );
			  arrowTxt.Sprite_Text_Spr = spr_Tutorial_txt_Select;		  
		// }
		
        // show drop off point!
		var xx2 = camX + bb.spawn_tutorial_Txt_Dropable_X;		
		var yy2 = camY + bb.spawn_tutorial_Txt_Dropable_Y;		

		  var arrowTxt2 =  instance_create_depth( xx2, yy2, depthSet, obj_Tutorial_Arrow_Down );
			  arrowTxt2.Sprite_Text_Spr = spr_Tutorial_txt_DropHere;
			  arrowTxt2.timer_Idle = arrowTxt2.delayed_Time; /// delay!
	}



    // if pressed sort by type or alphabet -> pick one of the results
	if( getOrder == "can sell" ){ 
		
		var xx1 = camX + bb.spawn_tutorial_Txt_EndIt_X;		
		var yy1 = camY + bb.spawn_tutorial_Txt_EndIt_Y;	
	
		if (!instance_exists(obj_Tutorial_Arrow_Side_Right)){
		  var arrowTxt =  instance_create_depth( xx1, yy1, depthSet, obj_Tutorial_Arrow_Side_Right );
			  arrowTxt.Sprite_Text_Spr = spr_Tutorial_txt_Decide;		  
		 }}



}// end of script