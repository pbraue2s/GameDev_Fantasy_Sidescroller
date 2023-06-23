if(keyboard_check_pressed(vk_escape)){
	instance_destroy();
}
if(keyboard_check_pressed(ord("S"))){
	room_goto(Level2);
}