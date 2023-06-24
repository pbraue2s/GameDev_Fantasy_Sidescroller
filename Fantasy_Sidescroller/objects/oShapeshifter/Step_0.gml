
// Inherit the parent event
event_inherited();

if(place_meeting(x,y,oEndBossTrigger)){
	instance_destroy(oEndBossTrigger);
	audio_play_sound(mBossFight1,10,true)
	audio_stop_sound(mLev2);
	instance_create_layer(13856, 1824, "Player",oEnemyBoss)
	instance_create_layer(13856, 0, "Projectiles",oBossHealthBar)
	instance_create_layer(13856, 0, "Projectiles",oBossHealthBarBorder)


	instance_create_layer(13120, 1760, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+32, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+64, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+96, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+128, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+160, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+192, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+224, "Walls",oBossDoor)
}
if(place_meeting(x,y,oHWall)){
	
	instance_destroy(oHWall);
	instance_destroy(oSleepBoss);
	instance_create_layer(1040,1320, "Player",oBossTrigger)
	
	}

if(speed > 0){
	speed--;
}

if(dmgIncomeDelay>0){
	dmgIncomeDelay--;
}

if(transform > 0){
	transform--;	
}

if(place_meeting(x,y,oGem)){
	global.redGem = 1;
	room_goto(Bibliothek);
}

if(place_meeting(x,y,oOutOfMapRSP1)){
	audio_play_sound(mHitHero,10,false)
	health--;
	x = 1743;
	y = 2474;
}

if(place_meeting(x,y,oOutOfMapRSP2)){
	audio_play_sound(mHitHero,10,false)
	health--;
	x = 4234;
	y = 1099;
}

if(place_meeting(x,y,oOutOfMapRSP3)){
	audio_play_sound(mHitHero,10,false)
	health--;
	x = 7864;
	y = 2506;
}

var stormDmgIncome;
with(oBossStorm){
	stormDmgIncome = doesDmg;
}

if(place_meeting(x,y,oBossStorm) and dmgIncomeDelay == 0 and stormDmgIncome = 1){
	audio_play_sound(mHitHero,10,false)
	health--;
	dmgIncomeDelay = maxDmgIncomeDelay;
}

if(place_meeting(x,y,oEnemy) and dmgIncomeDelay == 0){
	audio_play_sound(mHitHero,10,false)
	health--;
	dmgIncomeDelay = maxDmgIncomeDelay;
}