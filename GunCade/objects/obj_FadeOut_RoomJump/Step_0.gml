/// first delay
delayTimer--;
if (delayTimer <= 0){


// second add blacking out
#region
if (fadeOut == true) {
 	alpha += alphaAdd;
	
	if (alpha > .95) {
				
        if (jumpToLvl != noone){ instance_destroy(); }
		
		}
	
}	
#endregion


pixelateTimer--;
if (pixelateTimer <= 0){

pixelateAmount++;

 pixelateTimer = pixelateTime;


if (pixelateAmount > 16){  fadeOut = true;  }
}


// apply pixelate
// fx_set_parameter(pixelate_fx_params, "g_CellSize", pixelateAmount  ); 





  // apply change to fx layer ->
var _fx_struct2  = layer_get_fx("PixelatedEffects");  
if (_fx_struct2 != -1) {  

 fx_set_parameter(_fx_pixelate, "g_CellSize", pixelateAmount  ); 

 }
 
}
