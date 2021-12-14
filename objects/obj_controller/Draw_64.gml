/// @description Informações para player
draw_set_font(fnt_pontos_gui);

draw_set_alpha(.5)
draw_text(30,20,"Pontos: "+string(pontos));
draw_text(30,40,"Level: "+string(level));

draw_set_alpha(1)
if(instance_exists(obj_player)){
	if(obj_player.shoot_lvl == 6) {
		draw_text(615, 20, "Armor End");
		draw_text(660, 40, armorTime);
	}
}

draw_set_font(-1);