/// @description go down

var playSfx = false;
if ( settings_SprI >= 1){  settings_SprI--; playSfx = true;  };

if( playSfx == true){ scr_PlaySound(sound_Left);  }
 else { scr_PlaySound(snd_MenueSfx_CantAlarm); }
 
 

var multiFactor = 40;
switch(settings_SprI){
  case 0: multiFactor = factorCam * 1; obj_Control_All.screenScale = 1;   break;
  case 1: multiFactor = factorCam * 2; obj_Control_All.screenScale = 2;   break;
  case 2: multiFactor = factorCam * 3; obj_Control_All.screenScale = 3;   break;
  case 3: multiFactor = factorCam * 4; obj_Control_All.screenScale = 4;   break;
}

// 640 360       * 40  #1
// 1280 x 720    * 80  #2
// 2560 x 1440   * 160 #3

obj_Camera.display_Width  =  multiFactor * 16; // 1040
obj_Camera.display_Height =  multiFactor * 9; // 585

// full display size set window and application surface  
window_set_size(obj_Camera.display_Width, obj_Camera.display_Height );  
surface_resize(application_surface, obj_Camera.display_Width, obj_Camera.display_Height ); 