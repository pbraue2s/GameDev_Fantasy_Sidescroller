if(keyboard_check_pressed(vk_escape) and !pause){
	instance_create_layer(camera_get_view_x(view_camera[0])-5, camera_get_view_y(view_camera[0])-5, "Menue", oPauseBackground);
	instance_create_layer(camera_get_view_x(view_camera[0])+180, camera_get_view_y(view_camera[0])+44, "MenueBook", oMenueBook);
}else if(keyboard_check_pressed(ord("E")) and !pause and collision_circle(oTeleportBookLevel1.x, oTeleportBookLevel1.y, oTeleportBookLevel1.radius, oCharacter, false, true)){
	instance_create_layer(camera_get_view_x(view_camera[0])-5, camera_get_view_y(view_camera[0])-5, "Menue", oPauseBackground);
	instance_create_layer(camera_get_view_x(view_camera[0])+180, camera_get_view_y(view_camera[0])+44, "MenueBook", oLevel1StartBook);
}else if(keyboard_check_pressed(ord("E")) and !pause and collision_circle(oTeleportBookLevel2.x, oTeleportBookLevel2.y, oTeleportBookLevel2.radius, oCharacter, false, true)){
	instance_create_layer(camera_get_view_x(view_camera[0])-5, camera_get_view_y(view_camera[0])-5, "Menue", oPauseBackground);
	instance_create_layer(camera_get_view_x(view_camera[0])+180, camera_get_view_y(view_camera[0])+44, "MenueBook", oLevel2StartBook);
}else if(keyboard_check_pressed(ord("E")) and !pause and collision_circle(oTeleportBookLevel3.x, oTeleportBookLevel3.y, oTeleportBookLevel3.radius, oCharacter, false, true)){
	instance_create_layer(camera_get_view_x(view_camera[0])-5, camera_get_view_y(view_camera[0])-5, "Menue", oPauseBackground);
	instance_create_layer(camera_get_view_x(view_camera[0])+180, camera_get_view_y(view_camera[0])+44, "MenueBook", oLevel3StartBook);
}else if(!pause){
	if(instance_exists(oPauseBackground)) instance_destroy(oPauseBackground);
	if(instance_exists(oMenueBook)) instance_destroy(oMenueBook);
	if(instance_exists(oLevel1StartBook)) instance_destroy(oLevel1StartBook);
	if(instance_exists(oLevel2StartBook)) instance_destroy(oLevel2StartBook);
	if(instance_exists(oLevel3StartBook)) instance_destroy(oLevel3StartBook);
	if(instance_exists(oPauseBackground)) instance_destroy(oPauseBackground);
	if(instance_exists(oMenueBook)) instance_destroy(oMenueBook);
}
