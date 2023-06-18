/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event

// Diese Zeile sagt dem Skript, dass es die Ereignisse des Elternobjekts erben soll.
// Dadurch können Sie das Skript eines Objekts schreiben, das das Verhalten eines anderen Objekts erweitert oder ändert.

image_xscale = sign(movementSpeed);

// Setzen der Bildskalierung basierend auf der Bewegungsgeschwindigkeit des Objekts.
// Wenn das Objekt sich nach links bewegt (negative Bewegungsgeschwindigkeit), wird das Bild horizontal gespiegelt.

if(dmgIncomeDelay > 12){
    image_index = 1;
}else{
    image_index = 0;
}

// Setzen des aktuellen Frames des Sprites basierend auf der Verzögerung seit dem letzten Schadenseingang.
// Wenn die Verzögerung größer als 12 ist, wird der zweite Frame des Sprites angezeigt. Ansonsten wird der erste Frame angezeigt.



// Setzen des aktuellen Frames des Sprites basierend auf dem Tod des Gegners.
// Wenn der deathcounter größer als 8 ist, wird der dritte Frame angezeigt, usw.
// Wenn deathcounter kleiner oder gleich 0 ist, wird die Instanz des Gegners zerstört.

if (deathcounter > 0) {
  deathcounter--;
   
  if (deathcounter == 0) {
	  movementSpeed=0;
    lastFrameDelay = 20; // Hier können Sie die Anzeigedauer des letzten Frames einstellen (in diesem Fall 1 Sekunde)
  }
}

if (lastFrameDelay > 0) {
  image_index = 2; // Hier sollten Sie den Index des letzten Frames einsetzen

  
 lastFrameDelay--;
  if (lastFrameDelay == 0) {
	  image_index = 3;
    instance_destroy();
  }
}

// Reduzieren des deathcounter, wenn das Objekt getroffen wird.

if(enemyMaxHealth <= 0 and alreadyDead == 0){
    deathcounter = 10;
    alreadyDead = 1;
}

// Setzen des deathcounter auf 10 und alreadyDead auf 1, wenn der Gegner keine Gesundheit mehr hat und noch nicht tot ist.

if(dmgIncomeDelay > 0){
    dmgIncomeDelay--;
}

// Reduzieren der Schadensverzögerung, wenn sie größer als 0 ist.

//if(place_meeting(x,y,oFireball) and dmgIncomeDelay == 0){
//	  image_index = 1;
//	 instance_create_layer(oEnemySmall.x,oEnemySmall.y , "Fireball",oExplosion );
//	instance_destroy(oFireball);
//    enemyMaxHealth--;
 //   dmgIncomeDelay = 20;

//}
if(place_meeting(x,y,oFireball) and dmgIncomeDelay == 0){
	  image_index = 1;
	 instance_create_layer(x,y , "Fireball",oExplosion );
	instance_destroy(oFireball);
	audio_play_sound(mHit,10,false);
    enemyMaxHealth--;
    dmgIncomeDelay = 20;

}
if(place_meeting(x,y,oSword) and (dmgIncomeDelay == 0 )and (mouse_check_button(mb_left))){
	 
	 audio_play_sound(mHit,10,false);
    enemyMaxHealth--;
    dmgIncomeDelay = 20;

}
// Reduzieren der enemyMaxHealth, wenn das Objekt von einem oFireball getroffen wird.
// Setzen der Schadensverzögerung auf 20, damit der Schaden nicht sofort erneut auftritt.

if(place_meeting(x+movementSpeed, y, oMapObject)){
    while(!place_meeting(x+sign(movementSpeed), y, oMapObject) and place_meeting(x+sign(movementSpeed), y, oEnemySmall)){
        x += sign(movementSpeed);
    }
    movementSpeed = movementSpeed * -1;
}

// Ändern der Bewegungsrichtung, wenn das Objekt auf ein oMapObject trifft.
// Wenn das Objekt zwischen einem oMapObject und einem oEnemySmall eingeklemmt ist, bewegt es sich ein Schritt nach links oder rechts
x += movementSpeed;

