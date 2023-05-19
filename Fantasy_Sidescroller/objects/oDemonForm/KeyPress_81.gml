if(transform <= 0){
	hp = health;
	with(instance_create_layer(x, y, "Player", oMoonForm)){
		vsp = oDemonForm.vsp;
		hsp = oDemonForm.hsp;
		image_xscale = oDemonForm.image_xscale;
		transform = ShapeshiftDelay;
		health = oDemonForm.hp;
	}
	instance_destroy(oSunSwort);
	instance_destroy();
}