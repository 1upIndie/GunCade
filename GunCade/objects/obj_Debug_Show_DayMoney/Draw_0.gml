/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


draw_self()

var txt1 = "DAY: "   + string( obj_Control_All.currentCutscene_DAY + 1);

var txt2 = "Money: " + string(obj_Control_All.cashTotalInSave_Office);

draw_text(x+15,y+15, txt1 );
draw_text(x+15,y+40, txt2 );
var txtDebug = "Debug: " + string(obj_Control_All.debug);
draw_text(x+15,y+60, txtDebug  );

