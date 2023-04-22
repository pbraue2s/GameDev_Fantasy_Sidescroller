if(transform <= 0){
	with(instance_create_layer(x, y, "Player", oMoonForm)){
		vsp = oDemonForm.vsp;
		hsp = oDemonForm.hsp;
		image_xscale = oDemonForm.image_xscale;
		transform = ShapeshiftDelay;
	}
	instance_destroy();
}