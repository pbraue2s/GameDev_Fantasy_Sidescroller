 
//HP Bar
with(oBossHealthBar){
	image_xscale = other.enemyMaxHealth / 200;
}
// schaden
if (place_meeting(x,y,oGeschoss4))
{
	hp= hp-1;
}
if (place_meeting(x,y,oMoon))
{
	hp= hp-1;
}

// noch Level 1 Schaden einfügen, weiß nicht was seine Geschosse alle Sind

//Bewegung Teleportiert sich zu 3 Stellen und greift von diesen an
teleportdelay=teleportdelay-1;
if(teleportdelay<=0)
{
	teleportdelay=1000;
	if(teleportzone=2)
	{
		audio_play_sound(Teleport,0.2,false);
		x=x-1500;
		teleportzone=0;
	}

	if(teleportzone=1)
	{
		audio_play_sound(Teleport,0.2,false);
		x=x+750;
		teleportzone=2;
	}
	if(teleportzone=0)
	{
		audio_play_sound(Teleport,0.2,false);
		x=x+750;
		teleportzone=1;
	}
	
	
}
//tot
if(hp<=0)
{
	with(meinewaffe1)
	{
		instance_destroy();
	}
	with(meinewaffe2)
	{
		instance_destroy();
	}
	with(meinewaffe3)
	{
		instance_destroy();
	}
	instance_destroy();
	
}