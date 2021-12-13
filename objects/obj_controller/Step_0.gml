/// @description Verificando se o player existe
// You can write your code in this editor
if(!instance_exists(obj_player) && !game_over_seq && !level_complete){
	game_over_seq = layer_sequence_create("Sequences", room_width/2, room_height/2, sq_gameover);
}