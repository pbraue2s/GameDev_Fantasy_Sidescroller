/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event
event_inherited();

with(oBossHealthBar){
	image_xscale = other.enemyMaxHealth / 200;
}

if(enemyMaxHealth <= 0){
	instance_create_layer(x, y, "Player", oDeathBoss)
	instance_destroy();
}

