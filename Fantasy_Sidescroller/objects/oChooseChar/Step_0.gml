if(keyboard_check_pressed(ord("1"))){
	instance_create_layer(0, 0, "Player", oHearts);
	instance_create_layer(288, 1920, "Player", oPlayerLev1);
	instance_create_layer(288, 1920, "Player", oGam1);
	instance_create_layer(288, 1920, "Player", oGam2);
	instance_create_layer(288, 1920, "Player", oCamera);
	instance_destroy();
}
else if(keyboard_check_pressed(ord("2"))){
	instance_create_layer(0, 0, "Player", oHearts);
	instance_create_layer(288, 1920, "Player", oMoonForm);
	instance_create_layer(288, 1920, "Player", oCamera);
	instance_destroy();
}
else if(keyboard_check_pressed(ord("3"))){
	instance_create_layer(0, 0, "Player", oHearts);
	instance_create_layer(288, 1920, "Player", oPlayerPlaceholder4);
	instance_create_layer(288, 1920, "Waffe", oWaffe);
	instance_create_layer(288, 1920, "Player", oCamera);
	instance_destroy();
}