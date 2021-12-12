/// @description Insert description here
// You can write your code in this editor

/*Estados
	1 - Parado dando tiro 2
	2 - Movendo dando tiro 1
	3 - Parado intercalando entre o tiro 1 e 2
	
	1.1 - Ficar invunerável enquanto cria dois minions para recuperar a vida
*/

//Iniciando o sistema de vida
vida_max = 2000;
vida_atual = vida_max;

//Espera para o próximo tiro.
move_boss_x = 3;
delay_shoot = room_speed/2;
delay_state = room_speed * 10;
wait_shoot = 0;
wait_state = delay_state

//actual_state = "estado 4";
actual_state = choose("estado 1", "estado 2", "estado 3");

//Flag para criar minions
criar_minions = true;

/*------------------------------------- Funções -------------------------------------*/
///@method check_sprite(_sprite)
check_sprite = function(_sprite){
	sprite_index = _sprite;
}

///@method move_x(_shake)
move_x = function(_shake){
	x += move_boss_x
	if(obj_boss_01.x >= 1632 || obj_boss_01.x <= 288){
		if(_shake){
			screenshake(30);
			move_boss_x *= -1;
		}else{
			move_boss_x *= -1;
		}
		
	}
}

///@method alternate_state()
alternate_state = function(){
	wait_state--;
	if(wait_state <= 0){
		if(vida_atual > vida_max/2){
			actual_state = choose("estado 1", "estado 2", "estado 3");
		}else{
			actual_state = choose("estado 1", "estado 2", "estado 3", "estado 4");
		}
		wait_state = delay_state;
		criar_minions = true;
	}
}

///@method tiro_central(_ponta,_layer,_sprite,_time)
tiro_central = function(_ponta, _layer, _sprite, _time){
	wait_shoot--;
	if(wait_shoot <= 0){
		instance_create_layer(x, y + _ponta, _layer, _sprite);
		wait_shoot = delay_shoot * _time;
	}
}

///@method tiro_lateral(_x, _y,_layer,_sprite, _number,_time)
/**_number
	0 - 2 Tiros laterias
	1 - 1 Tiro lateral esquerda
	2 - 1 Tiro lateral direita
**/
tiro_lateral = function(_x,_y,_layer,_sprite,_number,_time){
	wait_shoot--;
	if(wait_shoot <= 0){
		switch(_number){
			case 1 :
				instance_create_layer(x - _x, y + _y, _layer, _sprite);
			break;
			case 2 :
				instance_create_layer(x + _x, y + _y, _layer, _sprite);
			break;
			default:
				instance_create_layer(x - _x, y + _y, _layer, _sprite);
				instance_create_layer(x + _x, y + _y, _layer, _sprite);
			break;
		}
		wait_shoot = delay_shoot*_time;
	}
}

///@method master_tiro(_x, _y, _ponta, _layer, _sprite01, _sprite02, _time1)
master_tiro = function(_x, _y, _ponta, _layer, _sprite01, _sprite02, _time1){
	wait_shoot--;
	
	if(wait_shoot == delay_shoot){
		instance_create_layer(x - _x, y + _y, _layer, _sprite02);
		instance_create_layer(x + _x, y + _y, _layer, _sprite02);
	}
	
	if(wait_shoot <= 0){
		instance_create_layer(x, y + _ponta, _layer, _sprite01);
		wait_shoot = delay_shoot * _time1;
	}
}

///@method estado_01()
estado_01 = function() {
	tiro_central(80, "Shield", obj_tiro_inimigo2, 1.5);
}

///@method estado_02()
estado_02 = function(){
	move_x(true);
	tiro_lateral(160, 10, "Shield", obj_tiro_inimigo1, 0, 1.5);
}

///@method estado_03()
estado_03 = function(){
	master_tiro(160, 10, 80, "Shield", obj_tiro_inimigo2, obj_tiro_inimigo1, 2);
}
	
///@method estado_04()
estado_04 = function(){
	
	//Indo para o meio lentamente
	x += sign(room_width/2 - x);
	
	if(criar_minions){
		//Criando os minions
		var _minion01 = instance_create_layer(64, 608, "Inimigos", obj_minion_boss);
		_minion01.image_angle = 135;
		_minion01 = instance_create_layer(1856, 608, "Inimigos", obj_minion_boss);
		_minion01.image_angle = 245;
		criar_minions = false;
	}
}