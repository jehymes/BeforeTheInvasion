/// @description Insert description here
// You can write your code in this editor
alternate_state();

if(actual_state != "estado 4"){
	sprite_index = spr_boss_01_combate;
}else if(actual_state == "estado 4"){
	sprite_index = spr_boss_01_escudo;
}

//Tirando life do boss
if(keyboard_check(vk_enter)){
	vida_atual -= 10;
}

//Iniciando o estado 1
switch(actual_state){
	case "estado 1" :
		estado_01();
	break;
	case "estado 2" :
		estado_02();
	break;
	case "estado 3" :
		estado_03();
	break;
	case "estado 4" :
		estado_04();
	break;	
}