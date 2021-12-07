/// @description Informações para player

//Desenhando pontos
draw_text(20,20,"Score: "+ string(pontos));

//Desenhando level
draw_text(20, 40, "Level: "+ string(level));

if(obj_player.level_tiro == 6) {
	draw_text(room_width/3, 20, "Armor End");
	draw_text(room_width/3, 40, armorTime);
}