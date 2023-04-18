#region


jumpToLvl = noone; // to be passed in or no jump happens

delayTimer = 2;


// for drawin the black recangle
depth = -3500;
alpha     = 0;
fadeOut   = false;

alphaAdd = 0.03; // 0.04 fast
#endregion


 pixelateAmount = 1;

 pixelateTime = 5;
 pixelateTimer = pixelateTime;
 
// PixelatedEffects
//layer_enable_fx("EffectPixelOut", 1);


// set fx
  _fx_pixelate = fx_create("_filter_pixelate"); 
 fx_set_parameter(_fx_pixelate, "g_CellSize", 1  ); 
 layer_set_fx("PixelatedEffects", _fx_pixelate); 

   /// store
 //  pixelate_fx        = layer_get_fx("PixelatedEffects");
 //  pixelate_fx_params = fx_get_parameters(pixelate_fx);
   
   
  /// sound control! -> activate the alarm event
  
  
  //with(obj_AudioController){
    // event_perform(ev_user0, 0);
 // }
