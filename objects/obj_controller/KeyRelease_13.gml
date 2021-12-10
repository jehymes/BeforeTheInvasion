/// @description Reiniciando se o player estiver morto
// You can write your code in this editor

//Pausando o game
if(!instance_exists(obj_player)){
	room_restart();
}else{
	//Fazer o pause do game
	/*
	if(flag_pause){
		game_set_speed(60, gamespeed_fps);
		var id_pause = sequence_get(sq_pause);
		sequence_destroy(id_pause);
	}else{
		flag_pause = layer_sequence_create("Sequences", room_width/2, room_height/2, sq_pause);
		game_set_speed(0.1, gamespeed_fps);
	}
	*/
	
}