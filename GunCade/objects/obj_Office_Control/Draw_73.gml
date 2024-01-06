/// @description draw current money

	var  camX        = camera_get_view_x( view_camera[0] );
	var  camY        = camera_get_view_y( view_camera[0] );
	var  camWidth    = camera_get_view_width( view_camera[0] );
	var  camHeight   = camera_get_view_height( view_camera[0] );	


    var prefixCash_ =  obj_Control_All.textDetail_CostPrefix;
    var suffixCash_ =  obj_Control_All.textDetail_CostSuffix; 

    var cashTxt = prefixCash_ + "$" + string( obj_Control_All.cashTotalInSave_Office) + suffixCash_; 

    if( obj_Control_All.cashTotalInSave_Office < 0 ){
		cashTxt = prefixCash_ + "-$" + string( abs(obj_Control_All.cashTotalInSave_Office)) + suffixCash_; 
	
		
	}



var moneyX = obj_Control_All.moneyTxtX;
var moneyY = obj_Control_All.moneyTxtY;


    scribble(cashTxt).draw( camX + moneyX, camY+moneyY );