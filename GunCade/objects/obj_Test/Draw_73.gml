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
   
if instance_exists(obj_MiniGame_Parent){
var bb = "day: " +  string(oo.currentCutscene_DAY)  
   //bb = instance_exists(obj_Tutorial_Arrow_Parent)
   draw_text( mouse_x, mouse_y+40, bb );
}
   var bb = "day: " +  string(oo.currentCutscene_DAY)  
    draw_text( mouse_x, mouse_y+40, bb );  
   
  

  
  
  