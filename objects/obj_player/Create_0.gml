/// @description Variáveis de inicialização

/*
------------------- PowerUps -------------------
Velocidade da Nave	- .05 | 10 -> 20	//45%
Tempo do Tiro		- 10% | 10 -> 18	//45%
Level do Tiro		- 01  | 06 -> 6		//10%
------------------- PowerUps -------------------
*/

speed_nave = 5;

time_tiro = room_speed;

/*
Iniciando sistema de level do tiro
*/
level_tiro = 5;

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

///@method upgrade(chance)
upgrade = function(_chance) {
	//SE o valor de chance for > 90 - PowerUp Level do Tiro
	if(_chance >= 90) {
		if(level_tiro < 6){
			level_tiro++;
			time_tiro = room_speed;
		}
	//SE o valor de chance for >= 45 e < 90 - PowerUp Velocidade da Nave
	}else if(_chance >= 45 && _chance < 90) {
		if(speed_nave < 10){
			speed_nave += .5;
		}
	//SE o valor de chance for < 45 - PowerUp Tempo do Tiro
	}else if(_chance < 45) {
		if(time_tiro > 10){
			time_tiro *= 0.9;
		}
	}
}