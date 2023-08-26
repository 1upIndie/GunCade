/// @description 

var camX  = camera_get_view_x( view_camera[0] );
var camY  = camera_get_view_y( view_camera[0] );

var camWidth  = camera_get_view_width( view_camera[0] );
var camHeight = camera_get_view_height( view_camera[0] );


var col = c_white;
// draw character


// draw top black bar

draw_sprite_ext(spr_Character_Reveal_BgrScroll, blackBgr_Index, camX + (camWidth/2) ,camY+blackBgr_TopY, blackBgr_XScale,blackBgr_YScaleTop, blackBgr_AngleTop , c_white, 1 );




#region draw character

	var charX = camX + character_Spr_X;
	var charY = camY + character_Spr_Y +character_Spr_YMove;

	 //charX = camX + 200;
	 //charY = camY + 0; // +character_Spr_YMove;
	
	var charSpr   = character_Spr;
	var charSprI  = character_SprIndex;
	var charScale = character_SprScale;
	draw_sprite_ext( charSpr, 0, charX, charY, charScale,charScale,0, col, 1 );

  //draw_sprite(charSpr, 0, charX, charY )
  
  //draw_sprite_ext(charSpr, 0, charX, charY, 0.5,0.5,0,  )
  
  
#endregion

// draw bottom black bar
draw_sprite_ext(spr_Character_Reveal_BgrScroll, blackBgr_Index, camX + (camWidth/2) ,camY+camHeight - blackBgr_BottomY, blackBgr_XScale, blackBgr_YScaleBottom, blackBgr_AngleBottom , c_white, 1 );

#region draw name

	var nameX      = camX + name_Spr_X + name_Spr_XMove;
	var nameY      = camY + name_Spr_Y;
	var nameSpr    = name_Spr;
	var nameScale  = name_SprScale;
	draw_sprite_ext(nameSpr, 0, nameX, nameY, nameScale, nameScale, 0, col, 1 );

#endregion


#region draw descritpion

	var descriptionX      = camX + description_Spr_X + description_Spr_XMove;
	var descriptionY      = camY + description_Spr_Y;
	var descriptionSpr    = descritpion_Spr;
	var descriptionScale  = description_SprScale;
	draw_sprite_ext( descriptionSpr, 0, descriptionX, descriptionY, descriptionScale, descriptionScale, 0, col, 1 );

#endregion

if(obj_Control_All.debug == true){
	draw_text( camX+50, camY+50, name_Spr_XMove);
	draw_text( camX+50, camY+90, name_AniCurve_I);
}


