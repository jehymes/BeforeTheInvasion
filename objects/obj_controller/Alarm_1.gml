/// @description Time para Tiro 06

//Ação
if(obj_player.level_tiro == 6){
	armorTime--;
	
	if(armorTime == 0){
		obj_player.level_tiro = 1;
		armorTime = 15;
	}
}

//Reset
alarm[1] = room_speed;