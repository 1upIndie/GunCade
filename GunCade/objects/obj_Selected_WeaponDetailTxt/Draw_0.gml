/// @description 


if ( canDraw == true ){
var sprXX   = obj_MiniGame_Parent.detailSpr_X;
var sprYY   = obj_MiniGame_Parent.detailSpr_Y;
var sprSize = obj_MiniGame_Parent.detailSpr_Size;

if(indexActive != -999){

var detailSpr = obj_Control_All.array_DetailWeaponText[indexActive].detail_Spr; 
// draw weapon


draw_sprite_ext(detailSpr, 0, sprXX,sprYY, sprSize, sprSize,0, c_white, 1 );

/*
var headlineX   = obj_MiniGame_Parent.detailTxt_Headline_x;
var headlineY   = obj_MiniGame_Parent.detailTxt_Headline_y;
var costX       = obj_MiniGame_Parent.detailTxt_Cost_x;
var costY       = obj_MiniGame_Parent.detailTxt_Cost_y;
var headLineTxt = obj_Control_All.array_DetailWeaponText[indexActive].headLineText;
var costTxt     = obj_Control_All.array_DetailWeaponText[indexActive].costText;

// Name of weapon/attachment
  scribble(headLineTxt).draw(headlineX, headlineY);
  
// stat blocks  
var block_Power     = obj_Control_All.array_DetailWeaponText[indexActive].stat_Power;
var block_Accuracy  = obj_Control_All.array_DetailWeaponText[indexActive].stat_Accuracy;
var block_Rate      = obj_Control_All.array_DetailWeaponText[indexActive].stat_FireRate;
var block_Range     = obj_Control_All.array_DetailWeaponText[indexActive].stat_Range;
var block_Weight    = obj_Control_All.array_DetailWeaponText[indexActive].stat_Weight;

var blockSize1      = obj_MiniGame_Parent.detail_Stats_Size[0];
var blockSize2      = obj_MiniGame_Parent.detail_Stats_Size[1];
var blockXDiff      = 40;



#region Damage


	 draw_sprite_ext(spr_Ui_Stats_Damage, 0, obj_MiniGame_Parent.detail_Stats_X[0], obj_MiniGame_Parent.detail_Stats_Y[0], blockSize1,blockSize1, 0, c_white, 1 );
 
	 var iterate_Power = 0;
	repeat(block_Power){
	   draw_sprite_ext(spr_Ui_Stats_Point,0,  obj_MiniGame_Parent.detail_Stats_X[1]+ (iterate_Power*blockXDiff),  obj_MiniGame_Parent.detail_Stats_Y[0], blockSize2,blockSize2, 0, c_white, 1 );
	   iterate_Power++;
}

#endregion

#region Accuracy


	 draw_sprite_ext(spr_Ui_Stats_Accuracy, 0, obj_MiniGame_Parent.detail_Stats_X[0], obj_MiniGame_Parent.detail_Stats_Y[1], blockSize1,blockSize1, 0, c_white, 1 );
 
	 var iterate_Accuracy = 0;
	repeat(block_Accuracy){
	   draw_sprite_ext(spr_Ui_Stats_Point,0,  obj_MiniGame_Parent.detail_Stats_X[1]+ (iterate_Accuracy*blockXDiff),  obj_MiniGame_Parent.detail_Stats_Y[1], blockSize2,blockSize2, 0, c_white, 1 );
	   iterate_Accuracy++;
}

#endregion

#region Fire rate


	 draw_sprite_ext(spr_Ui_Stats_Accuracy, 0, obj_MiniGame_Parent.detail_Stats_X[0], obj_MiniGame_Parent.detail_Stats_Y[2], blockSize1,blockSize1, 0, c_white, 1 );
 
	 var iterate_FireRate = 0;
	repeat(block_Rate){
	   draw_sprite_ext(spr_Ui_Stats_Point,0,  obj_MiniGame_Parent.detail_Stats_X[1]+ (iterate_FireRate*blockXDiff),  obj_MiniGame_Parent.detail_Stats_Y[2], blockSize2, blockSize2, 0, c_white, 1 );
	   iterate_FireRate++;
}

#endregion

#region Weight


	 draw_sprite_ext(spr_Ui_Stats_Weight, 0, obj_MiniGame_Parent.detail_Stats_X[0], obj_MiniGame_Parent.detail_Stats_Y[3], blockSize1,blockSize1, 0, c_white, 1 );
 
	 var iterate_Weight = 0;
	repeat(block_Weight){
	   draw_sprite_ext(spr_Ui_Stats_Point,0,  obj_MiniGame_Parent.detail_Stats_X[1]+ (iterate_Weight*blockXDiff),  obj_MiniGame_Parent.detail_Stats_Y[3], blockSize2,blockSize2, 0, c_white, 1 );
	   iterate_Weight++;
}

#endregion




// costs txt
  scribble(costTxt).draw(costX, costY);
  //scribble(costText).draw(headlineX, headlineY+30);

// 



var descriptText_X  = obj_MiniGame_Parent.detailTxt_Description_x;
var descriptText_Y1 = obj_MiniGame_Parent.detailTxt_Description_y[0];
var descriptText_Y2 = obj_MiniGame_Parent.detailTxt_Description_y[1];
  scribble(descriptionText1).draw(descriptText_X, descriptText_Y1);
  scribble(descriptionText2).draw(descriptText_X, descriptText_Y2);
  
*/
  } // not -999

}