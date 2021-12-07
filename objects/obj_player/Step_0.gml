/// @description Player Controller

//Controlle direcional da nave
var up, down, left, right;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

y += (down - up) * speed_nave;
x += (right - left) * speed_nave;

//-----------------------------------------------------

//Checagem de bordas do game
if(y > 992){ //Checagem de cima
	y = 992
}else if(y < 96) { //Checagem de baixo
	y = 96
}

if(x < 64){ //Checagem da esquerda
	x = 64
}else if(x > 1856) { //Checagem da direita
	x = 1856
}

//------------------------------------------------------

//Controle de tiro da nave
atirando();

//Debug Leveis do Tiro
if(keyboard_check_pressed(vk_up)){
	if(level_tiro < 6){
		level_tiro++;
	}
}

if(keyboard_check_pressed(vk_down)){
	if(level_tiro > 1){
		level_tiro--;
	}
}

//Debug espera do tiro
if(keyboard_check(vk_right) && time_tiro < room_speed){
	time_tiro *= 1.1;
}

if(keyboard_check(vk_left) && time_tiro > 10){
	time_tiro *= 0.9;
}

if(level_tiro == 6){
	time_tiro = room_speed;
}

show_debug_message(level_tiro);
show_debug_message(time_tiro);