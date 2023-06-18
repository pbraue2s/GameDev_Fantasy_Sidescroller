/// @zeichnen
if (place_meeting(x,y,oMapObject))
{
	instance_destroy();
	audio_play_sound(waffetreffer,1,false);
}
if (place_meeting(x,y,oPlayerPlaceholder4))
{
	instance_destroy();
	with(oPlayerPlaceholder4)
	{
	health = health -1;
	}
	audio_play_sound(waffetreffer,1,false);
}