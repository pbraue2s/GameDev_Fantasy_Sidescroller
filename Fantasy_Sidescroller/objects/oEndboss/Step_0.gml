/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

image_xscale = sign(movementSpeed);
if (dmgIncomeDelay > 0) {
  dmgIncomeDelay--;
}

/*if(bossDamageIncomeCounter !=0){
		
		
		sprite_index = sEndbossDamage
		bossDamageIncomeCounter--;
		}
	if(bossDamageIncomeCounter ==0){
	sprite_index = sEndboss;
	}*/
if (place_meeting(x, y, oFireball) && dmgIncomeDelay == 0) {
	bossDamageIncomeCounter=20;
	
  instance_create_layer(x, y, "Fireball", oExplosion);
  instance_destroy(oFireball);
  enemyMaxHealth= enemyMaxHealth-5
  dmgIncomeDelay = 20;

}
with(oBossHealthBarLev1){
	image_xscale = other.enemyMaxHealth / 100;
}
if (enemyMaxHealth <= 0) {
  image_index = sEndbossDamage;
   instance_create_layer(5000, 1550, "Fireball", oGam3);
  instance_destroy();
  instance_destroy(oBossHealthBarBorderLev1);
}

if (canShoot) {
  // Create a new Fireball instance
  var fireball = instance_create_layer(x, y, "Fireball", oFireball2);
  fireball.speed = 10;
  var xCoord = x - 24;
  var yCoord = y - 12;

  fireball.direction = point_direction(xCoord, yCoord, oPlayerLev1.x, oPlayerLev1.y - 25);

  // Set a delay until the enemy can shoot again
  shootDelay = 200;
  // Prevent the enemy from shooting again until the delay is over
  canShoot = false;
} else {
  // Reduce the shoot delay countdown
  shootDelay--;
  // Allow shooting again once the delay is over
  if (shootDelay <= 0) {
    canShoot = true;
  }
}

if(place_meeting(x+movementSpeed, y, oMapObject)){
   
    movementSpeed = movementSpeed * -1;
}
x += movementSpeed;


