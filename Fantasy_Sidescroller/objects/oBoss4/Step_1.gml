/// @description Hier Beschreibung einfügen
if(hp<=0)
{
	with(meinewaffe)
	{
		instance_destroy();
	}
	instance_destroy();
	audio_play_sound(enemytot,4,false);
}