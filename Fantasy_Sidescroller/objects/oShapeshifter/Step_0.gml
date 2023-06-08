// Inherit the parent event
event_inherited();

if(place_meeting(x,y,oEndBossTrigger)){
	instance_destroy(oEndBossTrigger);
	instance_create_layer(13856, 1824, "Player",oEnemyBoss)
	instance_create_layer(13856, 0, "Player",oBossHealthBar)
	instance_create_layer(13856, 0, "Player",oBossHealthBarBorder)


	instance_create_layer(13120, 1760, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+32, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+64, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+96, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+128, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+160, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+192, "Walls",oBossDoor)
	instance_create_layer(13120, 1760+224, "Walls",oBossDoor)
}

if(speed > 0){
	speed--;
}

if(transform > 0){
	transform--;	
}

if(dmgIncomeDelay > 0){
	dmgIncomeDelay--;
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
}else{
	sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);
	image_index = 0;
}

if(place_meeting(x,y,oGem)){
	global.redGem = 1;
	room_goto(Bibliothek);
}

if(place_meeting(x,y,oOutOfMapRSP1)){
	health--;
	x = 1743;
	y = 2489;
}

if(place_meeting(x,y,oOutOfMapRSP2)){
	health--;
	x = 4234;
	y = 1113;
}

if(place_meeting(x,y,oOutOfMapRSP3)){
	health--;
	x = 7864;
	y = 2521;
}

var stormDmgIncome;
with(oBossStorm){
	stormDmgIncome = doesDmg;
}

if(place_meeting(x,y,oBossStorm) and dmgIncomeDelay == 0 and stormDmgIncome = 1){
	health--;
	dmgIncomeDelay = maxDmgIncomeDelay;
}

if(place_meeting(x,y,oEnemy) and dmgIncomeDelay == 0){
	health--;
	dmgIncomeDelay = maxDmgIncomeDelay;
}