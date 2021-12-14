/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

chanceDrop = 35;

//Pontuação por destruir inimigo
pontoInimigo = 15;

//Variável de controle para movimento horizontal
posso_mover = true;

atirando = function() {
	if(y >= 0 ) {
		instance_create_layer(x - 3, y + sprite_height/3, "Tiro", obj_tiro_inimigo2);
		audio_play_sound(sfx_laser1, 1, false);
	}
}