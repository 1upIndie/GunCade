/// @description 

if ( startTransfer == false ){ exit; }

#region office transfer!

  if( TranferWhere == "office"){
  
  
  lerpAmount   += lerpAmountAdd;
  lerpAmount    = clamp(lerpAmount, 0, 1); 
  if(lerpAmount >= 1){ lerpAmount = 1; } // double save!
  
  
  temp_MoneyShown = lerp( save_CurrentMoney, save_TotalMoney, lerpAmount );
  
  // apply!
  obj_Control_All.cashTotalInSave_Office = round(temp_MoneyShown);
	
	  if(lerpAmount >= 1){   instance_destroy(); } 
  }


#endregion

#region dialog transfer!

  if( TranferWhere == "dialog"){
  
  
  lerpAmount   += lerpAmountAdd;
  lerpAmount    = clamp(lerpAmount, 0, 1); 
  if(lerpAmount >= 1){ lerpAmount = 1; } // double save!
  
  
  temp_MoneyShown = lerp( save_CurrentMoney, save_TotalMoney, lerpAmount );

  // apply!
  obj_Control_All.cashSumOnDay = round(temp_MoneyShown);
	
	  if(lerpAmount >= 1){   instance_destroy(); } 
  }


#endregion


