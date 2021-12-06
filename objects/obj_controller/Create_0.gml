/// @description Iniciando Objeto

//Iniciando alarme
//Alarme = Tempo
alarm[0] = room_speed; //Ação realizada no -> Alarm 0

/*
Iniciando Sistemas de Pontos
*/
pontos = 0;

//Criando metodo para ganhar pontos
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos) {
	pontos += _pontos;
}