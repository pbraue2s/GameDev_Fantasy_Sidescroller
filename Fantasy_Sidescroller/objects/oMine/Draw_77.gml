/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(place_meeting(x,y,oPlayerLev1)){
    instance_create_layer(x,y, "Fireball", oExplosion1);
    instance_destroy();
}