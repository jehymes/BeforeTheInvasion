/// @description Insert description here
// You can write your code in this editor

//Ficando visivel
if(image_alpha < 1 && primeiro_tiro == false){
	image_alpha += 1 / room_speed
}

if(escala > 1.5 || escala < 1) {
	aumento_escala *= -1;
}

escala += aumento_escala;