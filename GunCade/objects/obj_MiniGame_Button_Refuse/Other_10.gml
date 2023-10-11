

// check if result is sufficient!


  // check what it is !

var jumpPoint = obj_MiniGame_Parent.result_Index_Refuse;


   scr_CleanUp_Minigameover("refuse");
   scr_Unblock_CashIn( jumpPoint, 0, 0, "refuse", false  );


scr_PlaySound( snd_MenueSfx_Start, 0);
scr_ShakeIt( obj_Control_All.screenShakeTime_PressButton, obj_Control_All.screenShakeAmount_PressButton );

// after clean up -> destroy self
 instance_destroy();
// inactive
