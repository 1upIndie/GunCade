/// @description 


if(state == "hover"){  event_user(0); }

if(state == "idle" ){  event_user(1); }

// check for hover! -> override
state = "idle";
if ( mouse_x >= bbox_left and mouse_x <= bbox_right  ){
  if ( mouse_y >= bbox_top and mouse_y <= bbox_bottom ){
state = "hover";
}} 


// clicking on!
if(state == "hover" and canClick == true){
	canClick = false;
    event_user(2);

}







