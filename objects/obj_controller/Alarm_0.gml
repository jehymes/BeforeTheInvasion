/// @description Criando os inimigos

/*
xMin = 64;
xMax = 1888;
yMin = -64;
yMax = -1600
*/

var inimigo = obj_inimigo1;

//Criando inimigo com base no level
var chance = random_range(0, level);

//SE o valor da chance for maior que 2
if(chance > 2){
	 inimigo = obj_inimigo2;
}

//Ação -> Criar inimigos
instance_create_layer(random_range(64, 1888), random_range(-64, -1600), "Inimigos", inimigo);

//Reset
alarm[0] = room_speed;
