
function scr_MiniGame_DeleteAll( deleteWhat ){

 if( deleteWhat == "by name" ){
     if ( instance_exists( obj_MiniGame_Sub_Btn_SortByName )){  instance_destroy( obj_MiniGame_Sub_Btn_SortByName ); } 
 }

 if( deleteWhat == "by type" ){
     if ( instance_exists( obj_MiniGame_Sub_Btn_SortByType )){  instance_destroy( obj_MiniGame_Sub_Btn_SortByType ); } 
 }


 if( deleteWhat == "both" ){
     if ( instance_exists( obj_MiniGame_Sub_Btn_SortByType )){  instance_destroy( obj_MiniGame_Sub_Btn_SortByType ); } 
     if ( instance_exists( obj_MiniGame_Sub_Btn_SortByName )){  instance_destroy( obj_MiniGame_Sub_Btn_SortByName ); } 	 
 }

}