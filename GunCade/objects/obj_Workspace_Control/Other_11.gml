/// @description override arrays!
var oo = obj_Control_All;

// unlock weapons
scr_SetWeaponUnlocks( oo.currentCutscene_DAY ); // unlock weapons/types!


// nully the arrays to be refilled!
var newArrayL = 0;
array_resize( array_Spr_Idle_Static_1_, newArrayL);   
array_resize( array_Spr_Idle_1_          , newArrayL);
array_resize( array_Spr_Talk_Static_1_    , newArrayL);
array_resize( array_Spr_Talk_1_            , newArrayL);
array_resize( array_Spr_Talk_1_IntroExtro  , newArrayL);


array_resize( array_Spr_Idle_Static_2_     , newArrayL);
array_resize( array_Spr_Idle_2_            , newArrayL);
array_resize( array_Spr_Talk_Static_2_     , newArrayL);
array_resize( array_Spr_Talk_2_            , newArrayL);
array_resize( array_Spr_Talk_2_IntroExtro  , newArrayL);

array_resize( array_Spr_Idle_Static_3_     , newArrayL);
array_resize( array_Spr_Idle_3_            , newArrayL);
array_resize( array_Spr_Talk_Static_3_     , newArrayL);
array_resize( array_Spr_Talk_3_            , newArrayL);
array_resize( array_Spr_Talk_3_IntroExtro  , newArrayL);

array_resize( array_NpcTalking  , newArrayL);

array_resize( array_Name , newArrayL);
array_resize( array_Txt  , newArrayL);

array_resize( array_InstanceLoadIn  , newArrayL);


var repeat_I = 0;
repeat(900){
  array_Spr_Idle_Static_1_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprIdleStatic_1_[repeat_I];
  array_Spr_Idle_1_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprIdle_1_[repeat_I];  

  array_Spr_Talk_Static_1_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprTalkStatic_1_[repeat_I];
  array_Spr_Talk_1_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprTalk_1_[repeat_I];  


  array_Spr_Idle_Static_2_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprIdleStatic_2_[repeat_I];
  array_Spr_Idle_2_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprIdle_2_[repeat_I];  

  array_Spr_Talk_Static_2_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprTalkStatic_2_[repeat_I];
  array_Spr_Talk_2_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprTalk_2_[repeat_I];  


  array_Spr_Idle_Static_3_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprIdleStatic_3_[repeat_I];
  array_Spr_Idle_3_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprIdle_3_[repeat_I];  

  array_Spr_Talk_Static_3_[repeat_I]  = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprTalkStatic_3_[repeat_I];
  array_Spr_Talk_3_[repeat_I]         = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprTalk_3_[repeat_I];  



  array_NpcTalking[repeat_I]          = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_Txt_PersonActive[repeat_I];


  array_Name[repeat_I]                = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_Name[repeat_I];
  array_Txt[repeat_I]                 = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_Txt[repeat_I];
  
  array_InstanceLoadIn[repeat_I]      = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_LoadIn[repeat_I];

  
  // npc intro/extro
  array_Spr_Talk_1_IntroExtro[repeat_I] = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprSwap_1_[repeat_I];
  array_Spr_Talk_2_IntroExtro[repeat_I] = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprSwap_2_[repeat_I];
  array_Spr_Talk_3_IntroExtro[repeat_I] = oo.arrayCutscenes[oo.currentCutscene_DAY].dialogBlock_SprSwap_3_[repeat_I];


repeat_I++;
}

// set background anew if new cast!
if( oo.arrayCutscenes[oo.currentCutscene_DAY].isNews == true){  obj_Workspace_Bgr.sprite_index = spr_WorkStation_BackgroundNews;   }