/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Achando minha direção
if(instance_exists(obj_boss_01)){
	direction = point_direction(x, y, obj_boss_01.x, obj_boss_01.y);
	image_angle = direction + 90;
}