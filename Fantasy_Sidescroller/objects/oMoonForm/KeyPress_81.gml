if(transform <= 0){
	with(instance_create_layer(x, y, "Player", oDemonForm)){
		vsp = oMoonForm.vsp;
		hsp = oMoonForm.hsp;
		image_xscale = oMoonForm.image_xscale;
		transform = ShapeshiftDelay;
	}
	instance_destroy();
}