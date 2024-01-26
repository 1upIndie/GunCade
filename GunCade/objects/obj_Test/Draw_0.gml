/// @description 



var txt ="No";
//if ( instance_exists(obj_FakeMouse) ){ txt = "yes"; }

var oo = obj_Control_All;
//txt = oo.arrayCutscenes[oo.currentCutscene_DAY].isNews;

if (instance_exists(obj_Arcade_MulletHellCenter)){
	
	draw_line(mouse_x, mouse_y, obj_Arcade_MulletHellCenter.x, obj_Arcade_MulletHellCenter.y)
	
	txt = "yes"}

draw_text(x,y+30, txt)
/*
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
/*
  var wid = camX  + (camWidth/2); 
  var perc = 0;

  if(  mouse_x <  wid  ){ perc = ((mouse_x-camX)/wid)  ;  }
  if(  mouse_x >  wid  ){   }  
  
  var result = mouse_x;
  draw_text( mouse_x, mouse_y+40, result );
  
  