/// @description Movendo inimigo para baixo

vspeed = 2;

//Iniciando o alarme do tiro entre 1 e 3 seg 
alarm[0] = random_range(1, 3) * room_speed;

atirando = function() {
	if(y >= 0 ) {
		instance_create_layer(x - 3, y + sprite_height/3, "Tiro", obj_tiro_inimigo1);
	}
}