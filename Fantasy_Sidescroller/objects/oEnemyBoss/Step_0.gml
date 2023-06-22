if(dmgIncomeDelay > 0){
	dmgIncomeDelay--;
}

if(place_meeting(x,y,oMoon) and dmgIncomeDelay == 0){
	audio_play_sound(mHitMoon,10,false)
	enemyMaxHealth--;
	dmgIncomeDelay = 20;
}
if(place_meeting(x,y,oSunSwort) and dmgIncomeDelay == 0 and oSunSwort.image_index != 0){
	audio_play_sound(mHitSword,10,false)
	enemyMaxHealth -= 2;
	dmgIncomeDelay = 20;
}

with(oBossHealthBar){
	image_xscale = other.enemyMaxHealth / 100;
}

if(enemyMaxHealth <= 0){
	audio_play_sound(mEnemyDeath,10,false)
	instance_create_layer(x, y, "Player", oDeathBoss)
	instance_destroy();
}

if(abilityCounter > 0){
	abilityCounter--;
	if(abilityCounter == 1000){
		audio_play_sound(mStorm,10,true)
		stormAttack = 1;
		instance_create_layer(11936, -64, "Walls", oBossStorm)
	}else if(abilityCounter > 1000){
		if(abilityCounter % 100 == 0){
			audio_stop_sound(mStorm)
			
			meteorAttack = 1;
		}
	}
}
if(meteorAttack == 1){
	sprite_set_speed(sprite_index, 4, spritespeed_framespersecond);
	if(image_index == 4){
		audio_play_sound(mFireball,10,false)
		var xCoord = x-24;
		var yCoord = y-12;
		with(instance_create_layer(xCoord, yCoord, "Projectiles", oMeteor)){
			speed = 15;
			direction = point_direction(xCoord, yCoord, oShapeshifter.x, oShapeshifter.y-25);
		}
	}
	if(image_index > 6){
		sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);
		image_index = 0;
		meteorAttack = 0;
	}
}
if(stormAttack == 1){
	sprite_set_speed(sprite_index, 4, spritespeed_framespersecond);
	if(image_index == 4){
		instance_create_layer(11936, -64, "Walls", oBossStorm);
		sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);
		stormAttack = 0;
	}
}
if(stormAttack == 2){
	sprite_set_speed(sprite_index, 4, spritespeed_framespersecond);
	if(image_index > 6){
		sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);
		image_index = 0;
		stormAttack = 0;
	}
}

