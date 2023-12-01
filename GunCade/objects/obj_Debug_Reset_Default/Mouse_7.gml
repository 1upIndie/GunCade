/// @description reset office total money!

var minValue = -1000;
var maxValue =  670;

obj_Control_All.currentCutscene_DAY = 101;

obj_Control_All.cashTotalInSave_Office = 0;


var i = 0;
repeat(array_length( obj_Control_All.array_OfficeProp )) {

	obj_Control_All.array_OfficeProp[i].prop_isUnlocked = false;
	i++;
}

scr_PlaySound( snd_Sfx_Shot,0);

