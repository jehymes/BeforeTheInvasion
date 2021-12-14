/// @description Player Controller
/*
if(keyboard_check_pressed(vk_up)){
	shoot_lvl++;
}else if(keyboard_check_pressed(vk_down)){
	shoot_lvl--;
}

if(keyboard_check(vk_right)){
	speed_nave *= 0.9;
}else if(keyboard_check(vk_left)){
	speed_nave *= 1.1;
}
*/

//Controles da nave
player_controller();
//-----------------------------------------------------
//Checagem de bordas do game
player_check_bordas(64,1856,64,1024);
//------------------------------------------------------
//Controle de tiro da nave
player_shoot();