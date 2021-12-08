/// @description Rodando depois do player
// You can write your code in this editor

//Destruindo caso não tenha um alvo
if(!alvo){
	instance_destroy();
}

//Ficando na mesma posição que o alvo
x = alvo.x;
y = alvo.y;