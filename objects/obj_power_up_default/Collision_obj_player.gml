/// @description Colisão com o player

//Executando o upgrade do player
upgrade(chance);

//Destruindo
instance_destroy();

audio_play_sound(sfx_zap, 1, false);