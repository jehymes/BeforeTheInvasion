/// @description Time para Tiro 06

//Ação
if(instance_exists(obj_player)){
	if(obj_player.level_tiro == 6){
		armorTime--;
	
		if(armorTime == 0){
			obj_player.level_tiro = 1;
			armorTime = 60;
		}
	}
}	

//Reset
alarm[1] = room_speed;