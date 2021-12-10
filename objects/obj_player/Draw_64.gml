/// @description Insert description here
// You can write your code in this editor

var altura_gui = display_get_gui_height();

//Desenhando o life do player
if(instance_exists(obj_player)){
	var xdist = 40;
	repeat(life){
		draw_sprite_ext(spr_player, 0, xdist, altura_gui-40, .3, .3, 0, c_white, 0.5);
		xdist += 40;
	}
}

//Desenhando o shild do player
if(instance_exists(obj_player)){
	var xdist = room_width/2 + 185;
	repeat(qtd_escudo){
		draw_sprite_ext(spr_escudo, 2, xdist, altura_gui-40, .3, .3, 0, c_white, 0.5);
		xdist += 45;
	}
}