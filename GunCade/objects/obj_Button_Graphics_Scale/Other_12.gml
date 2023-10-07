/// @description go up
// Sie können Ihren Code in diesem Editor schreiben

var playSfx = false;


if ( settings_SprI < disScaleMax){  settings_SprI++; playSfx = true;  };

if( playSfx == true){ scr_PlaySound(sound_Left ,0);  }
 else { scr_PlaySound(snd_MenueSfx_CantAlarm ,0); }

var multiFactor = obj_Camera.factorScale;
switch(settings_SprI){
  case 0: multiFactor = obj_Camera.factorScale * 1; obj_Control_All.screenScale = 1;   break;
  case 1: multiFactor = obj_Camera.factorScale * 2; obj_Control_All.screenScale = 2;   break;
  case 2: multiFactor = obj_Camera.factorScale * 3; obj_Control_All.screenScale = 3;   break;
  case 3: multiFactor = obj_Camera.factorScale * 4; obj_Control_All.screenScale = 4;   break;
}


var scaleGet = obj_Control_All.screenScale;

var setWindow_W = obj_Camera.factorScale * 16 * scaleGet;
var setWindow_H = obj_Camera.factorScale * 9  * scaleGet;

// once set!
window_set_size( setWindow_W, setWindow_H );  
surface_resize(application_surface, setWindow_W, setWindow_H ); 





// 640 360       * 40  #1
// 1280 x 720    * 80  #2
// 2560 x 1440   * 160 #3
// 5k  x 2880   * 160 #3
/*

obj_Camera.display_Width  =  multiFactor * 16; // 1040
obj_Camera.display_Height =  multiFactor * 9; // 585

// full display size set window and application surface  
window_set_size(obj_Camera.display_Width, obj_Camera.display_Height );  
surface_resize(application_surface, obj_Camera.display_Width, obj_Camera.display_Height ); 