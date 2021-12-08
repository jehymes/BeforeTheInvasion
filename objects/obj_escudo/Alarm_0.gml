/// @description Tempo do escudo
// You can write your code in this editor

//Ação
if(image_index == 0){
	instance_destroy();
}

image_index--;
image_alpha -= .2;

//Reset
alarm[0] = room_speed * 2;