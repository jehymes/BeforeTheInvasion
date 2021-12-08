/// @description Insert description here

cor = c_grey;

//Criando uma chance entre 0 e 100 para decidir qual vai ser o upgrade
chance = irandom(100); //Chance vai ficar entre 0 e 100;

speed = 2;
direction = irandom(359);

//Iniciando o alarm
alarm[0] = room_speed;

//Cor para powerUp
//SE o valor de chance for > 99 - PowerUp Life
if(chance > 99) {
	cor = c_green;
//SE o valor de chance for > 90 - PowerUp Level do Tiro
}else if(chance >= 90 && chance <= 99) {
	cor = c_red;
//SE o valor de chance for >= 45 e < 90 - PowerUp Velocidade da Nave
}else if(chance >= 45 && chance < 90) {
	cor = c_yellow;
//SE o valor de chance for < 45 - PowerUp Tempo do Tiro
}else if(chance < 45) {
	cor = c_aqua;
}