/// @description Iniciando Objeto
armorTime = 60;

//Randomizando o jogo
randomize();

//Pause
flag_pause = noone;

//Iniciando alarme
//Alarme = Tempo
alarm[0] = room_speed; //Ação realizada no -> Alarm 0
alarm[1] = room_speed;

/*
Iniciando Sistemas de Pontos
*/
pontos = 0;

/*
Valor da ONDA de inimigos
*/
qtd_inimigos = 10;

/*
Iniciando sistema de level
*/
level = 1;

//Quantos pontos preciso para o próximo level
proximo_level = 100;

//Criando metodo para ganhar pontos
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos) {
	pontos += _pontos;
	
	//Ganhando level SE os pontos forem maior que o próximo level
	if(pontos > proximo_level){
		proximo_level *= 2;
		ganhando_level();
	}
}

ganhando_level = function() {
	level += 1;
	qtd_inimigos += 5; 
}

//Metodo para gerar inimigos
criar_inimigo = function() {
	var inimigo = obj_inimigo1;

	//Criando inimigo com base no level
	var chance = random_range(0, level);

	//SE o valor da chance for maior que 2
	if(chance > 2){
		 inimigo = obj_inimigo2;
	}

	//Ação -> Criar inimigos
	instance_create_layer(random_range(64, 1888), random_range(-64, -1600 - (level * 100)), "Inimigos", inimigo);
}

//Variável de controle para o game over
game_over_seq = noone;