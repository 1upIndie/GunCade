// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_particle_create( sys_, x_, y_ ){
 
 var systemParticle = part_system_create(  sys_ );
     part_system_position(systemParticle, x_, y_ );
  
  // collect
  obj_Control_All.garbageCollect_Particles[ obj_Control_All.garbageCollect_Particles_Index] = systemParticle;
  obj_Control_All.garbageCollect_Particles_Index++;
  
  
  
}