/// @description Insert description here
// You can write your code in this editor

//Desenhando a barrra de vida do Boss
var healt_boss = (vida_atual/vida_max) * 100;
draw_healthbar(200, 5, 1080, 10, healt_boss, c_black, c_red, c_lime, 0, true, true);