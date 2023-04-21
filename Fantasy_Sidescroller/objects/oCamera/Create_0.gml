cam = view_camera[0];

if(instance_exists(oCharacter)){
	follow = oCharacter;
}
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;