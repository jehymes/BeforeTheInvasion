/// @description Insert description here
// You can write your code in this editor

var altura_gui = display_get_gui_height();

if(instance_exists(obj_player)){
	var xdist = 40;
	repeat(obj_player.life){
		draw_sprite_ext(spr_player, 0, xdist, altura_gui-40, .3, .3, 0, c_white, 0.5);
		xdist += 40;
	}
}