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

// Setzen des aktuellen Frames des Sprites basierend auf dem Tod des Gegners.
// Wenn der deathcounter größer als 8 ist, wird der dritte Frame angezeigt, usw.
// Wenn deathcounter kleiner oder gleich 0 ist, wird die Instanz des Gegners zerstört.

if(deathcounter > 0){
    deathcounter--;
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

if(place_meeting(x,y,oFireball) and dmgIncomeDelay == 0){
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