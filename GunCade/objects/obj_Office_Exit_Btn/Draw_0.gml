/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben




draw_self();


	 X_Set_I	+= 1/X_Set_ITimeMax;
	
var _val = animcurve_channel_evaluate(  X_AniCurve, X_Set_I  );
   
   x = startX + ( _val * moveTotal );
   

   
   if( X_Set_I >= 1 ){ X_Set_I = 0;  }
   
