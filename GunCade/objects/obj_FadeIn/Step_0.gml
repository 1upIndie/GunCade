 	alpha -= 0.03;
	if (alpha < 0.9) {  fadeIn = true; }
	if (alpha <= .01) { instance_destroy();   }
	
	
	
// first pixelate

if (fadeIn == true ){	
	
	
  pixelateTimer--;
  if (pixelateTimer <= 0) {
  pixelateTimer = pixelateTime;	
  
  if (pixelateAmount > 1) { pixelateAmount--; }
   
   
  }
  
  /*
    // apply change to fx layer ->
var _fx_struct2 = layer_get_fx("EffectPixelOut"); // change here to your fx layers name
if (_fx_struct2 != -1) {  

    fx_set_parameter(_fx_pixelate, "g_CellSize", pixelateAmount  );

  }
  */
  
  
}