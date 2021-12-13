/// @description Reiniciando se o player estiver morto
// You can write your code in this editor

//Reiniciando o game o game
if(game_over_seq){
	var _transicao = instance_create_layer(0,0,"Player", obj_transicao);
	_transicao.destino = rm_inicio;
	
	//Checando se os pontos são a maior pontuação
	if(pontos > global.max_pontos){
		global.max_pontos = pontos;
	}
}