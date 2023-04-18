/// @description Shaking




var randX = random_range(-shakeAmount,shakeAmount);
var randY = random_range(-shakeAmount,shakeAmount);


camera_set_view_pos(view_camera[0], saved_Cam_X + randX, saved_Cam_Y + randY );

// run down timer
shake_Duration--;
if(shake_Duration <= 0){ instance_destroy();  }





