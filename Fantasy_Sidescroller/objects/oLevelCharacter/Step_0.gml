/// @description add Health

// Inherit the parent event
event_inherited();

// Hearths
if(health == 3){
	oHearts.image_index = 0;
}else if(health == 2){
	oHearts.image_index = 1;
}else if(health == 1){
	oHearts.image_index = 2;
}else if(health == 0){
	room_goto(Bibliothek)
}