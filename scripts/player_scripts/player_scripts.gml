// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@method create_player(life, shild, speed, speed_shoot, shoot_level)
function create_player(qtd_life, shield, speed, speed_shoot, shoot_level){
	obj_player.life = qtd_life;
	obj_player.shield = shield;
	obj_player.speed_nave = speed;
	obj_player.shoot = speed_shoot;
	obj_player.shoot_lvl = shoot_level
}

///@method player_check_bordas(_xMin, _xMax, _yMin, _yMax)
function player_check_bordas(_xMin, _xMax, _yMin, _yMax){
	x = clamp(obj_player.x, _xMin, _xMax);
	y = clamp(obj_player.y, _yMin, _yMax);
}

///@method player_controller()
function player_controller(){
	var up, down, left, right, escudo, escudo_mouse;
	
	//Mapeamento das teclas
	up = keyboard_check(ord("W"));
	down = keyboard_check(ord("S"));
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	escudo = keyboard_check_pressed(ord("E"));
	escudo_mouse = mouse_check_button_pressed(mb_right);

	//Controle da nave
	y += (down - up) * obj_player.speed_nave;
	x += (right - left) * obj_player.speed_nave;

	//-----------------------------------------------------
	//Escudo da Nave
	if(escudo || escudo_mouse && obj_player.shield > 0){
		if(!obj_player.my_shield){
			var shield = instance_create_layer(x, y, "Shield", obj_escudo);
			shield.alvo = id;
			obj_player.my_shield = shield;
		
			obj_player.shield--;
		}
	}

}

///@method player_shoot()
function player_shoot(){

var fire = keyboard_check(vk_space);
var fire2 = mouse_check_button(mb_left);

	if((fire || fire2) && alarm[0] == -1){
		alarm[0] = shoot;
		audio_play_sound(sfx_laser2, 1, false);
		switch(obj_player.shoot_lvl) {
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

}
	
///@method upgrade(chance)	
function upgrade(_chance){
	var MAX_LIFE = 5;
	var MAX_SHIELD = 5;

	var life_shield = choose(0, 1) 
	//SE o valor de chance for >= 99 - PowerUp Life
	if(_chance > 99) {
		if((obj_player.life > 0 && obj_player.life != MAX_LIFE) && life_shield == 0){
			control_life(+1)
		}else if(life_shield == 1 && obj_player.shield != MAX_SHIELD) {
			obj_player.shield++;
		}else{
			if(instance_exists(obj_controller)){
				obj_controller.ganha_pontos(30);
			}
		}
	//SE o valor de chance for > 90 - PowerUp Level do Tiro
	}else if(_chance >= 90 && _chance < 99) {
		if(obj_player.shoot_lvl < 6){
			obj_player.shoot_lvl++;
		}else{
			if(instance_exists(obj_controller)){
				obj_controller.ganha_pontos(10);
			}
		}
	//SE o valor de chance for >= 45 e < 90 - PowerUp Velocidade da Nave
	}else if(_chance >= 45) {
		if(obj_player.speed_nave < 10){
			obj_player.speed_nave += .5;
		}else{
			if(instance_exists(obj_controller)){
				obj_controller.ganha_pontos(5);
			}
		}
	//SE o valor de chance for < 45 - PowerUp Tempo do Tiro
	}else if(_chance < 45) {
		if(obj_player.shoot > 10){
			obj_player.shoot *= 0.9;
		}else{
			if(instance_exists(obj_controller)){
				obj_controller.ganha_pontos(5);
			}
		}
	}
}
	
///@method control_life(+numeroAumenta_-numeroDiminui);
function control_life(_valor){
	if(!obj_player.my_shield){
		if(_valor < 0){
			screenshake(25)
		}	
	
		if(obj_player.life > 0){
			obj_player.life += _valor;
		}else{
			instance_destroy(obj_player.id, true);
			screenshake(80)
		}
	}
}
	
///@method ani_end_level()
function ani_end_level() {
	if(instance_exists(obj_player)){
		layer_sequence_create("Sequences", obj_player.x, obj_player.y, sq_level_end);
		instance_destroy(obj_player, false);
		if(instance_exists(obj_controller)){
			obj_controller.level_complete = true;
		}
	}
}