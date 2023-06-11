if(keyboard_check_pressed(vk_escape) and !pause){
	instance_create_layer(camera_get_view_x(view_camera[0])-5, camera_get_view_y(view_camera[0])-5, "Menue", oPauseBackground);
	instance_create_layer(camera_get_view_x(view_camera[0])+72, camera_get_view_y(view_camera[0])+72, "MenueBook", oMenueBook);
}else if(!pause){
	if(instance_exists(oPauseBackground)) instance_destroy(oPauseBackground);
	if(instance_exists(oMenueBook)) instance_destroy(oMenueBook);
}
