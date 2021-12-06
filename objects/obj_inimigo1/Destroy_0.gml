/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y, "Inimigos", obj_explosao1);

//Rodando o metodo de ganhar pontos
if(instance_exists(obj_controller)){
	obj_controller.ganha_pontos(pontoInimigo);
}