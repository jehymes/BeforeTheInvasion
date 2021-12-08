/// @description Insert description here
// You can write your code in this editor

//Me desenhando
draw_self();

//Fazendo efeito
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + .2, image_yscale + .2, image_angle, cor,image_alpha -  0.3);
gpu_set_blendmode(bm_normal);