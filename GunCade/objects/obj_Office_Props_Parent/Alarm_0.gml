/// @description enable draw + set if baught
	var  camX        = camera_get_view_x( view_camera[0] );
	var  camY        = camera_get_view_y( view_camera[0] );
	var  camWidth    = camera_get_view_width( view_camera[0] );
	var  camHeight   = camera_get_view_height( view_camera[0] );	

canDraw = true;

save_Xscale = image_xscale;
save_Yscale = image_yscale;

if(isBaught == false){   
	image_alpha = alphaBaught_False;

	} else {
	image_alpha = alphaBaught_True;	
	
	}
	
// set not baught price x,y
 hoverOver_Price_X = (sprite_width/2);
 var getPrice    = prefixCash_ + string( hoverOver_Price ) + "$" + suffixCash_; 
 hoverOver_PriceTXT = getPrice;  
 
 
 // for the linking line
 hoverOver_Center_X =  ( sprite_get_width(  obj_Control_All.array_OfficeProp[office_Index].prop_Pop_Spr )  * image_xscale ) /2;
 hoverOver_Center_Y =  ( sprite_get_height( obj_Control_All.array_OfficeProp[office_Index].prop_Pop_Spr )  * image_yscale ) /2;