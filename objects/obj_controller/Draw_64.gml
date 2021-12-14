/// @description Informações para player

if(instance_exists(obj_player)){
	if(obj_player.shoot_lvl == 6) {
		draw_text(room_width/3, 20, "Armor End");
		draw_text(660, 40, armorTime);
	}
}