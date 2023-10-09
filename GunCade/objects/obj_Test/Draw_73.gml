/// @description 
var txt = "nope";
var count = 0;
var oo = obj_Control_All;
	var camX        = camera_get_view_x( view_camera[0] );
	var camY        = camera_get_view_y( view_camera[0] );
	var camWidth    = camera_get_view_width( view_camera[0] );
	var camHeight   = camera_get_view_height( view_camera[0] );
/*
var calc1 = camera_get_view_width(view_camera[0] );
var calc2 = camera_get_view_height(view_camera[0] );

txt = string(calc1 ) + " : " + string(calc2 );


draw_text(x,y, txt)
*/

  var widH = (camWidth/2)
  var wid = camX  + (camWidth/2); 
  var hei = camY  + (camHeight/2);  
  var perc = 0;
  
   var result = point_distance(wid, mouse_y, mouse_x, mouse_y );
   
   
   var txt = string(obj_Camera.camera_Show_Width) + " " + string(camWidth) ;
   var txt2 = string( window_get_width()) + " Scale:" + string(  obj_Control_All.screenScale);

  // draw_text_transformed( mouse_x, mouse_y+80, txt, 3,3,0  );
  // draw_text_transformed( mouse_x, mouse_y+120, txt2 , 3,3,0  );
   
   
   
   if (instance_exists(obj_Workspace_Control)){
	   
	   var sprTVW    = sprite_get_width( spr_Tv_RhamenDialog );
	   
    txt2 = string( sprTVW ) + "  " +  string( sprTVW * obj_Workspace_Control.tv_Main_ScaleX );
    var tt =  sprTVW * obj_Workspace_Control.tv_Main_ScaleX;
   draw_text_transformed( mouse_x, mouse_y+80, txt2 , 3,3,0  );
   
   draw_rectangle(mouse_x, mouse_y, mouse_x +tt,  mouse_y +40, 1  );
   
   }
   
/*   
if instance_exists(obj_MiniGame_Parent){
var bb = "day: " +  string(oo.currentCutscene_DAY)  
   //bb = instance_exists(obj_Tutorial_Arrow_Parent)
   draw_text( mouse_x, mouse_y+40, bb );
}
   var bb = "day: " +  string(oo.currentCutscene_DAY)  
    draw_text( mouse_x, mouse_y+40, bb );  
   
  

  
  
  