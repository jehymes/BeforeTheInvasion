/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

pixel = 20

//Mudando a direção depois que eu me movi X pixels
if(x > xstart + pixel || x < xstart - pixel){
	hspeed *= -1;
}