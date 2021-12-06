/// @description Criando os inimigos

/*
xMin = 64;
xMax = 1888;
yMin = -64;
yMax = -1600
*/

//Ação -> Criar inimigos
instance_create_layer(random_range(64, 1888), random_range(-64, -1600), "Inimigos", obj_inimigo1);

//Reset
alarm[0] = room_speed;
