/// @description Animate + move


#region animate

// animate character
 character_SprIndexTimer--;
 if(character_SprIndexTimer <= 0){
 
	  if(character_SprIndex < character_SprIndexMax){
         character_SprIndex++;
	  } else { character_SprIndex = 0; }
  
  character_SprIndexTimer = character_SprIndexTime; 
 }





#endregion 



#region State machine

if(state == "wait" ){
	stateTimer_Wait--;
	if(stateTimer_Wait <= 0){ state = "character"; }

}



// character popin + wait 2
if(state == "character" ){

 character_AniCurve_I += 1/stateTimer_Character;

var _val = animcurve_channel_evaluate(  character_AniCurve, character_AniCurve_I  );
    
	character_Spr_YMove = character_Spr_YMoveMax -  (_val * character_Spr_YMoveMax);

 // next state -> short delay
 if(character_AniCurve_I >= 1){ state = "wait 2"; }
 
}


if(state == "wait 2" ){
	stateTimer_Wait2--;
	if(stateTimer_Wait2 <= 0){ state = "name"; }

}



/// name popin
if(state == "name" ){


 name_AniCurve_I += 1/stateTimer_Name;

var _val = animcurve_channel_evaluate(  name_AniCurve, name_AniCurve_I  );
   
	name_Spr_XMove = name_Spr_XMoveMax -  ( _val * name_Spr_XMoveMax);

 // next state -> short delay
 if(name_AniCurve_I >= 1){ state = "wait 3"; }
	
}	
	
	
if(state == "wait 3" ){
	stateTimer_Wait3--;
	if(stateTimer_Wait3 <= 0){ state = "description"; }

}





/// description popin
if(state == "description" ){

 description_AniCurve_I += 1/stateTimer_Description;

var _val = animcurve_channel_evaluate(  description_AniCurve, description_AniCurve_I  );
   
	description_Spr_XMove = description_Spr_XMoveMax -  (_val * description_Spr_XMoveMax);

 // next state -> short delay
 if(description_AniCurve_I >= 1){ state = "wait 4"; }
	
}

if(state == "wait 4" ){
	stateTimer_Wait4--;
	if(stateTimer_Wait4 <= 0){ state = "end"; }

}
	

// end all
if(state == "end" ){  instantSkip = true; // disable


// after effect fade in and out
var fadeInOut = instance_create_layer(x,y, "Instances_OverlayPopUp", obj_Transition_FadeInOut);
    fadeInOut.command_Inblack = "end reveal";
    fadeInOut.command = "unblock disable layer visible";
state = "limbo";

}	
#endregion


  // instant skip
  var checkInput = scr_InputCheck("any key");
   
  if(checkInput == 1 and instantSkip == false){  
	  
	  scr_PlaySound(snd_MenueSfx_Dialog_Skip);
	  state = "end";
	  description_Spr_XMove = 0;
	  name_Spr_XMove        = 0;
	  character_Spr_YMove   = 0;
	  }
