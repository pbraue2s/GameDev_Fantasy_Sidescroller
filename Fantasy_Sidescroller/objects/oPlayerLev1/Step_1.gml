/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event

event_inherited();
dmgIncomeDelay--;

if(!mouse_check_button(mb_right)){
	if(place_meeting(x, y, oEnemySmall)) && (dmgIncomeDelay < 0){
		dmgIncomeDelay = 50;
		health--;
	}
	if(place_meeting(x,y,oExplosion1))  && (dmgIncomeDelay < 0){
		dmgIncomeDelay = 50;
		health--;
		instance_create_layer(x,y , "Fireball",oExplosion );
	}
	if(place_meeting(x, y, oEnemySword)) && (dmgIncomeDelay < 0){
		dmgIncomeDelay = 50;
		health--;
	}
}
if(place_meeting(x,y,oNWall)){
	health--;
	x = 1150;
	y = 1851;
}

