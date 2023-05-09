/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event
event_inherited();
if(place_meeting(x, y, oEnemySmall)) && (dmgIncomeDelay < 0){
	dmgIncomeDelay = 25;
	health--;
}
else if(place_meeting(x,y,oFireball2))  && (dmgIncomeDelay < 0){
	dmgIncomeDelay = 25;
	health--;
	 instance_create_layer(x,y , "Fireball",oExplosion );
	instance_destroy(oFireball2);
  

}

