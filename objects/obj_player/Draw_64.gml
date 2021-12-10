/// @description Insert description here
// You can write your code in this editor

var altura_gui = display_get_gui_height();

//Desenhando o life do player
if(instance_exists(obj_player)){
	var xdist = 40;
	repeat(life){
		draw_sprite_ext(spr_player, 0, xdist, 25, .2, .2, 0, c_white, 0.5);
		xdist += 25;
	}
}

//Desenhando o shild do player
if(instance_exists(obj_player)){
	var xdist = 40;
	repeat(shield){
		draw_sprite_ext(spr_escudo, 2, xdist, 65, .15, .15, 0, c_white, 0.5);
		xdist += 25;
	}
}