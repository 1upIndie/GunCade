// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_RadioTv_Show( showTVRadio_, showNameBox_){

	 if( showTVRadio_ == false ){
		 obj_Workspace_Tv_Parent.canDraw = false;
		 obj_Radio.totalBlock            = true;
		 obj_TvProgramm_Parent.canDraw   = false;
	 }


	 if( showTVRadio_ == true ){
		 obj_Workspace_Tv_Parent.canDraw = true;
		 obj_Radio.totalBlock            = false;
		 obj_TvProgramm_Parent.canDraw   = true;
	 }

         // draw name box or not
	     obj_Workspace_Control.drawNameBox = showNameBox_;

	 
// end of script
}