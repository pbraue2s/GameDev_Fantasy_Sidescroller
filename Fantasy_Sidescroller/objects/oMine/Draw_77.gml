/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
with(oPlayerLev1){
	if(place_meeting(x, y, other)) && (dmgIncomeDelay < 0){
		dmgIncomeDelay = 25;
		health--;
		instance_create_layer(x,y , "Fireball",oExplosion1 );
		instance_destroy(other);
	}
}
if(place_meeting(x,y,oFireball)){
    instance_create_layer(x,y, "Fireball", oExplosion1);
    instance_destroy();
}