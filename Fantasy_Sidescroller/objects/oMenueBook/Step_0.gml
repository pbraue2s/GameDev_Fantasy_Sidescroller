if(inRoom > 0){
	if(keyboard_check_pressed(ord("R"))){
		room_restart();
	}
	if(keyboard_check_pressed(ord("H"))){
		room_goto(Bibliothek);
	}
}