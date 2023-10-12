/// @description 
startTransfer = false;

totalTime = 4 *60;

lerpAmount    = 0; // add up
lerpAmountMax = 0.3;
lerpAmountAdd = 0.003;
 lerpAmountAdd = 0.01;

// save for quick override!
save_CurrentMoney = 0;  // what is the current pool of money
save_ToAddMoney   = 0;  // what is the sum to be added/substracted
save_TotalMoney   = 0; // what is the outcome!


temp_MoneyShown = 0; // start value


temp_MoneyShown = lerp(save_CurrentMoney, save_TotalMoney, lerpAmount );

alarm[0] = 60; // short delay!
TranferWhere = "office";

coinLoopTimer = 30;
alarm[1] = coinLoopTimer + 80;


// coin sounds!
getSfxPitchMin_Thump  =  obj_Control_All.sfxCoinsMin_Thump;
getSfxPitchMax_Thump  =  obj_Control_All.sfxCoinsMax_Thump;