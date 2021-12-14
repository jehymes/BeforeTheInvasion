/// @description Insert description here
// You can write your code in this editor

//Herdando eventos do pai
// Inherit the parent event
event_inherited();

//Checando 1/3 da altura da room
if(y > room_height/3 && posso_mover){
	//Checando em que lado estou na room
	if(x > room_width/2){
		hspeed = -4;
		posso_mover = false;
	}else{
		hspeed = 4;
		posso_mover = false;
	}
}