

function scr_SetRandomMiniGameIndex( array_){
  
  var returnValue = 0;
  
  returnValue = irandom_range( 0, array_length(array_)-1 );

  
  return returnValue;
}