/// @description 
var txt = "nope";
var count = 0;

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
   
  draw_rectangle(wid,0, wid+4, 5000,0 );
  
 var xTrue = mouse_x-camX;

  if(  mouse_x <  wid  ){ perc = ( result/ widH) * 100  ;  }
  if(  mouse_x >  wid  ){ perc = ( result/ widH) * 100  ;  }  
  

  draw_text( mouse_x, mouse_y+40, perc );
  

  
  
  