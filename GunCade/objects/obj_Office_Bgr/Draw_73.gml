/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


    var prefixCash_ =  obj_Control_All.textDetail_CostPrefix;
    var suffixCash_ =  obj_Control_All.textDetail_CostSuffix; 

    var cashTxt = prefixCash_ + string( obj_Control_All.cashTotalInSave_Office) + "$" + suffixCash_; 

var moneyX = obj_Control_All.moneyTxtX;
var moneyY = obj_Control_All.moneyTxtY;


    scribble(cashTxt).draw( camX + moneyX, camY+moneyY );
	
	
