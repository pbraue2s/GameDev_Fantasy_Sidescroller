if(keyboard_check_pressed(vk_escape)){
	instance_destroy();
}
if(keyboard_check_pressed(vk_enter)){
	room_goto(Level1);
}