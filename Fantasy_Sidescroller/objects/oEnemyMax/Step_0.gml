image_xscale = sign(movementSpeed) * -1;
if(enemyMaxHealth <= 0){
	instance_create_layer(x, y, "Player", oExplosion)
	instance_destroy();
}

if(dmgIncomeFrame >= 0){
	dmgIncomeFrame--;
}else{
	image_index = 0;
}

if(dmgIncomeDelay > 0){
	dmgIncomeDelay--;
}
if(place_meeting(x,y,oMoon) and dmgIncomeDelay == 0){
	enemyMaxHealth--;
	dmgIncomeDelay = 20;
	dmgIncomeFrame = 5;
	image_index = 1;
}
if(place_meeting(x,y,oSunSwort) and dmgIncomeDelay == 0 and oSunSwort.image_index != 0){
	enemyMaxHealth -= 2;
	dmgIncomeDelay = 20;
	dmgIncomeFrame = 5;
	image_index = 1;
}

if(place_meeting(x+movementSpeed, y, oMapObject)){
	while(!place_meeting(x+sign(movementSpeed), y, oMapObject) and place_meeting(x+sign(movementSpeed), y, oEnemyMax)){
		x += sign(movementSpeed);
	}
	movementSpeed = movementSpeed * -1;
}
x += movementSpeed;