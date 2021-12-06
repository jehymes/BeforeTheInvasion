/// @description Iniciando Objeto

//Iniciando alarme
//Alarme = Tempo
alarm[0] = room_speed; //Ação realizada no -> Alarm 0

/*
Iniciando Sistemas de Pontos
*/
pontos = 0;


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
}