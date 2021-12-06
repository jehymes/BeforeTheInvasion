/// @description Variáveis de inicialização
// You can write your code in this editor
speed_nave = 5;

time_tiro = room_speed;

/*
Iniciando sistema de level do tiro
*/
level_tiro = 1;

atirando = function() {
var fire = keyboard_check(vk_space);
var fire2 = mouse_check_button(mb_left);
//var fire = keyboard_check_pressed(vk_space);
//var fire2 = mouse_check_button_pressed(mb_left);
	if((fire || fire2) && alarm[0] == -1){
		alarm[0] = time_tiro;
		switch(level_tiro) {
			case 1 : 
				instance_create_layer(x, y - sprite_height/3, "Tiro", obj_tiroPlayer1); 
				break;
			case 2 : 
				var tiro1 = instance_create_layer(x - 45, y + 20, "Tiro", obj_tiroPlayer2);
				var tiro2 = instance_create_layer(x + 45, y + 20, "Tiro", obj_tiroPlayer2);
				tiro1.hspeed = -3;
				tiro2.hspeed = 3;
				break;
			case 3 : 
				instance_create_layer(x, y + 20, "Tiro", obj_tiroPlayer1); 
				var tiro1 = instance_create_layer(x - 45, y + 20, "Tiro", obj_tiroPlayer2);
				var tiro2 = instance_create_layer(x + 45, y + 20, "Tiro", obj_tiroPlayer2);
				tiro1.hspeed = -3;
				tiro2.hspeed = 3;
				break;
			default:
				instance_create_layer(x, y - sprite_height/3, "Tiro", obj_tiroPlayerDefault);
		}
	}
}