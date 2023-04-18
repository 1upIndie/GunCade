/// @description Insert description here
// You can write your code in this editor


shader_set(Shader_Bloom);

// change the only changeable variable inside the shader
shader_set_uniform_f(handler , value);
draw_surface(application_surface, 0, 0);

shader_reset();


