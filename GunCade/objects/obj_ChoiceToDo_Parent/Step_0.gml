/// @description instructions

// animation

 hoverOver = 0; // always reset



#region get hover over

// check if in one of the boxes
if (field_Type == 2){
	
	if ( mouse_x >= spr_Blink_X[1] and  mouse_x <= spr_Blink_X[1] + spr_Blink_ScaleWidht ){
	 	if ( mouse_y >= spr_Blink_Y and  mouse_y <= spr_Blink_Y + spr_Blink_ScaleHeight ){ hoverOver = 1; }}
		
	if ( mouse_x >= spr_Blink_X[2] and  mouse_x <= spr_Blink_X[2] + spr_Blink_ScaleWidht ){
	 	if ( mouse_y >= spr_Blink_Y and  mouse_y <= spr_Blink_Y + spr_Blink_ScaleHeight ){ hoverOver = 2; }}		

// check for imput
var mbLeft = mouse_check_button_released(mb_left);
  
  if(mbLeft == 1 and hoverOver == 1 and  canInput == true){  event_user(1);   }
  if(mbLeft == 2 and hoverOver == 2 and  canInput == true){  event_user(2);   }  
}


if (field_Type == 4){
	
	if ( mouse_x >= spr_Part[1] and  mouse_x <= spr_Part[1] + spr_Part_Width ){
	 	if ( mouse_y >= spr_Part_Y and  mouse_y <= spr_Part_Y + spr_Part_Height ){ hoverOver = 1; }}
		
	if ( mouse_x >= spr_Part[2] and  mouse_x <= spr_Part[2] + spr_Part_Width ){
	 	if ( mouse_y >= spr_Part_Y and  mouse_y <= spr_Part_Y + spr_Part_Height ){ hoverOver = 2; }}		

	if ( mouse_x >= spr_Part[3] and  mouse_x <= spr_Part[3] + spr_Part_Width ){
	 	if ( mouse_y >= spr_Part_Y and  mouse_y <= spr_Part_Y + spr_Part_Height ){ hoverOver = 3; }}
		
	if ( mouse_x >= spr_Part[4] and  mouse_x <= spr_Part[4] + spr_Part_Width ){
	 	if ( mouse_y >= spr_Part_Y and  mouse_y <= spr_Part_Y + spr_Part_Height ){ hoverOver = 4; }}	
}
#endregion



// auot blink
blink_Pos    += 1/blink_total;
if(blink_Pos >= 1) { blink_Pos = 0; }
alphaBlink = animcurve_channel_evaluate(_channel, blink_Pos);