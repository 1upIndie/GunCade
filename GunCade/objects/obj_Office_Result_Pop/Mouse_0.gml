/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


if(canDraw == false){ exit; }
if(state != "draw value all" ){ exit; }

scr_PlaySound(snd_MenueSfx_Reduce, 0 );


obj_Office_Result_Btn.delayTimer = obj_Office_Result_Btn.delayTime;
canDraw = false;





