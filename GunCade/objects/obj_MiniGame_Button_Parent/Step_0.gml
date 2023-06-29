/// @description hover over!

hoverOver = false;

if( mouse_x >= bbox_left and mouse_x < bbox_right){
  if( mouse_y >= bbox_top and mouse_y < bbox_bottom){
  
   hoverOver = true;
  }
}

if(hoverOver == true){  image_alpha = obj_Workspace_Control.hoverAlpha; }
 else { image_alpha = 1;  }
