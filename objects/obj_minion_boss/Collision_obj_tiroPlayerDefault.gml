/// @description Insert description here
// You can write your code in this editor

//Perdendo 1 de vida
if(vida > 0){
	vida--;
	image_alpha -= 0.08;
	aumento_escala *= 1.1;
}else{
	instance_destroy();
}

instance_destroy(other);