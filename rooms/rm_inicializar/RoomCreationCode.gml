//Código que roda sempre que a room é iniciada
//Iniciar as minhas variáveis globais
randomize();

//Pontuação mais alta
global.max_pontos = 0;
//Quantidade de vezes que o player morreu
global.total_mortes = 0;
//Total de inimigos mortos
global.total_inimigos = 0;

//Indo para a próxima room
room_goto(rm_inicio);

audio_group_load(sfx);