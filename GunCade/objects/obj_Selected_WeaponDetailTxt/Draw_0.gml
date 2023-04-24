/// @description 


if ( canDraw == true ){
var sprXX   = obj_MiniGame_Parent.detailSpr_X;
var sprYY   = obj_MiniGame_Parent.detailSpr_Y;
var sprSize = obj_MiniGame_Parent.detailSpr_Size;

draw_sprite_ext(weaponSpr,0, sprXX,sprYY, sprSize,sprSize,0, c_white, 1 );

var headlineX = obj_MiniGame_Parent.detailTxt_Headline_x;
var headlineY = obj_MiniGame_Parent.detailTxt_Headline_y;
var costX     = obj_MiniGame_Parent.detailTxt_Cost_x;
var costY     = obj_MiniGame_Parent.detailTxt_Cost_y;

  scribble(headLineText).draw(headlineX, headlineY);
  scribble(costText).draw(costX, costY);
  //scribble(costText).draw(headlineX, headlineY+30);




var descriptText_X  = obj_MiniGame_Parent.detailTxt_Description_x;
var descriptText_Y1 = obj_MiniGame_Parent.detailTxt_Description_y[0];
var descriptText_Y2 = obj_MiniGame_Parent.detailTxt_Description_y[1];
  scribble(descriptionText1).draw(descriptText_X, descriptText_Y1);
  scribble(descriptionText2).draw(descriptText_X, descriptText_Y2);
  



}