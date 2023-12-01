/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben




obj_Control_All.cashTotalInSave_Office = 0;
obj_Control_All.currentCutscene_DAY    = 101;

var i = 0;
repeat(array_length( obj_Control_All.array_OfficeProp )) {

	obj_Control_All.array_OfficeProp[i].prop_isUnlocked = false;
	i++;
}