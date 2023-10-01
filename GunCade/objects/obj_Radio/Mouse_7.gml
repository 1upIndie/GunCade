/// @description input positions

if ( totalBlock == true){  exit; }

var toggle_Left  = false;
var toggle_Right = false;




 if(mouse_x >= rectangleX1[1] and mouse_x <= rectangleX2[1]  ){
   if(mouse_y >= rectangleY1 and mouse_y <= rectangleY2  ){ 

     scr_playNextFromPlayList( "previous" );
 }}

 if(mouse_x >= rectangleX1[3] and mouse_x <= rectangleX2[3]  ){
   if(mouse_y >= rectangleY1 and mouse_y <= rectangleY2  ){ 

     scr_playNextFromPlayList( "next" );
 }}
 
 
 
 
  if(mouse_x >= rectangleX1[2] and mouse_x <= rectangleX2[2]  ){
   if(mouse_y >= rectangleY1 and mouse_y <= rectangleY2  ){ 

     scr_playNextFromPlayList( "pause" );
 }}