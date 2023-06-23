if(eventCounter <= 0){
	with(oEnemyBoss){
		abilityCounter = 2000;
		stormAttack = 2;
	}
	instance_destroy();
}if(eventCounter == 500){
	sprite_index = sStorm;
	image_xscale = 8;
	image_yscale = 8;
	sprite_set_speed(sStorm, 4, spritespeed_framespersecond);
	doesDmg = 1;
}
eventCounter--;