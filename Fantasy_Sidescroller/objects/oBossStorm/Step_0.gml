if(eventCounter <= 0){
	with(oEnemyBoss){
		abilityCounter = 2000;
		stormAttack = 2;
	}
	instance_destroy();
}else if(eventCounter<= 500){
	image_index = 2
	doesDmg = 1;
}else if(eventCounter>950){
	image_index = 1;
}else if(eventCounter>850 and eventCounter<900){
	image_index = 1;
}else if(eventCounter>750 and eventCounter<800){
	image_index = 1;
}else if(eventCounter>650 and eventCounter<700){
	image_index = 1;
}else if(eventCounter>550 and eventCounter<600){
	image_index = 1;
}else{
	image_index = 0
}

eventCounter--;