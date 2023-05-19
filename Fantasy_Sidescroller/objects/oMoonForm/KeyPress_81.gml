if(transform <= 0){
	hp = health;
	with(instance_create_layer(x, y, "Player", oDemonForm)){
		vsp = oMoonForm.vsp;
		hsp = oMoonForm.hsp;
		image_xscale = oMoonForm.image_xscale;
		transform = ShapeshiftDelay;
		moonCatched = oMoonForm.moonCatched;
		health = oMoonForm.hp;
	}
	instance_destroy();
}