/// @description Variáveis de inicialização
// You can write your code in this editor
speed_nave = 5;

atirando = function() {
var fire = keyboard_check_pressed(vk_space);
	if(fire){
		instance_create_layer(x, y - sprite_height/3, "Tiro", obj_tiroPlayer);
	}
}