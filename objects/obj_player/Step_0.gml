/// @description Player Controller

//Controles da nave
var up, down, left, right, escudo;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
escudo = keyboard_check_pressed(ord("E"));

y += (down - up) * speed_nave;
x += (right - left) * speed_nave;

//-----------------------------------------------------
//Escudo da Nave
if(escudo && qtd_escudo > 0){
	var shield = instance_create_layer(x, y, "Shield", obj_escudo);
	shield.alvo = id;
	qtd_escudo--;
}


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