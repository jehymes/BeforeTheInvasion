/// @description Insert description here
// You can write your code in this editor
var _x = 250;
var _y = 0;
var _pontos = pontos;
draw_set_font(fnt_pontos);

//Maior pontuação
draw_text(_x,_y + 150,"Pontos --------------------------------- " + string(_pontos));
//Quantidade de Inimigos
draw_text(_x,_y + 400,"Inimigos abatidos --------------- " + string(global.total_inimigos));
//Quantidade de mortes
draw_text(_x,_y + 650,"Mortes do Jogador -------------- " + string(global.total_mortes));

draw_set_font(-1);


if(pontos < global.max_pontos){
	var _incrementa_pontos = global.max_pontos * 0.005;
	pontos += _incrementa_pontos;
}