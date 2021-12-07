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
				tiro1(sprite_height/3);
				break;
			case 2 : 
				tiro2(45, 20);
				break;
			case 3 : 
				tiro1(-20);
				tiro2(45, 20);
				break;
			case 4 : 
				tiro1(-20);
				tiro3(45, 20);
				break;
			case 5 : 
				tiro1(-20);
				tiro3(45, 20);
				tiro4(10, 20);
				break;
			case 6 : 
				tiro_circular(0, 0, 30);
				break;
			default:
				tiroDefault();
		}
	}
}

tiro1 = function(_y) {
	instance_create_layer(x, y - _y, "Tiro", obj_tiroPlayer1); 
}

tiro2 = function(_x, _y) { 
	var tiro_1 = instance_create_layer(x - _x, y + _y, "Tiro", obj_tiroPlayer2);
	var tiro_2 = instance_create_layer(x + _x, y + _y, "Tiro", obj_tiroPlayer2);
	tiro_1.hspeed = -3;
	tiro_2.hspeed = 3;
}

tiro3 = function(_x, _y) {
	var tiro_1 = instance_create_layer(x - _x, y + _y, "Tiro", obj_tiroPlayer1);
	var tiro_2 = instance_create_layer(x + _x, y + _y, "Tiro", obj_tiroPlayer1);
	tiro_1.hspeed = -3;
	tiro_2.hspeed = 3;
	
	angle(90, tiro_1);
	angle(90, tiro_2);
}

tiro4 = function(_x, _y) {
	var tiro_1 = instance_create_layer(x - _x, y + _y, "Tiro", obj_tiroPlayer1);
	var tiro_2 = instance_create_layer(x + _x, y + _y, "Tiro", obj_tiroPlayer1);
	tiro_1.hspeed = -2;
	tiro_2.hspeed = 2;
	
	angle(90, tiro_1);
	angle(90, tiro_2);
}

tiro5 = function(_x, _y, _repeat, _angle) {
	var direcao = 75;
	repeat(_repeat){
		var canhao = instance_create_layer(x - _x, y + _y, "Tiro", obj_tiroPlayer1);
		canhao.direction = direcao;
		angle(90, canhao);
		direcao += _angle
	}
}

tiro_circular  = function(_x, _y, _angle) {
	var direcao = 75;
	var repeticao = 360/_angle;
	repeat(repeticao){
		var canhao = instance_create_layer(x - _x, y + _y, "Tiro", obj_tiroPlayer1);
		canhao.direction = direcao;
		angle(90, canhao);
		direcao += _angle
	}
}

tiroDefault = function() {
	instance_create_layer(x, y - sprite_height/3, "Tiro", obj_tiroPlayerDefault);
}

angle = function(_angle, _obj) {
	_obj.image_angle = _obj.direction - _angle;
}