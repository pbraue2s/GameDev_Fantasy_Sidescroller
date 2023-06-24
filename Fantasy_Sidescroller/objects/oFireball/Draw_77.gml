if(place_meeting(x,y,oMapObject)){
	instance_create_layer(x, y, "Fireball", oExplosion);
	instance_destroy();
}
if (place_meeting(x,y,oFinalBoss))
{
	instance_create_layer(x, y, "Fireball", oExplosion);
	instance_destroy();
}	

