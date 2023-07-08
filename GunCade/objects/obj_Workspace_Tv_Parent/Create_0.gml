image_alpha = 0.5;

programm_image = spr_Tv_Programm;
rahmen_image   = spr_Tv_Rhamen;
alarm[0] = 2;

canSwitchProgramm = true;
coolDownTime = 8; // 


isMain = false;
 // side monitors show at start always security cam with random index!
 showSecurityCamAtStart = false;


canDraw = false;
// programms to load in

tvRahmen = "normal";


programmID = noone; // store in id to delete and load in new one!

currentProgrammIndex = 0;

// store available programms
getDay = obj_Control_All.currentCutscene;

// store all programms available, so to toggle through them

programmArray = array_create(0);

getArray = obj_Control_All.array_programmDay_1;
getArrayLength = 0;

switch(getDay){
   case 1:  getArray = obj_Control_All.array_programmDay_1;  break;
   case 2:  getArray =  obj_Control_All.array_programmDay_2;  break;
   case 3:  getArray =  obj_Control_All.array_programmDay_3;  break;
   case 4:  getArray =  obj_Control_All.array_programmDay_4;  break;   
   case 5:  getArray =  obj_Control_All.array_programmDay_5;  break;
   case 6:  getArray =  obj_Control_All.array_programmDay_6;  break;   
   case 7:  getArray =  obj_Control_All.array_programmDay_7;  break;
   case 8:  getArray =  obj_Control_All.array_programmDay_8;  break;
   case 9:  getArray =  obj_Control_All.array_programmDay_9;  break;
   case 10: getArray =  obj_Control_All.array_programmDay_10; break;
   case 11: getArray =  obj_Control_All.array_programmDay_11; break;
   case 12: getArray =  obj_Control_All.array_programmDay_12; break;     
}


// copy over
    getArrayLength = array_length(getArray);
    array_copy(programmArray, 0, getArray, 0, getArrayLength);
	
	


