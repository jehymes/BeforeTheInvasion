/// @description Blur do tiro
// You can write your code in this editor

//Desenhando objeto
draw_self();

//Desenhando brilho
gpu_set_blendmode(bm_add);

draw_sprite_ext(brilho, image_index, x, y, image_xscale * 0.7, image_yscale * .7, image_angle, cores, 0.5);

//Voltando ao normal
gpu_set_blendmode(bm_normal);