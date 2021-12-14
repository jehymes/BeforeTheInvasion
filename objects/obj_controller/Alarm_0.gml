/// @description Criando os inimigos

/*
xMin = 64;
xMax = 1888;
yMin = -64;
yMax = -1600
*/


//Repetindo o mesmo código
//Ação -> Criando o inimigo
if(!instance_exists(obj_inimigo1)){
	if(level < 10){
		repeat(qtd_inimigos){
			criar_inimigo();
		}
	}else{
		if(criar_boss){
			audio_stop_all();
			layer_sequence_create("Boss_Entrada", 960, 540, sq_boss_entrada);
			criar_boss = false;
		}
	}
}

//Reset
alarm[0] = room_speed * 5;
