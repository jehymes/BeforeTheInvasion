/// @description Player Controller

if(keyboard_check_pressed(vk_up)){
	shoot_lvl++;
}
if(keyboard_check_pressed(vk_down)){
	shoot_lvl--;
}

if(keyboard_check_pressed(vk_right)){
	shoot *= 0.9;
}
if(keyboard_check_pressed(vk_down)){
	shoot *= 1.1;
}

//Controles da nave
player_controller();
//-----------------------------------------------------
//Checagem de bordas do game
player_check_bordas(64,1856,64,1024);
//------------------------------------------------------
//Controle de tiro da nave
player_shoot();