/// @description enable draw + set if baught
	var  camX        = camera_get_view_x( view_camera[0] );
	var  camY        = camera_get_view_y( view_camera[0] );
	var  camWidth    = camera_get_view_width( view_camera[0] );
	var  camHeight   = camera_get_view_height( view_camera[0] );	

canDraw = true;


if(isBaught == false){   
	image_alpha = alphaBaught_False;

	} else {
	image_alpha = alphaBaught_True;	
	
	}
	
// set not baught price x,y
 hoverOver_Price_X = (sprite_width/2);
 var getPrice    = prefixCash_ + string( hoverOver_Price ) + "$" + suffixCash_; 
 hoverOver_PriceTXT = getPrice;  