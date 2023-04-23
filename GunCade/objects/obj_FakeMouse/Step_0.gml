/// @description 

x = mouse_x;
y = mouse_y;


if (inputCoolDown == true){

  inputCoolDown_Timer--; 
  if ( inputCoolDown_Timer <= 0 ){
       inputCoolDown_Timer = inputCoolDown_Time;
	   inputCoolDown = false;
  } 
}

//collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_)