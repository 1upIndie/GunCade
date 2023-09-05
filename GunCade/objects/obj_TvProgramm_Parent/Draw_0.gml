/// @description draw_self + move



// last sprite
if ( instance_exists(obj_MiniGame_Parent)){ exit; }

draw_sprite_ext(tvProgramm_Sprite, currentFrame, x+ moveX,y+moveY, tvScaleX+ zoomTotal, tvScaleY+ zoomTotal, 0, c_white, 1 );

// last image
draw_sprite_ext(tvProgramm_Sprite, lastFrame, x+ moveX,y+moveY, tvScaleX+ zoomTotal, tvScaleY+ zoomTotal, 0, c_white, lastFrame_Alpha );


// apply changes if there are any
if ( stateMove    != ""){

   if(stateMove == "move left"  and moveX     > -moveXMax ){ moveX     -= moveXAdd;  }
   if(stateMove == "move right" and moveX     <  moveXMax ){ moveX     += moveXAdd;  }
   if(stateMove == "zoom"       and zoomTotal <  zoomMax  ){ zoomTotal += zoomAdd;   }
      
}
// stateFade    = "";


// last image fade out
if ( lastFrame_Alpha > 0){
    lastFrame_Alpha -= lastFrame_AlphaSubstract;
};


// if has news
if(hasNews == true){
	if(isMain == 1 ){ scribble(hasNewsTxt ).draw( x+newsX,  y+newsY  ); }
	if(isMain == 0 ){ scribble(hasNewsTxtS).draw( x+newsXs, y+newsYs ); }
}

//draw_text(x+80,y+50, currentFrame);
