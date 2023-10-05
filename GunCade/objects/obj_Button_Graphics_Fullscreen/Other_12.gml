/// @description same event!

if( window_get_fullscreen() == 0){ window_set_fullscreen(1); settings_SprI = 1; obj_Control_All.fullscreen = 1;  }
 else {  window_set_fullscreen(0); settings_SprI = 0; obj_Control_All.fullscreen = 0; }


