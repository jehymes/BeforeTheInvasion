/// @description Movendo inimigo para baixo

//20% de dropar item
chanceDrop = 20;

vspeed = 2;

//Pontuação por destruir inimigo
pontoInimigo = 10;

//Iniciando o alarme do tiro entre 1 e 3 seg 
alarm[0] = random_range(1, 3) * room_speed;

//Checando se estou colidindo com algum outro inimigo
if(place_meeting(x,y,obj_inimigo1)){
	instance_destroy(id, false);
}

atirando = function() {
	if(y >= 0 ) {
		instance_create_layer(x - 3, y + sprite_height/3, "Tiro", obj_tiro_inimigo1);
	}
}

///@method dropa_item(chance_drop_em_porcentagem)
dropa_item = function(_chance) {
	var valor = irandom(100);
	if(valor < _chance && y > 64) {
		instance_create_layer(x, y, "Tiro", obj_power_up_default);
	}
}