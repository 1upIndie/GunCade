/// @description 
var txt = "nope";
var count = 0;




if instance_exists(obj_Temp_Drag){
count = instance_number(obj_Temp_Drag)
 

txt = "yes " + string(count);
}

draw_text(x,y, txt)