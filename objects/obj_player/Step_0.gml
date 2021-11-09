/// @description Player Controller
// You can write your code in this editor

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