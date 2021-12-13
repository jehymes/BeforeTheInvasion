/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_color(c_black);
draw_set_font(fnt_botoes);

//Ajustando o texto
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_text(x,y, text_botao);
draw_set_valign(-1);
draw_set_halign(-1);

draw_set_font(-1);
draw_set_color(c_white);