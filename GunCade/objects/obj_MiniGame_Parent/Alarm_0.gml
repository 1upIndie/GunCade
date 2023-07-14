/// @description 

if(isRandomSale == false){ exit; }
var oo = obj_Control_All;
 
 var jump_Sale   = 0;
 var jump_Refuse = 0; 
 var jump_Fail   = 0;  
 

 var get_Array = oo.randomSaleOverride_Day1_1;
 switch( isRandomSale_Array ){
 
 case "day1 1": get_Array = oo.randomSaleOverride_Day1_1; jump_Sale = 230; jump_Refuse = 240; jump_Fail = 250;   break;
 case "day1 2": get_Array = oo.randomSaleOverride_Day1_2; jump_Sale = 360; jump_Refuse = 370; jump_Fail = 380;   break;
 
 case "day2 1": get_Array = oo.randomSaleOverride_Day2_1; jump_Sale = 110; jump_Refuse = 120; jump_Fail = 130;   break;
 case "day2 2": get_Array = oo.randomSaleOverride_Day2_2; jump_Sale = 260; jump_Refuse = 270; jump_Fail = 280;   break; 
 
 case "day3 1": get_Array = oo.randomSaleOverride_Day3_1;  jump_Sale = 800; jump_Refuse = 810; jump_Fail = 820;   break; 
 case "day3 2": get_Array = oo.randomSaleOverride_Day3_2;  jump_Sale = 840; jump_Refuse = 850; jump_Fail = 860;   break; 
 
 case "day5 1": get_Array = oo.randomSaleOverride_Day5_1; jump_Sale = 100; jump_Refuse = 110; jump_Fail = 120;   break; 
 case "day5 2": get_Array = oo.randomSaleOverride_Day5_2; jump_Sale = 800; jump_Refuse = 810; jump_Fail = 820;   break;   
 
 case "day6 1": get_Array = oo.randomSaleOverride_Day6_1; jump_Sale = 340; jump_Refuse = 350; jump_Fail = 360;   break;  

 case "day7 1": get_Array = oo.randomSaleOverride_Day7_1; jump_Sale = 370; jump_Refuse = 380; jump_Fail = 390;   break; 
 case "day7 2": get_Array = oo.randomSaleOverride_Day7_2; jump_Sale = 420; jump_Refuse = 430; jump_Fail = 440;   break; 
 }
 

	  
        // apply jump points
result_Index_Sale      = jump_Sale;
result_Index_Refuse    = jump_Refuse;
result_Index_Messup    = jump_Fail; 
	  
	  
	  // apply perfect
possible_Weapon_Perfect          = get_Array.temp_PerfectWeapon; 
	  
possible_Ammo_Perfect            = get_Array.temp_Perect_Ammo
possible_LaserPointer_Perfect    = get_Array.temp_Perect_LaserPointer;  // attachments not set on default
possible_Muzzle_Perfect          = get_Array.temp_Perect_Muzzle;  
	  
possible_Optics_Perfect          = get_Array.temp_Perect_Optics; 
possible_Grip_Perfect            = get_Array.temp_Perect_Grip; 
possible_Stock_Perfect           = get_Array.temp_Perect_Stock; 	  
	
	
	
	  // apply positive
	  if(get_Array.posStackAmount >=  1){ array_Positive_Weapons[0]   = get_Array.temp_PositiveWeapon[0];   }	  
	  if(get_Array.posStackAmount >=  2){ array_Positive_Weapons[1]   = get_Array.temp_PositiveWeapon[1];   }		  
	  if(get_Array.posStackAmount >=  3){ array_Positive_Weapons[2]   = get_Array.temp_PositiveWeapon[2];   }	
	  if(get_Array.posStackAmount >=  4){ array_Positive_Weapons[3]   = get_Array.temp_PositiveWeapon[3];   }	  
	  if(get_Array.posStackAmount >=  5){ array_Positive_Weapons[4]   = get_Array.temp_PositiveWeapon[4];   }		  
	  if(get_Array.posStackAmount >=  6){ array_Positive_Weapons[5]   = get_Array.temp_PositiveWeapon[5];   }	  
	  if(get_Array.posStackAmount >=  7){ array_Positive_Weapons[6]   = get_Array.temp_PositiveWeapon[6];   }	  
	  if(get_Array.posStackAmount >=  8){ array_Positive_Weapons[7]   = get_Array.temp_PositiveWeapon[7];   }		  
	  if(get_Array.posStackAmount >=  9){ array_Positive_Weapons[8]   = get_Array.temp_PositiveWeapon[8];   }	  
	  if(get_Array.posStackAmount >= 10){ array_Positive_Weapons[9]   = get_Array.temp_PositiveWeapon[9];   }	  
	  if(get_Array.posStackAmount >= 11){ array_Positive_Weapons[10]  = get_Array.temp_PositiveWeapon[10];  }		  
	  if(get_Array.posStackAmount >= 12){ array_Positive_Weapons[11]  = get_Array.temp_PositiveWeapon[11];  }	 	  



	  // apply negative
      negative_Ammo            = get_Array.temp_negative_Ammo;
      negative_LaserPointer    = get_Array.temp_negative_LaserPointer;
      negative_Muzzle          = get_Array.temp_negative_Muzzle; 
	  
      negative_Optics          = get_Array.temp_negative_Optics; 
      negative_Grip            = get_Array.temp_negative_Grip; 
      negative_Stock           = get_Array.temp_negative_Stock;   

      negative_Costs           = get_Array.temp_negative_Costs; 	
