/// @description Insert description here



alpha = 1;

depth = -3500;


//// setup fx layer

// for drawin the black recangle
fadeIn = false;


//// setup fx layer
 pixelateAmount = 16; // start value, pixelate value of 16
 
 pixelateTime = 3;
 pixelateTimer = pixelateTime;
 
/*
 _fx_pixelate = fx_create("_filter_pixelate"); 
 
 fx_set_parameter(_fx_pixelate, "g_CellSize", pixelateAmount  );
 layer_set_fx("EffectPixelOut", _fx_pixelate); // change here to your fx layers name