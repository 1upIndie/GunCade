// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_ShakeIt(duration_, amount_){
	
	if ( instance_exists(obj_Effect_ScreenShake) == false ){
	
	 var shakeIt = instance_create_layer(x,y, "Instances", obj_Effect_ScreenShake);
	     shakeIt.shake_Duration = duration_;
         shakeIt.shakeAmount    = amount_;
	 
	}

}