/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event
event_inherited();
if(place_meeting(x,y,oEnemySmall)){
	instance_create_layer(oEnemySmall.x,oEnemySmall.y, "Fireball", oExplosion);
	instance_destroy();
}

