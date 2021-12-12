/// @description Insert description here
// You can write your code in this editor

//Perde 1 de vida
if(actual_state != "estado 4"){
	if(vida_atual > 0 ){
		vida_atual--;
	}else{
		instance_destroy();
	}

	instance_destroy(other);
}