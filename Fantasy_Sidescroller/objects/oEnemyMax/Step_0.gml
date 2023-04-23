image_xscale = sign(movementSpeed);

if(dmgIncomeDelay > 12){
	image_index = 1;
}else{
	image_index = 0;
}


if(deathcounter > 8){
	image_index = 2;
}else if(deathcounter > 6){
	image_index = 3;
}else if(deathcounter > 4){
	image_index = 4;
}else if(deathcounter > 2){
	image_index = 5;
}else if(deathcounter > 0){
	instance_destroy();
}

if(deathcounter > 0){
	deathcounter--;
}

if(enemyMaxHealth <= 0 and alreadyDead == 0){
	deathcounter = 10;
	alreadyDead = 1;
}
if(dmgIncomeDelay > 0){
	dmgIncomeDelay--;
}
if(place_meeting(x,y,oMoon) and dmgIncomeDelay == 0){
	enemyMaxHealth--;
	dmgIncomeDelay = 20;
}
if(place_meeting(x,y,oSunSwort) and dmgIncomeDelay == 0 and oSunSwort.image_index != 0){
	enemyMaxHealth -= 2;
	dmgIncomeDelay = 20;
}

if(place_meeting(x+movementSpeed, y, oMapObject)){
	while(!place_meeting(x+sign(movementSpeed), y, oMapObject) and place_meeting(x+sign(movementSpeed), y, oEnemyMax)){
		x += sign(movementSpeed);
	}
	movementSpeed = movementSpeed * -1;
}
x += movementSpeed;
