/// @description Destroi

//Se destruindo ao sair da room
if(y > room_height + 100) {
	instance_destroy(id, false);
}else if(x > room_width + 100) {
	instance_destroy(id, false);
}else if(x < -64) {
	instance_destroy(id, false);
}else if(y < -64) {
	instance_destroy(id, false);
}

