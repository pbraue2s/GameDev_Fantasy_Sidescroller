
// schaden
if(dmgIncomeDelay > 0){
	dmgIncomeDelay--;
}

if (place_meeting(x,y,oGeschoss4))
{
	hp= hp-1;
}
if(place_meeting(x,y,oMoon) and dmgIncomeDelay == 0){
	hp=hp-1;
	dmgIncomeDelay = 20;
}

if (place_meeting(x,y,oFireball))
{
	hp= hp-1;
}
//Bewegung Teleportiert sich zu 3 Stellen und greift von diesen an
teleportdelay=teleportdelay-1;
if(teleportdelay<=0)
{
	if(hp>=100){
		teleportdelay=1000;
	}
	if(hp<100){
		teleportdelay=600;
	}
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
