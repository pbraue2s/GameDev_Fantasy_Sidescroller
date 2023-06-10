/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if (dmgIncomeDelay > 0) {
  dmgIncomeDelay--;
}

if (place_meeting(x, y, oFireball) && dmgIncomeDelay == 0) {
  image_index = sEndbossDamage;
  instance_create_layer(x, y, "Fireball", oExplosion);
  instance_destroy(oFireball);
  enemyMaxHealth--;
  dmgIncomeDelay = 20;
}

if (enemyMaxHealth <= 0) {
  image_index = sEndbossDamage;
  instance_destroy();
}

if (canShoot) {
  // Create a new Fireball instance
  var fireball = instance_create_layer(x, y, "Fireball", oFireball2);
  fireball.speed = 10;
  var xCoord = x - 24;
  var yCoord = y - 12;

  fireball.direction = point_direction(xCoord, yCoord, oPlayerLev1.x, oPlayerLev1.y - 25);

  // Set a delay until the enemy can shoot again
  shootDelay = 60;
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

if (place_meeting(x, y + movementSpeed, oMapObject)) {
  // Change direction randomly
  direction = irandom_range(-180, 359);
  speed = 2;
  
}else{
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);
}


