// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake){
	var obj_shake = instance_create_layer(0, 0, "Player", obj_screenshake);
	obj_shake.shake = _shake;
}

//Destruindo sequencia
function destroy_seq() {
	var elements = layer_get_all_elements("Boss_Entrada");
	layer_sequence_destroy(elements[0]);
	
	//Criando o Boss
	instance_create_layer(960,236, "BOSS", obj_boss_01);
}

///@method ganha_pontos(pontos)
function ganha_pontos(_pontos) {
	obj_controller.pontos += _pontos * obj_controller.level;
	
	//Ganhando level SE os pontos forem maior que o próximo level
	if(obj_controller.pontos > obj_controller.proximo_level){
		obj_controller.proximo_level *= 2;
		obj_controller.ganhando_level();
	}
}
	
///@method transicao()
function transicao() {
	var _transicao = instance_create_layer(0,0,"Player", obj_transicao);
	_transicao.destino = rm_inicio;
}