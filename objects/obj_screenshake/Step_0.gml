/// @description Insert description here
// You can write your code in this editor

//Movendo a tela
view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);

//Diminuindo valor do screenshake
shake *= .9;

//Destruindo
if(shake < .5){
	instance_destroy();
}