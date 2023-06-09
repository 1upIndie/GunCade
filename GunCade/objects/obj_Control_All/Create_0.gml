/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
debug = true;

roomToJump = Room_Workspace;
roomToJump = room_Debug;


room_goto(roomToJump);


#region text prefix/suffixes
 textPrefix = "[font_Cutscene][scale, 0.8]";
 textSuffix = "[/scale]"; 
 
 textPrefixPlayer = "[font_Cutscene][scale, 0.8][#F9CE7B]";
 textSuffixPlayer = "[/scale][/c]";  
 
 textPrefix_Tab = "[font_Cutscene][scale, 1]";
 textSuffix_Tab = "[/scale]";


 textCosts_Prefix = "[font_Cutscene][scale, 1.3]";
 textCosts_Suffix = "[/scale]";

/// for weapons detail text box
 textDetail_HeadlinePrefix = "[font_Cutscene][scale, 1.5][c_gray]";
 textDetail_HeadlineSuffix = "[/c][/scale]"; 
 
 textDetail_CostPrefix = "[font_Cutscene][scale, 2][c_orange]";
 textDetail_CostSuffix = "[/c][/scale]"; 

 textDetail_DescPrefix = "[font_Cutscene][scale, 1]";
 textDetail_DescSuffix = "[/scale]";
 
 
 // sorting by name
  textSortNamePrefix = "[font_Cutscene][scale, 2]";
  textSortNameSuffix = "[/scale]"; 

 
 text_Name_Player    = "[font_Cutscene_Name][scale, 0.7][#F9CE7B]Player[/c][/scale]";
 text_Name_Jez       = "[font_Cutscene_Name][scale, 0.7][c_purple]Player[/c][/scale]"; 
 text_Name_Unknown   = "[font_Cutscene_Name][scale, 0.7][c_white]???[/c][/scale]";
 text_Name_Wife      = "[font_Cutscene_Name][scale, 0.7][c_purple]Wife[/c][/scale]"; 
 text_Name_Kyle      = "[font_Cutscene_Name][scale, 0.7][c_white]Wife[/c][/scale]";  
 text_Name_Granny    = "[font_Cutscene_Name][scale, 0.7][c_white]Granny[/c][/scale]";   
 
  text_Name_Shadow   = "[font_Cutscene_Name][scale, 0.7][c_white]Shadow[/c][/scale]";   
  text_Name_Victor   = "[font_Cutscene_Name][scale, 0.7][c_white]Victor[/c][/scale]";   
  
#endregion


#region unlocked

unlocked_WeaponType_Melee       = true;
unlocked_WeaponType_Pistol      = true;
unlocked_WeaponType_Rifle       = true;

unlocked_WeaponType_Smg         = true;
unlocked_WeaponType_Shotgun     = true;

unlocked_WeaponType_ARifle      = true;
unlocked_WeaponType_Exotic      = true;
unlocked_WeaponType_Accessory   = true;


#endregion


#region Cutscenes

currentCutscene_DAY = 0;

function Createcutscene(day_) constructor {
  
 // sprBgr      = bgrSpr_; // default!
  totalBlocks = 0; // added up in each function
 
 
 var indexSet = 0;
 repeat(600){
 	  dialogBlock_SprIdleStatic_1_[indexSet]   = spr_Nothing;	  
	  dialogBlock_SprIdle_1_[indexSet]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_1_[indexSet]   = spr_Nothing;			  
	  dialogBlock_SprTalk_1_[indexSet]         = spr_Nothing;	  
	  dialogBlock_SprIdleStatic_2_[indexSet]   = spr_Nothing;	  
	  dialogBlock_SprIdle_2_[indexSet]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_2_[indexSet]   = spr_Nothing;			  
	  dialogBlock_SprTalk_2_[indexSet]         = spr_Nothing;		  
	  dialogBlock_SprIdleStatic_3_[indexSet]   = spr_Nothing;	  
	  dialogBlock_SprIdle_3_[indexSet]         = spr_Nothing;
	  dialogBlock_SprTalkStatic_3_[indexSet]   = spr_Nothing;			  
	  dialogBlock_SprTalk_3_[indexSet]         = spr_Nothing;		  	  
	  dialogBlock_SprSwap_1_[indexSet]         = "";  // how to introduce the sprite 1	  
	  dialogBlock_SprSwap_2_[indexSet]         = "";  // how to introduce the sprite 2 	  
	  dialogBlock_SprSwap_3_[indexSet]         = "";  // how to introduce the sprite 3 	  	  
	  dialogBlock_Name[indexSet]               = "";	  
	  dialogBlock_Txt[indexSet]                = ""; 	  
	  dialogBlock_Txt_PersonActive[indexSet]   = 1; 	  // who is talking	  
	  dialogBlock_LoadIn[indexSet]	           = noone;	  // used for minigame loading
	  
indexSet++;	  
 }
 
 



	  function setSprite(index_, SlotX,   sprIdleStatic, sprIdle_,    sprTalkStatic_, sprTalk_, sprSwap){
		  
		  if(SlotX == 1){		  
		     dialogBlock_SprIdleStatic_1_[index_]   = sprIdleStatic;
	         dialogBlock_SprIdle_1_[index_]         = sprIdle_;
		     dialogBlock_SprTalkStatic_1_[index_]   = sprTalkStatic_;	
		     dialogBlock_SprTalk_1_[index_]         = sprTalk_;
			 
			 dialogBlock_SprSwap_1_[index_]         = sprSwap;
			 }		
			 
		  if(SlotX == 2){		  
		     dialogBlock_SprIdleStatic_2_[index_]   = sprIdleStatic;
	         dialogBlock_SprIdle_2_[index_]         = sprIdle_;
		     dialogBlock_SprTalkStatic_2_[index_]   = sprTalkStatic_;	
		     dialogBlock_SprTalk_2_[index_]         = sprTalk_;	
			 
			 dialogBlock_SprSwap_2_[index_]         = sprSwap;
			 }					 
			 
		  if(SlotX == 3){		  
		     dialogBlock_SprIdleStatic_3_[index_]   = sprIdleStatic;
	         dialogBlock_SprIdle_3_[index_]         = sprIdle_;
		     dialogBlock_SprTalkStatic_3_[index_]   = sprTalkStatic_;	
		     dialogBlock_SprTalk_3_[index_]         = sprTalk_;	
			 
			 dialogBlock_SprSwap_3_[index_]         = sprSwap;
			 }					 
	  }
 
 
	  function setText(index_,  npcTalking_, name_, txt_ ){ 
		 dialogBlock_Txt_PersonActive[index_]  = npcTalking_;  
         dialogBlock_Name[index_]              = name_;	  
	     dialogBlock_Txt[index_]               = txt_;  	  
	  
		 totalBlocks++;		  
	  }

} // end of constructor


arrayCutscenes = array_create(0);

var day_I = 0; // day 1
 var dialog_I = 0; // zeiger
 
  arrayCutscenes[day_I] = new Createcutscene(day_I );  // first cutscene
  
  
  #region victor -> 0 - 51

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "enter default");	 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hey hey, my boy, how are you doing on this glorious day?" + textSuffix);		 
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , ""); 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Hi Viktor, didn't expect to see you so early." + textSuffixPlayer);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Shadow_Day1_Tutorial;	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "My only tenant who can't pay rent starts a [#5893FF]side business[/c] inside my mall and he doesn't expect to see me first thing!?" + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Ahhh, I can smell the money already." + textSuffix);	
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I wonder if he thinks about anything except money)" + textSuffixPlayer);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Speaking of money..." + textSuffix);	
	 dialog_I++;
   
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Nope)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "I had the brilliant idea to add a casino to the mall. I'm going to be filthy stinking rich!" + textSuffix);	
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Hey, I wonder if I can get some slot machines in here, might bring in some business…)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Now, has my brother come to see you yet?" + textSuffix);	
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "We spoke yesterday, he said he would come by this morning too." + textSuffixPlayer);	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Oh good, I'd like to see my little bro." + textSuffix);	
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "He doesn't call, he doesn't write, he just travels the country getting into mischief. " + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Maybe you should call him sometime?" + textSuffixPlayer);	
	 dialog_I++;	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Ha, this is why I like you, you're so funny." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "You know, that reminds me of a joke..." + textSuffix);	
	 dialog_I++;	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I wasn't joking... I never understand this guy.)" + textSuffixPlayer);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(But I can't say anything after he's let me get so far behind in rent and not kicked me out.)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(At least he knows there's nothing I can do.)" + textSuffixPlayer);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Since they shipped everyone out of the city under the age of 20 after the rebellion, nobody comes to an arcade anymore.)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I'm surprised they haven't built a wall yet to keep tourists out, not that any would ever come here.)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "So the pirate says: ARGH, it's driving me nuts!" + textSuffix);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "HAHAHAHAHAHAHA." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "hehehe (same joke, different day.)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Lad, I gotta tell ya, I think this little side business is gonna be a boon for both of us." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "So don't worry about the legal and moral gray area." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_Idle, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_Idle,   spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "As long as I can keep my arcade and nobody gets hurt." + textSuffixPlayer);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Look, my brother doesn't exactly sell the highest quality weapons. I doubt anyone could hurt themselves, much less someone else." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Wait, I'm selling low quality goods?" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Absolutely my boy!" + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Why would anyone want to sell quality? It's bad for business." + textSuffix);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Besides, if you're the only affordable option for weapons in this entire city, of course your supply is shit." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Now I gotta worry people will get mad at me)." + textSuffixPlayer);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Look at it this way." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "You sell a little pistol to someone. They go to use it and the whole thing falls apart..." + textSuffix);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Nobody gets hurt AND they gotta come back to you to buy another one." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "That's a lucrative business model if you ask me. I can see the mountains of money pouring in already." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Sounds great, until someone comes in and punches me in the face over it.)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You know what Vik." + textSuffixPlayer);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "As long as I get to keep the arcade running, maybe it'll survive long enough to see the rebellion end and the city return to normal." + textSuffixPlayer);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Oh lad, you don't just have high hopes, you have wild dreams, but I like that about you." + textSuffix);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Now remember our deal, I may be generous, but you are way late on rent so you owe me interest." + textSuffix);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "If you can't pay $20,000 in the next 14 days, I have to kick you out." + textSuffix);	
	 dialog_I++;
	 


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I know the deal Vik." + textSuffixPlayer);	
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Don't look so sad, I'll probably open a second strip club in your place." + textSuffix);	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "You wouldn't believe how much money the American Spread Eagle makes." + textSuffix);	
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Actually I would. Almost every person I see walk in this place goes there. I wouldn't be caught dead in that place.)" + textSuffixPlayer);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Vik, you know my wife hasn't let me hear the end of it since that place opened. She thinks I'm there all day, now she drops in to check on me randomly." + textSuffixPlayer);	
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Hahaha, that sounds like a 'you' problem." + textSuffix);	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "Tell you what, if you want to stop by some time, I moved my office into the club. Come see me and I'll have one of the girls show you a thing or two." + textSuffix);	
	 dialog_I++;	 
	 
	 
	 
	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I've seen those girls, I'd rather not.)" + textSuffixPlayer);	
	 dialog_I++; 
	 
	 
  #endregion	 
	 /// shadow enters index 51
	 
	 
#region shadow 52 -

#endregion
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "enter shadow");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "MY BROTHER! HAHAHAHA!" + textSuffix);	
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Unknown, textPrefix + "Hello... " + textSuffix);	
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Brother" + textSuffix);	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "V, mind if I take care of business here and then I'll stop by your office?" + textSuffix);	
	 dialog_I++;	 



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "You haven't changed a bit." + textSuffix);	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Victor, textPrefix + "..." + textSuffix);	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Victor, textPrefix + "..." + textSuffix);	
	 dialog_I++;
	 

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_Idle, spr_Dialog_Shadow_Idle  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Victor, textPrefix + "I guess I'll let you two get things ready, I've got glitter covered money to count anyways." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Victor_IdleStatic, spr_Dialog_Victor_Idle,  spr_Dialog_Victor_TalkStatic,   spr_Dialog_Victor_Talk  , "exit default");
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Did you do everything just like I told you?" + textSuffix);	
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes of course, I even ate the list after so nobody could find it." + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "What the hell! I didn't say to do that..." + textSuffix);	
	 dialog_I++;	


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(It was a joke, guess arms dealers don't have a sense of humor)" + textSuffixPlayer);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(On the flipside, is it a good idea to be super friendly with a shadow figure that supplies guns?)" + textSuffixPlayer);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Maybe I should be more serious...) " + textSuffixPlayer);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(It was a joke, guess arms dealers don't have a sense of humor)" + textSuffixPlayer);	
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Well, probably for the best you did." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Selling weapons is a real gray area here with all the local government disbanding and the police force making up rules as they go..." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "So you need to be diligent about what you sell and to whom." + textSuffix);	
	 dialog_I++;
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Right, gotta use my head." + textSuffixPlayer);	
	 dialog_I++;
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Exactly, and I don't plan on hooking you up with an entire arsenal until you prove yourself. Gotta start small and show you know what you're doing first." + textSuffix);	
	 dialog_I++;	 
	 
	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Understood." + textSuffixPlayer);	
	 dialog_I++;	 
	 


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "I usually don't do this, but I think it's a good idea for me to make sure you know exactly what you're doing, so let's have a little practice." + textSuffix);	
	 dialog_I++;	 
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh cool, so this is like my tutorial level." + textSuffixPlayer);	
	 dialog_I++;	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "What? Are you even taking this seriously?" + textSuffix);	
	 dialog_I++;	 	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes, sorry, of course." + textSuffixPlayer);	
	 dialog_I++;		 
	 
	 
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Know what, never mind, you be you, it'll be the greatest front for under the table weapon sales I’ve ever seen." + textSuffix);	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Way better than the guy I had that pretended to be a clown." + textSuffix);	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(And he says I'm weird? Wait, did he say clown...)" + textSuffixPlayer);	
	 dialog_I++;		 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "First lesson, don't trust anyone. I don't care if it's a sweet old lady, anyone could be a cop or someone looking to rob you as soon as they have the goods." + textSuffix);	
	 dialog_I++;	 
	 	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Selling weapons to the wrong person can get you in real trouble, really fast. You can refuse to sell to anyone for any reason." + textSuffix);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "The most important thing about it is..." + textSuffix);	
	 dialog_I++;	 
	 	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "The most important thing about it is..." + textSuffix);	
	 dialog_I++;		 
	 
	 
	 // kyle interrupts
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hey boss man, I saw Viktor coming and wanted to let you know he was on his way down here." + textSuffix);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,  text_Name_Player, textPrefixPlayer + "Yeah, he was already here, bud. Viktor is a lovely fella..." + textSuffixPlayer);	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,  text_Name_Player, textPrefixPlayer + "Hey, Kyle, I have some business to tend to, do you mind making sure everything is turned on for me?" + textSuffixPlayer);	
	 dialog_I++;	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle  , "");	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Kyle, textPrefix + "Oh yea, sorry about that. I'll chat with you later bossman." + textSuffix);	
	 dialog_I++;	 
	 
		 
 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I wasn't really listening. I should be. If I want to boost my income. I have to take this a bit more serious)" + textSuffixPlayer);	
	 dialog_I++;	
	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Sorry for that, continue." + textSuffixPlayer);	
	 dialog_I++;	
	

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "So many weirdos in this town..." + textSuffix);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Anyways, where was I? Oh yeah Second lesson..." + textSuffix);	
	 dialog_I++;


	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I don't think we finished lesson one. Oh well, I wasn't really listening.)" + textSuffixPlayer);	
	 dialog_I++;	
	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Selling is a fine art. Everyone knows what they want, but they rarely know what they need. Some need less than what they want, some need more." + textSuffix);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Most people will accept what you are willing to give them if they can afford it and it fits their needs." + textSuffix);	
	 dialog_I++;	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Pay close attention to what someone asks for. The better you provide them with what they want, the more likely they'll be a return customer." + textSuffix);	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Lesson C..." + textSuffix);	
	 dialog_I++;		 

 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(wasn't he using numbers before?)" + textSuffixPlayer);	
	 dialog_I++;	
	 
	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Failure is always an option. Everyone has their upper and lower limits on what they're willing to accept." + textSuffix);	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Make a bad offer and they'll bail on you, nobody in this town has the patience to haggle with someone they think is trying to rip them off. " + textSuffix);	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Final lesson, try to sell me something." + textSuffix);	
	 dialog_I++;
	 
	 
     // tutorial begin
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Let's say I appear to be a garden variety thug and I say I want a light, powerful weapon that lets me keep a little distance, and I have 2000 to spend." + textSuffix);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Shadow_Day1_Tutorial;
	 dialog_I++;
     
	 
	 // sale
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Good job, you didn’t screw up! You’re a natural." + textSuffix);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;	 
	 dialog_I++;		 
	 
	 // refuse
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Well, I don't know why you did that, but that’s fine, it doesn’t hurt to practice saying no." + textSuffix);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;
	 dialog_I++;		 

	 // fail
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "You didn't listen at all. Hopefully you get the hang of this because I need to make a profit too." + textSuffix);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_150;
	 dialog_I++;	
	 
	 
	 
	 // replys, start at 150 , after sale/refuse/fail
	 dialog_I = 150;
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Got it. I’ll do my best " + textSuffixPlayer);	
	 dialog_I++;		 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Oh and remember, these are all on consignment so I'll collect my portion later." + textSuffix);	
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Don't spend what you owe me before I come back. You do NOT want to be in debt to ME." + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I really should not make this one angry.)" + textSuffixPlayer);	
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Shadow_IdleStatic, spr_Dialog_Shadow_Idle,  spr_Dialog_Shadow_TalkStatic,   spr_Dialog_Shadow_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Shadow, textPrefix + "Ok then and good luck." + textSuffix);	
	 dialog_I++;





     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Oh, here comes someone already.)" + textSuffixPlayer);	
	 dialog_I++;	


	 
	 
     // granny enters
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "Hello young man, I was reading the paper and noticed the article advertising your shop." + textSuffix);	
	 dialog_I++;	 
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "It stated that you got some.. “special offers”. Oh young man, I do love some “specials”!" + textSuffix);	
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes ma'am, I am here to serve your special needs. How may I be of service?" + textSuffixPlayer);	
	 dialog_I++;	

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "Oh aren't you just a dear sweet young man." + textSuffix);	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "I am in need of something for protection. My neighborhood has grown really dangerous." + textSuffix);	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I understand, this whole city is nothing but danger." + textSuffixPlayer);	
	 dialog_I++;	
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "That it has. Now, I don’t want to hurt anyone, I just want to make a show of force if I have to so that nobody wants to hurt an old granny." + textSuffix);	
	 dialog_I++;

	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + " I think I could go for a small pistol, something that fits in my purse and is very light." + textSuffix);	
	 dialog_I++;
	 
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "That way it can’t really hurt anyone and I can feel safer, and I only have 1000 to spend, it's half my life savings..." + textSuffix);	 
	 dialog_I++;

     // begin granny sale
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(A small pistol for a granny, she probably needs the lightest one I have in stock)" + textSuffixPlayer);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Granny_Day1;	
	 dialog_I++;	 


	 // jump to 200
	 dialog_I = 200;
	 
	 // sale! 200
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "Thank you sweet dear, I feel like I could rob a... I mean protect myself from a robber. See you later!" + textSuffix);	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_210;		 
	 dialog_I++;

	 // Refuse! 201
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "I see, well, I best be off then." + textSuffix);	 
	 dialog_I++;
	  
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I suppose so, now if you please, I have other customers to tend to..." + textSuffixPlayer);	
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_210;	 
	 dialog_I++;


	 // Fail! 204
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");		 
     arrayCutscenes[day_I].setText(dialog_I,  2, text_Name_Granny, textPrefix + "And I thought my hearing was bad. You know what, I think I'll go see that clown that runs around town selling cheap goods, maybe he'll help a granny out." + textSuffix);	 
	 dialog_I++;	 
	  
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Granny_IdleStatic, spr_Dialog_Granny_Idle,  spr_Dialog_Granny_TalkStatic,   spr_Dialog_Granny_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Did she say a clown? Surely she was just calling someone a name and it's not a real clown, but in this city, nothing would surprise me." + textSuffixPlayer); 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_Dialog_SkipIndex_to_210;	 
	 dialog_I++;

	 
	 // random sale after granny	 
	 dialog_I = 210;
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Did she say a clown? Surely she was just calling someone a name and it's not a real clown, but in this city, nothing would surprise me." + textSuffixPlayer);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale_Day1;	 
	 dialog_I++;    	 
	 

    // enter jez 250
	 dialog_I = 250;	
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Hey there sugar. Been a while since I got to see your sweet face." + textSuffix);  
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh good, maybe it will be a good day after all.)" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Uhm, eh... I. What can I do for you Jez?" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Well you know I love to come in here just to see you and all, but it seems you may have something more that I need today." + textSuffix);  
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(If she's a tease AND a customer, let's hope my wife does not see her here)" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She always flips out over nothing.)" + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "You know what I want. Something long, hard, and ready for me to put my lips on it and blow." + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I..." + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Am I dreaming right now?)" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Are my hands sweating?)" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(The last time that happened I was a teenager.)" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(She knows how to get me all worked up.)" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Keep it cool, you can do this. Show her you aren't phased by it.)" + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Yes.... I mean no, I mean yes." + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "..." + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ok, knock it off buddy, you're married and if she finds out, you're dead.)" + textSuffixPlayer);	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Oh dear, did I get you all worked up? I'm sorry sugar." + textSuffix);  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "No, no, no, it's not that. I think I know exactly what you need..." + textSuffixPlayer);	 
	 dialog_I++;

     
	 // jez sale
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Long, hard, and easy to blow... wait, she was referring to a weapon, right?)" + textSuffixPlayer);	 
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_Jez_Day1;		 
	 dialog_I++;


     // sale! 301
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Oh sugar, you sure know how to please a woman." + textSuffix);  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I hope she can't see me blushing.)" + textSuffixPlayer);	 
	 dialog_I++;
    
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "I can't wait to see what else you can do for me. See you round sugar." + textSuffix);  
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Pie... Ugh, I mean bye..." + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Seriously, PIE, I'm such an idiot.)" + textSuffixPlayer);	 
	 dialog_I++;



     // refuse! 306
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "I can't believe you would turn me down. Now I don't know if I can ever show my face here again." + textSuffix);  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "I'm sorry, but I can't." + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "..." + textSuffix);  
	 dialog_I++


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(wow, she looked pissed.)" + textSuffixPlayer);	 
	 dialog_I++;



     // refuse! 310
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "And just why would I want to put my mouth on that?" + textSuffix);  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Dammit, she got me so worked up I totally screwed this sale.)" + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "You know, maybe I can forgive you this once, but I'll have to think about it." + textSuffix);  
	 dialog_I++

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "Please do, I'm so sorry about that. Are you sure you don't want me to see what else I can do for you?" + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "Now you're starting to sound desperate. Not a good look. " + textSuffix);  
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Jez_IdleStatic, spr_Dialog_Jez_Idle,  spr_Dialog_Jez_TalkStatic,   spr_Dialog_Jez_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Jez, textPrefix + "We'll see if I want to forgive you and I'll give you another shot in a few days. Maybe by then you'll be cooled off." + textSuffix);  
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(DAAAAMMMMMIIIIIITTTTTT.......)" + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Ok, calm down, gotta be ready for the next sale. Oh man, what if my wife finds out she was in here?)" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "( It doesn't matter that nothing happened. Ugh, I can't even refuse a woman without getting in trouble.)" + textSuffixPlayer);	 
	 dialog_I++;

 
     // random sale 2
     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Oh good, another customer)" + textSuffixPlayer);
	 arrayCutscenes[day_I].dialogBlock_LoadIn[dialog_I] = obj_MiniGame_RandomSale2_Day1;		 
	 dialog_I++;

     
     // wife enters 350
     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1, text_Name_Unknown, textPrefix + "Ugh, this place is a real dump today." + textSuffix);	 
	 dialog_I++;	 

     arrayCutscenes[day_I].setSprite(dialog_I,2, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(Please no, not her, not today...)" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Hello, dear..." + textSuffix);	 
	 dialog_I++;	

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "What's this I hear about your little side business?" + textSuffix);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "Hunny, please it's nothing." + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "NOTHING!!! What do you mean, nothing? You're trying to make extra money and keep it from me, I know you are." + textSuffix);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(Of course I am, what is this really about?)" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "That's not it and I didn't want to tell you this because I knew you'd be mad, but I'm about to lose the arcade." + textSuffixPlayer);	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Oh what a surprise! Nobody ever comes to this dump to spend money except your own dummy employee." + textSuffix);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "So why are you mad I'm trying to make money then?" + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Because, what's yours is mine and I don't want you thinking you're going to make enough to leave here without me." + textSuffix);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "Who said anything about leaving?" + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "I've seen that JEZEBELLE that comes in here and flirts with you. Don't think I don't know what's going on." + textSuffix);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(Ahh, so this is really what is going on. She's jealous over nothing again.)" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(Wait, how does she know her name?)" + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Wipe that stupid grin off your face, it just proves I'm right." + textSuffix);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "So what is it you want me to do then?" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(I know where this is going. She's going to tell me all the things I do wrong again.)" + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(Just gotta pretend to listen until she runs out of steam. Just hope a customer doesn't come in anytime soon.)" + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "blah blah blah I want. Blah blah your fault blah blah. I want you to blah blah blah more money." + textSuffix);	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "blah blah you better blah blah. Blah my psychic told me you blah blah nothing good." + textSuffix);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "blah blah blah I want blah. Blah blah situation also blah blah blah give me." + textSuffix);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "Buy me flowers or blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.." + textSuffix);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "(What was that last part?)" + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Wife_IdleStatic, spr_Dialog_Wife_Idle,  spr_Dialog_Wife_TalkStatic,   spr_Dialog_Wife_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Wife, textPrefix + "You better get your priorities straight or you'll regret it. DAMMIT, now I'm going to be late for my hair appointment. Thanks for taking up so much of my time." + textSuffix);	 
	 dialog_I++;



     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3, text_Name_Player, textPrefixPlayer + "(I think that's got to be enough for one day." + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + "Kyle, where are you?" + textSuffixPlayer);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Kyle, textPrefix + "Right here boss man!" + textSuffix);	 
	 dialog_I++;


     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Nothing, spr_Nothing,  spr_Nothing,   spr_Nothing  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  3,text_Name_Player, textPrefixPlayer + " Kyle, run the store. I'm gonna take a look at the books for today. I'll be in my office if you need me." + textSuffixPlayer);	 
	 dialog_I++;

     arrayCutscenes[day_I].setSprite(dialog_I,1, spr_Dialog_Kyle_IdleStatic, spr_Dialog_Kyle_Idle,  spr_Dialog_Kyle_TalkStatic,   spr_Dialog_Kyle_Talk  , "");	
     arrayCutscenes[day_I].setText(dialog_I,  1,text_Name_Kyle, textPrefix + "Right on boss man. I got this." + textSuffix);	 



#endregion









#region weapon texts + costs

static_Money_Tip = 50; // for perfect sale

function weaponCreate()constructor {
 
  weaponIndex       = 0;
  nameWeapon        = "";
  weaponSpr         = spr_Nothing;
  
  headLineText      = "";
  descriptionText1  = "";  
  descriptionText2  = ""; 

  costText          = "";
  cost              = 1;
  
  // fill in post hoc
  function fill_In(name___, spr___, index___){
  weaponIndex       = index___;
  nameWeapon        = name___;
  weaponSpr         = spr___; 
  }  
  
}

array_DetailWeaponText = array_create(0);


//fill up with empty ones
var fill_I = 0;
repeat(100){
array_DetailWeaponText[fill_I] = new weaponCreate();
fill_I++;
}


      // melee 0-10 pistols 10-20, rifles 20-30,  smg 30-40, shotgun 40-50, ar, 50-60, exotic 60-70, attachment 70-80	
var txtDetail_I = 0;
      array_DetailWeaponText[txtDetail_I].fill_In("melee 1", spr_MiniGame_Melee_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "melee 1"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("melee 2", spr_MiniGame_Melee_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "melee 1"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("melee 3", spr_MiniGame_Melee_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "melee 3"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  	  




txtDetail_I = 10;
      array_DetailWeaponText[txtDetail_I].fill_In("pistol 1", spr_MiniGame_Pistol_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Small pistol"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("pistol 2", spr_MiniGame_Pistol_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Big pistol"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 2000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("pistol 3", spr_MiniGame_Pistol_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Other pistol"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 3000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  



txtDetail_I = 20;
      array_DetailWeaponText[txtDetail_I].fill_In("rifle 1", spr_MiniGame_Rifle_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Bolt action"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("rifle 2", spr_MiniGame_Rifle_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Sniper rifle"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("rifle 3", spr_MiniGame_Pistol_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Winchester"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  




txtDetail_I = 30;
      array_DetailWeaponText[txtDetail_I].fill_In("smg 1", spr_MiniGame_Smg_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Woozie"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("smg 2", spr_MiniGame_Smg_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Smg 2"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("smg 3", spr_MiniGame_Smg_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Tummy gun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  


txtDetail_I = 40;
      array_DetailWeaponText[txtDetail_I].fill_In("shotgun 1", spr_MiniGame_Shotgun_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Sawed off"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("shotgun 2", spr_MiniGame_Shotgun_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Tactical shotgun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;  
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("shotgun 3", spr_MiniGame_Shotgun_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "tripple shotgun"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++; 



txtDetail_I = 50;
      array_DetailWeaponText[txtDetail_I].fill_In("ar 1", spr_MiniGame_Ar_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "M 16"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("ar 2", spr_MiniGame_Ar_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "French ar"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("ar 3", spr_MiniGame_Ar_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Ak 47"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;



txtDetail_I = 60;  // exotics
      array_DetailWeaponText[txtDetail_I].fill_In("exotic 1", spr_MiniGame_Ar_1, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "M 16"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;

      array_DetailWeaponText[txtDetail_I].fill_In("exotic 2", spr_MiniGame_Ar_2, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "French ar"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;
	  
      array_DetailWeaponText[txtDetail_I].fill_In("exotic 3", spr_MiniGame_Ar_3, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Ak 47"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;


txtDetail_I = 70;
      array_DetailWeaponText[txtDetail_I].fill_In("attachment laser", spr_MiniGame_Attachment_LaserPointer, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Laser pointer"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;	  


      array_DetailWeaponText[txtDetail_I].fill_In("attachment muzzle", spr_MiniGame_Attachment_Muzzle, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Muzzle"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;	  

	  
      array_DetailWeaponText[txtDetail_I].fill_In("attachment optics", spr_MiniGame_Attachment_Optics, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Optics"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;	  


      array_DetailWeaponText[txtDetail_I].fill_In("attachment scope", spr_MiniGame_Attachment_Scope, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Scope"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;	  


      array_DetailWeaponText[txtDetail_I].fill_In("attachment stock", spr_MiniGame_Attachment_Stock, txtDetail_I);
	  array_DetailWeaponText[txtDetail_I].headLineText     = textDetail_HeadlinePrefix + "Stock"  + textDetail_HeadlineSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText1 = textDetail_DescPrefix     + "Very small pistol for use" + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].descriptionText2 = textDetail_DescPrefix     + "second optional text"      + textDetail_DescSuffix;
	  array_DetailWeaponText[txtDetail_I].cost             = 1000;	  	  
	  array_DetailWeaponText[txtDetail_I].costText         = textDetail_CostPrefix     + string(array_DetailWeaponText[txtDetail_I].cost) + "$"  + textDetail_CostSuffix;
	  txtDetail_I++;  

	  
	  
	  
	  
#endregion


#region particle collection!

garbageCollect_Particles_Index = 0;
garbageCollect_Particles       = array_create(0);

#endregion