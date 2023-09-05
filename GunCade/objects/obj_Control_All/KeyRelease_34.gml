/// @description fullscreen Debug

if(debug == true){
if( window_get_fullscreen() == 0){ window_set_fullscreen(1) }
 else { window_set_fullscreen(0); }
}