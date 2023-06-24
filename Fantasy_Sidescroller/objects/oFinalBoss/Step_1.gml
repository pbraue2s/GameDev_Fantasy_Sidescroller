 
//HP Bar
with(oEndBossHealthBar){
	image_xscale = other.hp / 200;
}
// schaden
if (place_meeting(x,y,Geschoss4))
{
	hp= hp-1;
	//instance_destroy(oGeschoss4)
}
if (place_meeting(x,y,oMoon))
{
	hp= hp-1;
	
}
if (place_meeting(x,y,oFireball))
{
	hp= hp-1;
	instance_create_layer(x+100,y+50 , "Fireball",oExplosion );
	//instance_destroy(oFireball)
if(dmgIncomeDelay > 0){
	dmgIncomeDelay--;
}

if(place_meeting(x,y,oGeschoss4) and dmgIncomeDelay == 0){
	
	enemyMaxHealth--;
	dmgIncomeDelay = 20;
}
if(place_meeting(x,y,oMoon) and dmgIncomeDelay == 0){

	enemyMaxHealth--;
	dmgIncomeDelay = 20;
}
if(place_meeting(x,y,oFireball) and dmgIncomeDelay == 0){

	enemyMaxHealth--;
	dmgIncomeDelay = 20;
}
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
	instance_destroy(oEndBossHealthBarBorder);
	instance_destroy(oEndBossHealthBar);
	instance_destroy();
	
}