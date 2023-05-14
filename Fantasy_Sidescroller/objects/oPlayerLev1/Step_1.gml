/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event
event_inherited();
--dmgIncomeDelay
if(place_meeting(x, y, oSpike)) && (dmgIncomeDelay < 0){
	dmgIncomeDelay = 25;
	health--;
}
if(place_meeting(x, y, oEnemySmall)) && (dmgIncomeDelay < 0){
	dmgIncomeDelay = 25;
	health--;
}
if(place_meeting(x,y,oExplosion1))  && (dmgIncomeDelay < 0){
	dmgIncomeDelay = 25;
	health--;
	 instance_create_layer(x,y , "Fireball",oExplosion );
}
