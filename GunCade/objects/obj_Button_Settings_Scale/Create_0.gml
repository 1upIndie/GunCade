/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

 disWidth = display_get_width();
 disScaleMax = 0;
/*
if( disWidth >= 1920){ disScaleMax = 1; }
 if( disWidth >= 2560){ disScaleMax = 2; }
 if( disWidth >= 5120){ disScaleMax = 3; }
*/

 if( disWidth >= 1920){ disScaleMax = 0; }
 if( disWidth >= 2560){ disScaleMax = 1; }
 if( disWidth >= 5120){ disScaleMax = 2; }
 
// Inherit the parent event
event_inherited();

isSetting = true;
settings_Spr  = spr_Ui_Button_ScaleX;
settings_SprI = 0;



sound_Left  = snd_MenueSfx_ToggleLR;
sound_Right = snd_MenueSfx_ToggleLR;

switch( obj_Control_All.screenScale){
 case 1: settings_SprI = 0; break;
 case 2: settings_SprI = 1; break; 
 case 3: settings_SprI = 2; break;  
 case 4: settings_SprI = 3; break;  
} 



/*
// get volume to set correct start index
switch(obj_Control_All.volume_Master){
	
	case 0   : settings_SprI = 0; break;
	
	case 0.05: settings_SprI = 1; break;
	case 0.1 : settings_SprI = 2; break;
	
	case 0.15: settings_SprI = 3; break;
	case 0.20: settings_SprI = 4; break;	

	case 0.25: settings_SprI = 5; break;
	case 0.30: settings_SprI = 6; break;
	
	case 0.35: settings_SprI = 7; break;
	case 0.40: settings_SprI = 8; break;
	
	case 0.45: settings_SprI = 9; break;
	case 0.50: settings_SprI = 10; break;
	
	case 0.55: settings_SprI = 11; break;
	case 0.60: settings_SprI = 12; break;
	
	case 0.65: settings_SprI = 13; break;
	case 0.70: settings_SprI = 14; break;
	
	case 0.75: settings_SprI = 15; break;
	case 0.80: settings_SprI = 16; break;
	
	case 0.85: settings_SprI = 17; break;
	case 0.90: settings_SprI = 18; break;	
	
	case 0.95: settings_SprI = 19; break;
	case 1:    settings_SprI = 20; break;	
	
}