if ( isNews == false ){ exit; }

	 
	var camX        = camera_get_view_x( view_camera[0] );
	var camY        = camera_get_view_y( view_camera[0] );
	var camWidth    = camera_get_view_width( view_camera[0] );
	var camHeight   = camera_get_view_height( view_camera[0] );	

var scanLinesTotal = 10;
var scanLineIndex  = 0;

scanLineY += scanLineYAdd;

// random inbalance
scrollingTimer--;
if(scrollingTimer <= 0){ 
	scanLineY -= scrollingPushUpFinal;
    scanLineAlpha = random_range( scrollingAlphaSet[0], scrollingAlphaSet[1] );
	scrollingTimer = irandom_range( scrollingTime[0], scrollingTime[1] );
	}


if(scanLineY >= 64){ scanLineY = 0; }
 repeat(scanLinesTotal){
draw_sprite_ext(spr_Tv_Scanlines, 0,  camX, camY + scanLineY + (scanLineIndex * 64) , 800, 3 , 0, c_white, scanLineAlpha );


scanLineIndex++;
}
	 

 // draw_sprite_ext( spr_Ui_BalkenNew_1px, 0, camX,camY + 150, 3000, 30, 0, c_white, 0.9 );
  
  newsScrollX += newsScrollXAdd;
  if( newsScrollX <= newsScrollEnd){ newsScrollX = newsScrollXStart; }

  draw_text_ext_transformed(x + newsScrollX,y, newsScroll_Txt, 0, 8000, newsScroll_TxtSize,newsScroll_TxtSize, 0 );

	  // tv Box
	 draw_sprite_stretched_ext(spr_Tv_RhamenDialog, 0, camX,camY+tvStartY, camWidth, camHeight+tvHeight, c_white, 1  );


