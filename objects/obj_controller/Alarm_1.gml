/// @description Time para Tiro 06

//Ação
if(instance_exists(obj_player)){
	if(obj_player.shoot_lvl == 6){
		armorTime--;
	
		if(armorTime == 0){
			obj_player.shoot_lvl = 3;
			obj_player.shoot = room_speed/1.5;
			armorTime = 60;
		}
	}
}	

//Reset
alarm[1] = room_speed;