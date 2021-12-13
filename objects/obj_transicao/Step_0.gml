/// @description Insert description here
// You can write your code in this editor

if(!switch_room){
	alpha += .02;
}else{
	alpha -= .02;
}

if(alpha <= 0){
	instance_destroy();
}

if(alpha >= 1 && !switch_room){
	room_goto(destino);
}