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
	repeat(qtd_inimigos){
		criar_inimigo();
	}
}

//Reset
alarm[0] = room_speed * 5;
