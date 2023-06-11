
// Inherit the parent event
event_inherited();

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

if(place_meeting(x+movementSpeed, y, oMapObject)){
	while(!place_meeting(x+sign(movementSpeed), y, oMapObject) and place_meeting(x+sign(movementSpeed), y, oEnemyMax)){
		x += sign(movementSpeed);
	}
	movementSpeed = movementSpeed * -1;
}
x += movementSpeed;
