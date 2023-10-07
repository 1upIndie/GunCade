/// @description center

// 640 360       * 40  #1
// 1280 x 720    * 80  #2
// 2560 x 1440   * 160 #3
// 5k  x 2880    * 160 #3


// get saved values!

var scaleGet = obj_Control_All.screenScale;

var setWindow_W = factorScale * 16 * scaleGet;
var setWindow_H = factorScale * 9  * scaleGet;

// once set!
window_set_size( setWindow_W, setWindow_H );  
surface_resize(application_surface, setWindow_W, setWindow_H ); 



// set to center position
var display_Width__  = display_get_width()/2;
var display_Height__ = display_get_height()/2;

var camCenterX = display_Width__  - ( window_get_width()/2  ); 
var camCenterY = display_Height__ - ( window_get_height()/2 ); 

window_set_position(camCenterX, camCenterY );

