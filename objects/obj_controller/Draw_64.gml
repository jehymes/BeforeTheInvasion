/// @description Informações para player

//Desenhando pontos
//draw_text(20,20,"Score: "+ string(pontos));

//Desenhando level
//draw_text(20, 40, "Level: "+ string(level));

if(instance_exists(obj_player)){
	if(obj_player.shoot_lvl == 6) {
		draw_text(room_width/3, 20, "Armor End");
		draw_text(660, 40, armorTime);
	}
}